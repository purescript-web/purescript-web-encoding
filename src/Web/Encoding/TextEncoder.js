export function new() {
  return new TextEncoder();
}

export function encode(text) {
  return function(encoder) {
    return encoder.encode(text);
  };
}

export function encodeInto(text) {
  return function(view) {
    return function(encoder) {
      return function() {
        return encoder.encodeInto(text, view);
      };
    };
  };
}
