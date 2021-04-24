{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.QuoteFields
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.QuoteFields
  ( QuoteFields
      ( ..,
        ASNeeded,
        Always
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QuoteFields = QuoteFields' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASNeeded :: QuoteFields
pattern ASNeeded = QuoteFields' "ASNEEDED"

pattern Always :: QuoteFields
pattern Always = QuoteFields' "ALWAYS"

{-# COMPLETE
  ASNeeded,
  Always,
  QuoteFields'
  #-}

instance FromText QuoteFields where
  parser = (QuoteFields' . mk) <$> takeText

instance ToText QuoteFields where
  toText (QuoteFields' ci) = original ci

instance Hashable QuoteFields

instance NFData QuoteFields

instance ToByteString QuoteFields

instance ToQuery QuoteFields

instance ToHeader QuoteFields

instance ToJSON QuoteFields where
  toJSON = toJSONText

instance FromJSON QuoteFields where
  parseJSON = parseJSONText "QuoteFields"
