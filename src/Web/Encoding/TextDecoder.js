export function new(label) {
  return function() {
    return new TextDecoder(label);
  };
}

export function _decode(view, options, decoder) {
  return decoder.decode(view, options);
}
