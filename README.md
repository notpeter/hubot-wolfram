## hubot-wolfram [![NPM version](https://badge.fury.io/js/hubot-wolfram.png)](http://badge.fury.io/js/hubot-wolfram)

A [Hubot](https://github.com/github/hubot) plugin to query [Wolfram Alpha](http://www.wolframalpha.com/).

### Usage

    hubot question <question> - Searches Wolfram Alpha for the answer to the question

### Installation
1. cd into your hubot directory, run `npm install --save hubot-wolfram` to add a dependency into package.json.
2. Add `"hubot-wolfram"` to your `external-scripts.json` file.
3. Request a [WolframAlpha APP_ID](https://developer.wolframalpha.com/portal/myapps/)
4. Put your APP_ID in the environment variable HUBOT_WOLFRAM_APPID.
5. Restart Hubot.
