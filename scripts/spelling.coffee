# Description:
#   Nicely notify of incorrect spelling
#
# Commands:
#   hubot spelling @joao

module.exports = (robot) ->
  robot.respond /spelling\s?(.*)/i, (msg) ->
    message = """
🆘🆘🆘🆘🆘🆘🆘🆘🛎🛎🛎🛎🛎🛎⏰⏰ 🚨 🚨 🚨

🚨 🚨 Is that a S P E L L I N G E R R O R I see??? 🚨 🚨 Alert! 🔊🔊Alert! ⚠️⚠️

We 🔞have💢 a FUCKING👉👌 RETARD 🤔🤔on our hands 🙌here! 👇

Fix 👾your English 🇺🇸🇺🇸🇺🇸and then come back💨 to me, preferably once 👆you're within 5 🖐IQ points 👁👄👁of myself, sweaty. ;)😂😂😂

🆘🆘🆘🆘🆘🆘🆘🆘🛎🛎🛎🛎🛎🛎⏰⏰ 🚨 🚨 🚨
    """
    msg.send message
