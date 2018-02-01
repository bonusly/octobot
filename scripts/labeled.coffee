# Description:
#   Show issues with given label
# Commands:
#   hubot labeled critical -- Shows all critical issues.
_  = require("underscore")

ASK_REGEX = /labeled (.*)/i

module.exports = (robot) ->
  github = require("githubot")(robot)

  robot.respond ASK_REGEX, (msg) ->
    labels = msg.match[1].trim()
    query_params = state: "open", sort: "created", labels: labels
    query_params.per_page = 100
    base_url = process.env.HUBOT_GITHUB_API
    repo = process.env.HUBOT_GITHUB_REPO

    github.get "#{base_url}/repos/#{repo}/issues", query_params, (issues) ->
      if issues.length
        message = "*Unassigned #{labels} issues:*\n"
        unassignedIssues = _.filter(issues, (issue) ->
          issue.assignees.length == 0)
        if unassignedIssues.length
          _.each(unassignedIssues, (issue) ->
            message = message + "<https://github.com/bonusly/special_sauce/issues/#{issue.number}|#{issue.title}>\n"
          )
          msg.send(message)
        else
          msg.send("No #{labels} issues! :tada:")
      else
        msg.send("No issues! :tada:")
