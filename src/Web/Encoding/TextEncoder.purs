module Web.Encoding.TextEncoder where

import Data.ArrayBuffer.Types (Uint8Array)
import Effect (Effect)

foreign import data TextEncoder :: Type

foreign import new :: Effect TextEncoder

foreign import encode :: String -> TextEncoder -> Uint8Array

foreign import encodeInto :: String -> Uint8Array -> TextEncoder -> Effect { read :: Int, written :: Int }