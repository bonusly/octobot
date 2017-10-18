# Description:
#   Show pull requests that need approval
# Commands:
#   hubot criticals -- Shows all critical issues.
_  = require("underscore")
ta = require("time-ago")()

ASK_REGEX = /criticals*/i

module.exports = (robot) ->
  github = require("githubot")(robot)

  robot.respond ASK_REGEX, (msg) ->
    query_params = state: "open", sort: "created", labels: "critical"
    query_params.per_page=100
    base_url = process.env.HUBOT_GITHUB_API
    repo = process.env.HUBOT_GITHUB_REPO

    github.get "#{base_url}/repos/#{repo}/issues", query_params, (issues) ->
      if issues.length
        message = "Critial Issues:\n"
        _.each(issues, (issue) ->
          message += "#{issue.url}\n"
        msg.send message
      else
        msg.send "No critical issues! :tada:"
