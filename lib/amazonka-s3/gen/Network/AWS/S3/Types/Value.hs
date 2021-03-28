{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Value
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.S3.Types.Value
  ( Value
    ( Value'
    , fromValue
    )
  ) where

import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.S3.Internal as Types

newtype Value = Value'{fromValue :: Core.Text}
                  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show,
                                  Core.Generic)
                  deriving newtype (Core.IsString, Core.Hashable, Core.NFData,
                                    Core.ToJSONKey, Core.FromJSONKey, Core.ToJSON, Core.FromJSON,
                                    Core.ToXML, Core.FromXML, Core.ToText, Core.FromText,
                                    Core.ToByteString, Core.ToQuery, Core.ToHeader)

{-# COMPLETE   Value'
  #-}
