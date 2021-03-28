{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.EventBus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudWatchEvents.Types.EventBus
  ( EventBus (..)
  -- * Smart constructor
  , mkEventBus
  -- * Lenses
  , ebArn
  , ebName
  , ebPolicy
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | An event bus receives events from a source and routes them to rules associated with that event bus. Your account's default event bus receives rules from AWS services. A custom event bus can receive rules from AWS services as well as your custom applications and services. A partner event bus receives events from an event source created by an SaaS partner. These events come from the partners services or applications.
--
-- /See:/ 'mkEventBus' smart constructor.
data EventBus = EventBus'
  { arn :: Core.Maybe Core.Text
    -- ^ The ARN of the event bus.
  , name :: Core.Maybe Core.Text
    -- ^ The name of the event bus.
  , policy :: Core.Maybe Core.Text
    -- ^ The permissions policy of the event bus, describing which other AWS accounts can write events to this event bus.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'EventBus' value with any optional fields omitted.
mkEventBus
    :: EventBus
mkEventBus
  = EventBus'{arn = Core.Nothing, name = Core.Nothing,
              policy = Core.Nothing}

-- | The ARN of the event bus.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ebArn :: Lens.Lens' EventBus (Core.Maybe Core.Text)
ebArn = Lens.field @"arn"
{-# INLINEABLE ebArn #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

-- | The name of the event bus.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ebName :: Lens.Lens' EventBus (Core.Maybe Core.Text)
ebName = Lens.field @"name"
{-# INLINEABLE ebName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The permissions policy of the event bus, describing which other AWS accounts can write events to this event bus.
--
-- /Note:/ Consider using 'policy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ebPolicy :: Lens.Lens' EventBus (Core.Maybe Core.Text)
ebPolicy = Lens.field @"policy"
{-# INLINEABLE ebPolicy #-}
{-# DEPRECATED policy "Use generic-lens or generic-optics with 'policy' instead"  #-}

instance Core.FromJSON EventBus where
        parseJSON
          = Core.withObject "EventBus" Core.$
              \ x ->
                EventBus' Core.<$>
                  (x Core..:? "Arn") Core.<*> x Core..:? "Name" Core.<*>
                    x Core..:? "Policy"
