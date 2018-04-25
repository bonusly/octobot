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
#   hubot jonfact - Reply back with random jon fact.
#
# Author:
#   jon

module.exports = (robot) ->
  robot.respond /JONFACT/i, (msg) ->
    msg.send 'jon likes ( ͡☉ ͜ʖ ͡☉)'
