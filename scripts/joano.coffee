# Description:
#   Send a joaNO to specified room
#
# Commands:
#   hubot joano #random

module.exports = (robot) ->
  robot.respond /joano (.+)/i, (msg) ->
    robot.messageRoom msg.match[1], "https://i.imgur.com/h365YFG.png"
