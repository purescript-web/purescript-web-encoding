exports.new = function(label) {
  return function() {
    return new TextDecoder(label);
  };
};

exports._decode = function(view, options, decoder) {
  return decoder.decode(view, options);
};