# Description:
#   Repeat the last command
#
# Commands:
#   hubot !! - Repeat the last command directed at hubot

TextMessage = require('hubot').TextMessage

module.exports = (robot) ->
  robot.respond /(.+)/i, (msg) ->
    store msg

  robot.respond /!!$/i, (msg) ->

    if exports.last_command?
      msg.send exports.last_command
      robot.receive(new TextMessage(msg.message.user, "@#{robot.name} #{exports.last_command}"))
    else
      msg.send "i don't remember hearing anything."

store = (msg) ->
  command = msg.match[1].trim()
  exports.last_command = command unless command == '!!'
