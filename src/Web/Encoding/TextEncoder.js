const newImpl = function() {
  return new TextEncoder();
};
export { newImpl as new };

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
