module Web.Encoding.TextDecoder where

import Data.ArrayBuffer.Types (ArrayView)
import Effect (Effect)
import Effect.Uncurried (EffectFn3, runEffectFn3)
import Prim.Row as Row
import Web.Encoding.UtfLabel (UtfLabel)

foreign import data TextDecoder :: Type

type DecodeOptions =
  ( stream :: Boolean
  )

foreign import new :: UtfLabel -> Effect TextDecoder

foreign import _decode :: forall r t. EffectFn3 (ArrayView t) { | r } TextDecoder String

decode :: forall t. ArrayView t -> TextDecoder -> Effect String
decode arr decoder = runEffectFn3 _decode arr {} decoder

decodeWithOptions :: forall r rx t. Row.Union r rx DecodeOptions => ArrayView t -> { | r } -> TextDecoder -> Effect String
decodeWithOptions arr options decoder = runEffectFn3 _decode arr options decoder

