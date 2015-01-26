'use strict';

var $ = require('jquery');
require('./dist/buddysystem.jquery.cjs.js')($);
var assert = require('chai').assert;

assert.strictEqual($.fn.buddySystem.ver, '1.0.0');
console.log('success');

phantom.exit();
