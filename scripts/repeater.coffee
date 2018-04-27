# Description:
#   Allows Hubot to harass Robert
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot _something_ start - start harassing robert
#   hubot _something_ stop  - stop harassing robert
#
# Author:
#   joshcass

module.exports = (robot) ->
  annoyIntervalId = null

  robot.respond /start\s?(.*)/, (res) ->
    message = res.match[1].trim()

    if annoyIntervalId
      res.send message
      return

    res.send ":joy_cat:"
    annoyIntervalId = setInterval () ->
      res.send message
    , 1000

  robot.respond /stop repeating/, (res) ->
    if annoyIntervalId
      res.send ":sad_cowboy:"
      clearInterval(annoyIntervalId)
      annoyIntervalId = null
    else
      res.send "Would you like to @robert some more? :hope:"
