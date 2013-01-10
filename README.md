# Test to demonstrate different behaviour in PEG.js master

This repository contains a test that identifies a difference in behaviour
between PEG.js master and the 0.7.0 release.

To run the test:

    npm install -g mocha
    npm install
    mocha -R spec

On master, this will fail with: `AssertionError: expected no exception to be
thrown, got "Expected "&", ".", "AND", "[" or [ \t\f] but "a" found.`

On 0.7.0 release, this will pass.

The full stacktrace is below:

    1) parsers

    ✖ 1 of 1 test failed:

    1)  parsers:
       AssertionError: expected no exception to be thrown, got "Expected "&", ".", "AND", "[" or [ \t\f] but "a" found."
        at Object.Assertion (/home/jadams/javascript/pegjs_test/node_modules/should/lib/should.js:705:10)
        at Context.<anonymous> (/home/jadams/javascript/pegjs_test/test/test.js:4:66)
        at Test.Runnable.run (/usr/local/lib/node_modules/mocha/lib/runnable.js:213:32)
        at Runner.runTest (/usr/local/lib/node_modules/mocha/lib/runner.js:343:10)
        at Runner.runTests.next (/usr/local/lib/node_modules/mocha/lib/runner.js:389:12)
        at next (/usr/local/lib/node_modules/mocha/lib/runner.js:269:14)
        at Runner.hooks (/usr/local/lib/node_modules/mocha/lib/runner.js:278:7)
        at next (/usr/local/lib/node_modules/mocha/lib/runner.js:226:23)
        at Runner.hook (/usr/local/lib/node_modules/mocha/lib/runner.js:246:5)
        at process.startup.processNextTick.process._tickCallback (node.js:244:9)
