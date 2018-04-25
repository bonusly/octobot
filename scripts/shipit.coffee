# Description:
#   Allows Hubot to ship that shit!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot lod <name> - gives back the character for the look of disapproval, optionally @name
#
# Author:
#   ajacksified

module.exports = (robot) ->
  robot.respond /shipit/i, (msg) ->
    response = """
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
      :shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot::shipit_parrot:
    """

    msg.send(response)
