# Description:
#   Show stale issues with optional given label
# Commands:
#   hubot stale -- Shows all issues older than 30 days.
_  = require("underscore")
ta = require("time-ago")()

ASK_REGEX = /stale*/i

module.exports = (robot) ->
  github = require("githubot")(robot)

  robot.respond ASK_REGEX, (msg) ->
    query_params = state: "open", sort: "created", direction: "asc"
    query_params.per_page = 100
    base_url = process.env.HUBOT_GITHUB_API
    repo = process.env.HUBOT_GITHUB_REPO

    github.get "#{base_url}/repos/#{repo}/issues", query_params, (issues) ->
      if issues.length
        date = new Date()
        date.setMonth(date.getMonth() - 1)
        message = "*Prioritized issues older than one month:*\n"
        _.each(issues, (issue) ->
          if Date.parse(issue.created_at) < Date.parse(date) and issue.assignees.length == 0
            message = message + "<https://github.com/bonusly/special_sauce/issues/#{issue.number}|#{issue.title}> (created #{ta.ago(issue.created_at)})\n"
        )
        msg.send(message)
      else
        msg.send("No stale issues! :tada:")
