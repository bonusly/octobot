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
#   hubot _something_ start - start repeating _something_
#   hubot _something_ stop  - stop repeating _something_
#
# Author:
#   joshcass

module.exports = (robot) ->
  annoyIntervalId = null
  maxDuration = 30000000 # 3000 seconds
  startTime = Date.now()

  robot.respond /start\s?(.*)/i, (res) ->
    message = res.match[1].trim()

    if annoyIntervalId
      res.send message
      return

    res.send ":joy_cat:"
    annoyIntervalId = setInterval () ->
      if (startTime + maxDuration) < Date.now()
        res.send "ಠ_ಠ"
        return

      res.send "@josh"
    , 1000

  robot.respond /stop annoying/i, (res) ->
    if annoyIntervalId
      res.send ":sad_cowboy:"
      clearInterval(annoyIntervalId)
      annoyIntervalId = null
    else
      res.send "If you'd like to @robert type `@octobot start @robert`"
