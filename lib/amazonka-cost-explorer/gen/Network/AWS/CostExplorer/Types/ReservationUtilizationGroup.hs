{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.ReservationUtilizationGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CostExplorer.Types.ReservationUtilizationGroup
  ( ReservationUtilizationGroup (..)
  -- * Smart constructor
  , mkReservationUtilizationGroup
  -- * Lenses
  , rugAttributes
  , rugKey
  , rugUtilization
  , rugValue
  ) where

import qualified Network.AWS.CostExplorer.Types.AttributeType as Types
import qualified Network.AWS.CostExplorer.Types.AttributeValue as Types
import qualified Network.AWS.CostExplorer.Types.ReservationAggregates as Types
import qualified Network.AWS.CostExplorer.Types.ReservationGroupKey as Types
import qualified Network.AWS.CostExplorer.Types.ReservationGroupValue as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A group of reservations that share a set of attributes.
--
-- /See:/ 'mkReservationUtilizationGroup' smart constructor.
data ReservationUtilizationGroup = ReservationUtilizationGroup'
  { attributes :: Core.Maybe (Core.HashMap Types.AttributeType Types.AttributeValue)
    -- ^ The attributes for this group of reservations.
  , key :: Core.Maybe Types.ReservationGroupKey
    -- ^ The key for a specific reservation attribute.
  , utilization :: Core.Maybe Types.ReservationAggregates
    -- ^ How much you used this group of reservations.
  , value :: Core.Maybe Types.ReservationGroupValue
    -- ^ The value of a specific reservation attribute.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ReservationUtilizationGroup' value with any optional fields omitted.
mkReservationUtilizationGroup
    :: ReservationUtilizationGroup
mkReservationUtilizationGroup
  = ReservationUtilizationGroup'{attributes = Core.Nothing,
                                 key = Core.Nothing, utilization = Core.Nothing,
                                 value = Core.Nothing}

-- | The attributes for this group of reservations.
--
-- /Note:/ Consider using 'attributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rugAttributes :: Lens.Lens' ReservationUtilizationGroup (Core.Maybe (Core.HashMap Types.AttributeType Types.AttributeValue))
rugAttributes = Lens.field @"attributes"
{-# INLINEABLE rugAttributes #-}
{-# DEPRECATED attributes "Use generic-lens or generic-optics with 'attributes' instead"  #-}

-- | The key for a specific reservation attribute.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rugKey :: Lens.Lens' ReservationUtilizationGroup (Core.Maybe Types.ReservationGroupKey)
rugKey = Lens.field @"key"
{-# INLINEABLE rugKey #-}
{-# DEPRECATED key "Use generic-lens or generic-optics with 'key' instead"  #-}

-- | How much you used this group of reservations.
--
-- /Note:/ Consider using 'utilization' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rugUtilization :: Lens.Lens' ReservationUtilizationGroup (Core.Maybe Types.ReservationAggregates)
rugUtilization = Lens.field @"utilization"
{-# INLINEABLE rugUtilization #-}
{-# DEPRECATED utilization "Use generic-lens or generic-optics with 'utilization' instead"  #-}

-- | The value of a specific reservation attribute.
--
-- /Note:/ Consider using 'value' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rugValue :: Lens.Lens' ReservationUtilizationGroup (Core.Maybe Types.ReservationGroupValue)
rugValue = Lens.field @"value"
{-# INLINEABLE rugValue #-}
{-# DEPRECATED value "Use generic-lens or generic-optics with 'value' instead"  #-}

instance Core.FromJSON ReservationUtilizationGroup where
        parseJSON
          = Core.withObject "ReservationUtilizationGroup" Core.$
              \ x ->
                ReservationUtilizationGroup' Core.<$>
                  (x Core..:? "Attributes") Core.<*> x Core..:? "Key" Core.<*>
                    x Core..:? "Utilization"
                    Core.<*> x Core..:? "Value"
