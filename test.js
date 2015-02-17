'use strict';

var $ = require('jquery');
require('./dist/buddysystem.jquery.cjs.js')($);
var assert = require('chai').assert;

assert.ok($.fn.buddySystem.ver);
console.log('success');

phantom.exit();
