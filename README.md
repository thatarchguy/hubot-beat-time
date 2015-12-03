
# Hubot Beats [![Build Status](https://travis-ci.org/thatarchguy/hubot-beat-time)](https://travis-ci.org/thatarchguy/hubot-beat-time)

A hubot script to reply with the time in .beats!
[Swatch Internet Time](https://en.wikipedia.org/wiki/Swatch_Internet_Time)

## Installation

Update Hubot's package.json to install hubot-beat-time from npm, and update Hubot's external-scripts.json file to include the hubot-beat-time module.

### Update the files to include the hubot-beat-time module:

#### package.json
    ...
    "dependencies": {
      ...
      "hubot-beat-time": ">= 1.0.0"
      ...
    },
    ...

#### external-scripts.json
    ["hubot-awesome-module","hubot-beat-time"]

Run `npm install` to install hubot-beat-time and dependencies.

## Practical Use

Use `hubot help` or check the beats.coffee file to get the full list of options with short descriptions.

## Commands

```javascript
hubot beat time
```

## Directory Structure

Using the common directory structure for hubot script packages it will be easy
to manage and allow others to easily contribute to your package.

### script

This directory is home to a couple of development scripts; `bootstrap` and `test`
they're used to bootstrap the development environment and run tests
respectively.

### src

This directory is home to the actual hubot scripts in the package. Your
`index.coffee` entry point will load the scripts from this directory.

### test

This directory is home to any tests you write for your scripts. This example
package uses Mocha, Chai and Sinon to manage writing tests.
