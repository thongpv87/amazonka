{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.VaultNotificationConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glacier.Types.VaultNotificationConfig
  ( VaultNotificationConfig (..)
  -- * Smart constructor
  , mkVaultNotificationConfig
  -- * Lenses
  , vncEvents
  , vncSNSTopic
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Represents a vault's notification configuration.
--
-- /See:/ 'mkVaultNotificationConfig' smart constructor.
data VaultNotificationConfig = VaultNotificationConfig'
  { events :: Core.Maybe [Core.Text]
    -- ^ A list of one or more events for which Amazon S3 Glacier will send a notification to the specified Amazon SNS topic.
  , sNSTopic :: Core.Maybe Core.Text
    -- ^ The Amazon Simple Notification Service (Amazon SNS) topic Amazon Resource Name (ARN).
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'VaultNotificationConfig' value with any optional fields omitted.
mkVaultNotificationConfig
    :: VaultNotificationConfig
mkVaultNotificationConfig
  = VaultNotificationConfig'{events = Core.Nothing,
                             sNSTopic = Core.Nothing}

-- | A list of one or more events for which Amazon S3 Glacier will send a notification to the specified Amazon SNS topic.
--
-- /Note:/ Consider using 'events' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vncEvents :: Lens.Lens' VaultNotificationConfig (Core.Maybe [Core.Text])
vncEvents = Lens.field @"events"
{-# INLINEABLE vncEvents #-}
{-# DEPRECATED events "Use generic-lens or generic-optics with 'events' instead"  #-}

-- | The Amazon Simple Notification Service (Amazon SNS) topic Amazon Resource Name (ARN).
--
-- /Note:/ Consider using 'sNSTopic' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
vncSNSTopic :: Lens.Lens' VaultNotificationConfig (Core.Maybe Core.Text)
vncSNSTopic = Lens.field @"sNSTopic"
{-# INLINEABLE vncSNSTopic #-}
{-# DEPRECATED sNSTopic "Use generic-lens or generic-optics with 'sNSTopic' instead"  #-}

instance Core.FromJSON VaultNotificationConfig where
        toJSON VaultNotificationConfig{..}
          = Core.object
              (Core.catMaybes
                 [("Events" Core..=) Core.<$> events,
                  ("SNSTopic" Core..=) Core.<$> sNSTopic])

instance Core.FromJSON VaultNotificationConfig where
        parseJSON
          = Core.withObject "VaultNotificationConfig" Core.$
              \ x ->
                VaultNotificationConfig' Core.<$>
                  (x Core..:? "Events") Core.<*> x Core..:? "SNSTopic"
