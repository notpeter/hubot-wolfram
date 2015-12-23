# Description:
#   Allows hubot to answer almost any question by asking Wolfram Alpha
#
# Dependencies:
#   "wolfram": "0.2.2"
#
# Configuration:
#   HUBOT_WOLFRAM_APPID - your AppID
#
# Commands:
#   hubot question <question> - Searches Wolfram Alpha for the answer to the question
#
# Author:
#   dhorrigan

Wolfram = require('wolfram').createClient(process.env.HUBOT_WOLFRAM_APPID)

module.exports = (robot) ->
  robot.respond /(question|wfa|wolfram) (.*)$/i, (msg) ->
    #console.log msg.match
    Wolfram.query msg.match[2], (e, result) ->
      # console.log result
      if !result or result.length == 0
        msg.send 'Hmm...not sure'
      else if result[1]['subpods'][0]['value'].length > 0
        msg.send result[1]['subpods'][0]['value']
      else if result[1]['subpods'][0]['image'].length > 0
        msg.send result[1]['subpods'][0]['image']
      else
        msg.send 'Hmm...not sure'
