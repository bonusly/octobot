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
#   hubot shipit - a beautiful arrangement of shipit parrots
#
# Author:
#   joshcass

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
