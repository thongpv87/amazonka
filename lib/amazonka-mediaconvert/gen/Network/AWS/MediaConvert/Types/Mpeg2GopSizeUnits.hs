{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2GopSizeUnits
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.Mpeg2GopSizeUnits
  ( Mpeg2GopSizeUnits
    ( Mpeg2GopSizeUnits'
    , Mpeg2GopSizeUnitsFrames
    , Mpeg2GopSizeUnitsSeconds
    , fromMpeg2GopSizeUnits
    )
  ) where

import qualified Network.AWS.Prelude as Core

-- | Indicates if the GOP Size in MPEG2 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
newtype Mpeg2GopSizeUnits = Mpeg2GopSizeUnits'{fromMpeg2GopSizeUnits
                                               :: Core.Text}
                              deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show,
                                              Core.Generic)
                              deriving newtype (Core.IsString, Core.Hashable, Core.NFData,
                                                Core.ToJSONKey, Core.FromJSONKey, Core.ToJSON,
                                                Core.FromJSON, Core.ToXML, Core.FromXML,
                                                Core.ToText, Core.FromText, Core.ToByteString,
                                                Core.ToQuery, Core.ToHeader)

pattern Mpeg2GopSizeUnitsFrames :: Mpeg2GopSizeUnits
pattern Mpeg2GopSizeUnitsFrames = Mpeg2GopSizeUnits' "FRAMES"

pattern Mpeg2GopSizeUnitsSeconds :: Mpeg2GopSizeUnits
pattern Mpeg2GopSizeUnitsSeconds = Mpeg2GopSizeUnits' "SECONDS"

{-# COMPLETE 
  Mpeg2GopSizeUnitsFrames,

  Mpeg2GopSizeUnitsSeconds,
  Mpeg2GopSizeUnits'
  #-}
