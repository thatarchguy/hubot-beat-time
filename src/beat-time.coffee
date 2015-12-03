# Description:
#   Allows Hubot to tell the current time in .beats!
#
# Dependencies:
#   dateutil
#
# Configuration:
#   None
#
# Commands:
#   hubot beat time
#
# Author:
#   Kevin L <kevin@stealsyour.pw>

dateutil = require("dateutil")

dateutil._formats['B'] = (d) ->
  mo = 0
  Math.round((d.getUTCHours() * 3600 + (d.getUTCMinutes() - mo + 60) *
  60 + d.getUTCSeconds()) * 1000 / 86400) % 1000


module.exports = (robot) ->
  robot.respond /beat time/i, (msg) ->
    mydate = new Date()
    beats = dateutil.format( mydate, 'B' )
    msg.send "@#{beats}"
