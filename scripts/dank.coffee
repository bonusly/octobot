# Description:
#   Send a certified dAnK to specified room
#
# Commands:
#   hubot certified dank #random

module.exports = (robot) ->
  robot.respond /certified\sdank\s(.*)/i, (msg) ->
    robot.messageRoom msg.match[1], "https://i.imgur.com/owfgFjh.jpg"
