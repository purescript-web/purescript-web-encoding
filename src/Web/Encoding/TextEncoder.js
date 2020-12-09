"use strict";

exports.new = function() {
  return new TextEncoder();
};

exports.encode = function(text) {
  return function(encoder) {
    return encoder.encode(text);
  };
};

exports.encodeInto = function(text) {
  return function(view) {
    return function(encoder) {
      return function() {
        return encoder.encodeInto(text, view);
      };
    };
  };
};
