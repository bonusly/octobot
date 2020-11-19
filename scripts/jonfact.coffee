# Description:
#   Retrieves random jon facts.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   octobot jonfact - Reply back with random jon fact.
#
# Author:
#   jon

module.exports = (robot) ->
  robot.respond /JONFACT/i, (msg) ->
    msg.http('http://api.lenny.today/v1/random')
      .get() (error, response, body) ->
        response = JSON.parse(body)
        face     = response[0].face

        msg.send 'jon likes ' + face
