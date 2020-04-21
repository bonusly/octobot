# Description:
#   Cowmeow.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot cowmeow - Returns a cow that says a cat fact.
#
# Author:
#   jon

module.exports = (robot) ->
  robot.respond /cowmeow/i, (msg) ->
    msg.http('https://catfact.ninja/fact')
        .get() (error, response, body) ->
            # passes back the complete reponse
            response = JSON.parse(body)
            if response.fact?
              msg
                .http("http://cowsay.morecode.org/say")
                .query(format: 'text', message: response.fact)
                .get() (err, res, body) ->
                  msg.send body

            else
              msg.send "Unable to get cat facts right now."

