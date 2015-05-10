{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE ViewPatterns      #-}

-- Module      : Compiler.TH
-- Copyright   : (c) 2013-2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Compiler.TH
    ( gParseJSON'
    , gToJSON'

    , TH
    , field
    , ctor
    , lenses

    , upper
    , lower
    , spinal
    , camel
    ) where

import           Compiler.Text
import           Control.Lens
import qualified Data.Aeson.TH        as A
import qualified Data.Aeson.Types     as A
import qualified Data.Jason.TH        as J
import qualified Data.Jason.Types     as J
import           Data.Text            (Text)
import qualified Data.Text            as Text
import qualified Data.Text.Manipulate as Text
import           GHC.Generics

data TH = TH
    { _ctor   :: Text -> Text
    , _field  :: Text -> Text
    , _lenses :: Bool
    }

makeLenses ''TH

gParseJSON' :: (Generic a, J.GFromJSON (Rep a)) => TH -> J.Value -> J.Parser a
gParseJSON' th = J.genericParseJSON (jason th)

gToJSON' :: (Generic a, A.GToJSON (Rep a)) => TH -> a -> A.Value
gToJSON' th = A.genericToJSON (aeson th)

upper, lower, spinal, camel :: TH
upper  = TH Text.toUpper  Text.toUpper  False
lower  = TH Text.toLower  Text.toLower  False
spinal = TH Text.toSpinal Text.toSpinal False
camel  = TH Text.toCamel  Text.toCamel  False

jason :: TH -> J.Options
jason (options -> (f, g)) = J.defaultOptions
    { J.constructorTagModifier = f
    , J.fieldLabelModifier     = g
    , J.allNullaryToStringTag  = True
    , J.sumEncoding            =
        J.defaultTaggedObject
            { J.tagFieldName      = "type"
            , J.contentsFieldName = "contents"
            }
    }

aeson :: TH -> A.Options
aeson (options -> (f, g)) = A.defaultOptions
    { A.constructorTagModifier = f
    , A.fieldLabelModifier     = g
    , A.allNullaryToStringTag  = True
    , A.sumEncoding            =
        A.defaultTaggedObject
            { A.tagFieldName      = "type"
            , A.contentsFieldName = "contents"
            }
    }

options :: TH -> (String -> String, String -> String)
options TH{..} = (f _ctor, f _field)
  where
    f g = asText (g . camelAcronym . h . stripSuffix "'")

    h | _lenses   = stripLens
      | otherwise = stripPrefix "_"
