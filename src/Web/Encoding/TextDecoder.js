const newImpl = function (label) {
  return function() {
    return new TextDecoder(label);
  };
};
export { newImpl as new };

export function _decode(view, options, decoder) {
  return decoder.decode(view, options);
}
