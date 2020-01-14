module Web.Encoding.UtfLabel where

import Data.Newtype (class Newtype)
import Prelude (class Eq, class Ord)

newtype UtfLabel = UtfLabel String

derive instance newtypeUtfLabel :: Newtype UtfLabel _
derive newtype instance eqUtfLabel :: Eq UtfLabel
derive newtype instance ordUtfLabel :: Ord UtfLabel

utf8 :: UtfLabel
utf8 = UtfLabel "utf8"