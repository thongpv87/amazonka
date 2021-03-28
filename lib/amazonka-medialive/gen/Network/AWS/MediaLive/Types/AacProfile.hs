{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AacProfile
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.AacProfile
  ( AacProfile
    ( AacProfile'
    , AacProfileHEV1
    , AacProfileHEV2
    , AacProfileLC
    , fromAacProfile
    )
  ) where

import qualified Network.AWS.Prelude as Core

-- | Aac Profile
newtype AacProfile = AacProfile'{fromAacProfile :: Core.Text}
                       deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show,
                                       Core.Generic)
                       deriving newtype (Core.IsString, Core.Hashable, Core.NFData,
                                         Core.ToJSONKey, Core.FromJSONKey, Core.ToJSON,
                                         Core.FromJSON, Core.ToXML, Core.FromXML, Core.ToText,
                                         Core.FromText, Core.ToByteString, Core.ToQuery,
                                         Core.ToHeader)

pattern AacProfileHEV1 :: AacProfile
pattern AacProfileHEV1 = AacProfile' "HEV1"

pattern AacProfileHEV2 :: AacProfile
pattern AacProfileHEV2 = AacProfile' "HEV2"

pattern AacProfileLC :: AacProfile
pattern AacProfileLC = AacProfile' "LC"

{-# COMPLETE 
  AacProfileHEV1,

  AacProfileHEV2,

  AacProfileLC,
  AacProfile'
  #-}
