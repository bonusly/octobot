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
#   hubot robert start - start harassing robert
#   hubot robert stop  - stop harassing robert
#
# Author:
#   joshcass

module.exports = (robot) ->
  annoyIntervalId = null

  robot.respond /robert start/, (res) ->
    if annoyIntervalId
      res.send "@josh @joao @mark @anna @jon"
      return

    res.send ":joy_cat:"
    annoyIntervalId = setInterval () ->
      res.send "@josh @joao @mark @anna @jon"
    , 3000

  robot.respond /robert stop/, (res) ->
    if annoyIntervalId
      res.send ":sad_cowboy:"
      clearInterval(annoyIntervalId)
      annoyIntervalId = null
    else
      res.send "Would you like to go fuck yourself some more? :hope:"
