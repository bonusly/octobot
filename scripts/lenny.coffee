# Description:
#   Retrieves lenny face.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   octobot lenny - Reply back with random lenny face.
#
# Author:
#   jon

module.exports = (robot) ->
  robot.respond /LENNY/i, (msg) ->
    msg.http('http://lenny.today/api/v1/random')
      .get() (error, response, body) ->
        response = JSON.parse(body)
        face     = response[0].face

        msg.send face
