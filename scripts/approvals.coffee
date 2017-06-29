# Description:
#   Show pull requests that need approval
# Commands:
#   hubot thumbs -- Shows all pull requests awaiting approval.
_  = require("underscore")
ta = require("time-ago")()

ASK_REGEX = /thumbs*/i

module.exports = (robot) ->
  github = require("githubot")(robot)

  robot.respond ASK_REGEX, (msg) ->
    query_params = state: "open", sort: "created"
    query_params.per_page=100
    base_url = process.env.HUBOT_GITHUB_API
    repo = process.env.HUBOT_GITHUB_REPO

    github.get "#{base_url}/repos/#{repo}/pulls", query_params, (pulls) ->
      if pulls.length
        _.each(pulls, (pull) ->
          github.get "#{pull.issue_url}", (issue) ->
            notReadyForReview = _.any(issue.labels, (label) ->
              label.name.includes('NOT READY'))

            unless notReadyForReview
              github.get "#{pull.url}/reviews", (reviews) ->
                approvedCount = _.filter(reviews, (review) ->
                                  review.state == 'APPROVED').length
                approvalsNeeded = (2 - approvedCount)

                if approvalsNeeded
                  requestedReviewers = _.map(pull.requested_reviewers, (reviewer) ->
                    reviewer.login).join(', ')
                  baseMessage = """
                    *<#{pull.html_url}|#{pull.title}> (##{pull.number})*
                    \nSubmitted by #{pull.user.login} _#{ta.ago(pull.created_at)}_
                    \nNeeds #{approvalsNeeded} more
                  """
                  requestMessage = "\nReview requested from #{requestedReviewers}"
                  message = if requestedReviewers then baseMessage.concat(requestMessage) else baseMessage
                  msg.send message
        )
      else
        msg.send "No pull requests need to be reviewed! :tada:"
