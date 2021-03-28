{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisVideo.Types.ChannelInfo
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KinesisVideo.Types.ChannelInfo
  ( ChannelInfo (..)
  -- * Smart constructor
  , mkChannelInfo
  -- * Lenses
  , ciChannelARN
  , ciChannelName
  , ciChannelStatus
  , ciChannelType
  , ciCreationTime
  , ciSingleMasterConfiguration
  , ciVersion
  ) where

import qualified Network.AWS.KinesisVideo.Types.ChannelARN as Types
import qualified Network.AWS.KinesisVideo.Types.ChannelName as Types
import qualified Network.AWS.KinesisVideo.Types.ChannelType as Types
import qualified Network.AWS.KinesisVideo.Types.SingleMasterConfiguration as Types
import qualified Network.AWS.KinesisVideo.Types.StreamStatus as Types
import qualified Network.AWS.KinesisVideo.Types.Version as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A structure that encapsulates a signaling channel's metadata and properties.
--
-- /See:/ 'mkChannelInfo' smart constructor.
data ChannelInfo = ChannelInfo'
  { channelARN :: Core.Maybe Types.ChannelARN
    -- ^ The Amazon Resource Name (ARN) of the signaling channel.
  , channelName :: Core.Maybe Types.ChannelName
    -- ^ The name of the signaling channel.
  , channelStatus :: Core.Maybe Types.StreamStatus
    -- ^ Current status of the signaling channel.
  , channelType :: Core.Maybe Types.ChannelType
    -- ^ The type of the signaling channel.
  , creationTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The time at which the signaling channel was created.
  , singleMasterConfiguration :: Core.Maybe Types.SingleMasterConfiguration
    -- ^ A structure that contains the configuration for the @SINGLE_MASTER@ channel type.
  , version :: Core.Maybe Types.Version
    -- ^ The current version of the signaling channel.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ChannelInfo' value with any optional fields omitted.
mkChannelInfo
    :: ChannelInfo
mkChannelInfo
  = ChannelInfo'{channelARN = Core.Nothing,
                 channelName = Core.Nothing, channelStatus = Core.Nothing,
                 channelType = Core.Nothing, creationTime = Core.Nothing,
                 singleMasterConfiguration = Core.Nothing, version = Core.Nothing}

-- | The Amazon Resource Name (ARN) of the signaling channel.
--
-- /Note:/ Consider using 'channelARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciChannelARN :: Lens.Lens' ChannelInfo (Core.Maybe Types.ChannelARN)
ciChannelARN = Lens.field @"channelARN"
{-# INLINEABLE ciChannelARN #-}
{-# DEPRECATED channelARN "Use generic-lens or generic-optics with 'channelARN' instead"  #-}

-- | The name of the signaling channel.
--
-- /Note:/ Consider using 'channelName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciChannelName :: Lens.Lens' ChannelInfo (Core.Maybe Types.ChannelName)
ciChannelName = Lens.field @"channelName"
{-# INLINEABLE ciChannelName #-}
{-# DEPRECATED channelName "Use generic-lens or generic-optics with 'channelName' instead"  #-}

-- | Current status of the signaling channel.
--
-- /Note:/ Consider using 'channelStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciChannelStatus :: Lens.Lens' ChannelInfo (Core.Maybe Types.StreamStatus)
ciChannelStatus = Lens.field @"channelStatus"
{-# INLINEABLE ciChannelStatus #-}
{-# DEPRECATED channelStatus "Use generic-lens or generic-optics with 'channelStatus' instead"  #-}

-- | The type of the signaling channel.
--
-- /Note:/ Consider using 'channelType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciChannelType :: Lens.Lens' ChannelInfo (Core.Maybe Types.ChannelType)
ciChannelType = Lens.field @"channelType"
{-# INLINEABLE ciChannelType #-}
{-# DEPRECATED channelType "Use generic-lens or generic-optics with 'channelType' instead"  #-}

-- | The time at which the signaling channel was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciCreationTime :: Lens.Lens' ChannelInfo (Core.Maybe Core.NominalDiffTime)
ciCreationTime = Lens.field @"creationTime"
{-# INLINEABLE ciCreationTime #-}
{-# DEPRECATED creationTime "Use generic-lens or generic-optics with 'creationTime' instead"  #-}

-- | A structure that contains the configuration for the @SINGLE_MASTER@ channel type.
--
-- /Note:/ Consider using 'singleMasterConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciSingleMasterConfiguration :: Lens.Lens' ChannelInfo (Core.Maybe Types.SingleMasterConfiguration)
ciSingleMasterConfiguration = Lens.field @"singleMasterConfiguration"
{-# INLINEABLE ciSingleMasterConfiguration #-}
{-# DEPRECATED singleMasterConfiguration "Use generic-lens or generic-optics with 'singleMasterConfiguration' instead"  #-}

-- | The current version of the signaling channel.
--
-- /Note:/ Consider using 'version' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ciVersion :: Lens.Lens' ChannelInfo (Core.Maybe Types.Version)
ciVersion = Lens.field @"version"
{-# INLINEABLE ciVersion #-}
{-# DEPRECATED version "Use generic-lens or generic-optics with 'version' instead"  #-}

instance Core.FromJSON ChannelInfo where
        parseJSON
          = Core.withObject "ChannelInfo" Core.$
              \ x ->
                ChannelInfo' Core.<$>
                  (x Core..:? "ChannelARN") Core.<*> x Core..:? "ChannelName"
                    Core.<*> x Core..:? "ChannelStatus"
                    Core.<*> x Core..:? "ChannelType"
                    Core.<*> x Core..:? "CreationTime"
                    Core.<*> x Core..:? "SingleMasterConfiguration"
                    Core.<*> x Core..:? "Version"
