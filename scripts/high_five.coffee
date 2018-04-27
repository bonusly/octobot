# Description:
#   Allows Hubot to give a high five
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot high five
#
# Author:
#   joshcass

module.exports = (robot) ->
  robot.respond /high five\s?(.*)/i, (msg) ->
    response = ':high-five:'

    name = msg.match[1].trim()
    response += " @" + name if name != ""

    msg.send(response)
