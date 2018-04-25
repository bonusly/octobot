# Description:
#   Retrieves random cat facts.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot catfact - Reply back with random cat fact.
#
# Author:
#   scottmeyer

module.exports = (robot) ->
  robot.respond /CATFACT$/i, (msg) ->
    msg.http('https://catfact.ninja/fact')
            .get() (error, response, body) ->
                # passes back the complete reponse
                response = JSON.parse(body)
                if response.fact?
                  msg.send response.fact
                else
                  msg.send "Unable to get cat facts right now."
