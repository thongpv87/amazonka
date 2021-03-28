{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ReservedNodeOffering
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Redshift.Types.ReservedNodeOffering
  ( ReservedNodeOffering (..)
  -- * Smart constructor
  , mkReservedNodeOffering
  -- * Lenses
  , rnoCurrencyCode
  , rnoDuration
  , rnoFixedPrice
  , rnoNodeType
  , rnoOfferingType
  , rnoRecurringCharges
  , rnoReservedNodeOfferingId
  , rnoReservedNodeOfferingType
  , rnoUsagePrice
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Redshift.Internal as Types
import qualified Network.AWS.Redshift.Types.RecurringCharge as Types
import qualified Network.AWS.Redshift.Types.ReservedNodeOfferingType as Types

-- | Describes a reserved node offering.
--
-- /See:/ 'mkReservedNodeOffering' smart constructor.
data ReservedNodeOffering = ReservedNodeOffering'
  { currencyCode :: Core.Maybe Core.Text
    -- ^ The currency code for the compute nodes offering.
  , duration :: Core.Maybe Core.Int
    -- ^ The duration, in seconds, for which the offering will reserve the node.
  , fixedPrice :: Core.Maybe Core.Double
    -- ^ The upfront fixed charge you will pay to purchase the specific reserved node offering.
  , nodeType :: Core.Maybe Core.Text
    -- ^ The node type offered by the reserved node offering.
  , offeringType :: Core.Maybe Core.Text
    -- ^ The anticipated utilization of the reserved node, as defined in the reserved node offering.
  , recurringCharges :: Core.Maybe [Types.RecurringCharge]
    -- ^ The charge to your account regardless of whether you are creating any clusters using the node offering. Recurring charges are only in effect for heavy-utilization reserved nodes.
  , reservedNodeOfferingId :: Core.Maybe Core.Text
    -- ^ The offering identifier.
  , reservedNodeOfferingType :: Core.Maybe Types.ReservedNodeOfferingType
    -- ^ 
  , usagePrice :: Core.Maybe Core.Double
    -- ^ The rate you are charged for each hour the cluster that is using the offering is running.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ReservedNodeOffering' value with any optional fields omitted.
mkReservedNodeOffering
    :: ReservedNodeOffering
mkReservedNodeOffering
  = ReservedNodeOffering'{currencyCode = Core.Nothing,
                          duration = Core.Nothing, fixedPrice = Core.Nothing,
                          nodeType = Core.Nothing, offeringType = Core.Nothing,
                          recurringCharges = Core.Nothing,
                          reservedNodeOfferingId = Core.Nothing,
                          reservedNodeOfferingType = Core.Nothing, usagePrice = Core.Nothing}

-- | The currency code for the compute nodes offering.
--
-- /Note:/ Consider using 'currencyCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rnoCurrencyCode :: Lens.Lens' ReservedNodeOffering (Core.Maybe Core.Text)
rnoCurrencyCode = Lens.field @"currencyCode"
{-# INLINEABLE rnoCurrencyCode #-}
{-# DEPRECATED currencyCode "Use generic-lens or generic-optics with 'currencyCode' instead"  #-}

-- | The duration, in seconds, for which the offering will reserve the node.
--
-- /Note:/ Consider using 'duration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rnoDuration :: Lens.Lens' ReservedNodeOffering (Core.Maybe Core.Int)
rnoDuration = Lens.field @"duration"
{-# INLINEABLE rnoDuration #-}
{-# DEPRECATED duration "Use generic-lens or generic-optics with 'duration' instead"  #-}

-- | The upfront fixed charge you will pay to purchase the specific reserved node offering.
--
-- /Note:/ Consider using 'fixedPrice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rnoFixedPrice :: Lens.Lens' ReservedNodeOffering (Core.Maybe Core.Double)
rnoFixedPrice = Lens.field @"fixedPrice"
{-# INLINEABLE rnoFixedPrice #-}
{-# DEPRECATED fixedPrice "Use generic-lens or generic-optics with 'fixedPrice' instead"  #-}

-- | The node type offered by the reserved node offering.
--
-- /Note:/ Consider using 'nodeType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rnoNodeType :: Lens.Lens' ReservedNodeOffering (Core.Maybe Core.Text)
rnoNodeType = Lens.field @"nodeType"
{-# INLINEABLE rnoNodeType #-}
{-# DEPRECATED nodeType "Use generic-lens or generic-optics with 'nodeType' instead"  #-}

-- | The anticipated utilization of the reserved node, as defined in the reserved node offering.
--
-- /Note:/ Consider using 'offeringType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rnoOfferingType :: Lens.Lens' ReservedNodeOffering (Core.Maybe Core.Text)
rnoOfferingType = Lens.field @"offeringType"
{-# INLINEABLE rnoOfferingType #-}
{-# DEPRECATED offeringType "Use generic-lens or generic-optics with 'offeringType' instead"  #-}

-- | The charge to your account regardless of whether you are creating any clusters using the node offering. Recurring charges are only in effect for heavy-utilization reserved nodes.
--
-- /Note:/ Consider using 'recurringCharges' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rnoRecurringCharges :: Lens.Lens' ReservedNodeOffering (Core.Maybe [Types.RecurringCharge])
rnoRecurringCharges = Lens.field @"recurringCharges"
{-# INLINEABLE rnoRecurringCharges #-}
{-# DEPRECATED recurringCharges "Use generic-lens or generic-optics with 'recurringCharges' instead"  #-}

-- | The offering identifier.
--
-- /Note:/ Consider using 'reservedNodeOfferingId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rnoReservedNodeOfferingId :: Lens.Lens' ReservedNodeOffering (Core.Maybe Core.Text)
rnoReservedNodeOfferingId = Lens.field @"reservedNodeOfferingId"
{-# INLINEABLE rnoReservedNodeOfferingId #-}
{-# DEPRECATED reservedNodeOfferingId "Use generic-lens or generic-optics with 'reservedNodeOfferingId' instead"  #-}

-- | 
--
-- /Note:/ Consider using 'reservedNodeOfferingType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rnoReservedNodeOfferingType :: Lens.Lens' ReservedNodeOffering (Core.Maybe Types.ReservedNodeOfferingType)
rnoReservedNodeOfferingType = Lens.field @"reservedNodeOfferingType"
{-# INLINEABLE rnoReservedNodeOfferingType #-}
{-# DEPRECATED reservedNodeOfferingType "Use generic-lens or generic-optics with 'reservedNodeOfferingType' instead"  #-}

-- | The rate you are charged for each hour the cluster that is using the offering is running.
--
-- /Note:/ Consider using 'usagePrice' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rnoUsagePrice :: Lens.Lens' ReservedNodeOffering (Core.Maybe Core.Double)
rnoUsagePrice = Lens.field @"usagePrice"
{-# INLINEABLE rnoUsagePrice #-}
{-# DEPRECATED usagePrice "Use generic-lens or generic-optics with 'usagePrice' instead"  #-}

instance Core.FromXML ReservedNodeOffering where
        parseXML x
          = ReservedNodeOffering' Core.<$>
              (x Core..@? "CurrencyCode") Core.<*> x Core..@? "Duration" Core.<*>
                x Core..@? "FixedPrice"
                Core.<*> x Core..@? "NodeType"
                Core.<*> x Core..@? "OfferingType"
                Core.<*>
                x Core..@? "RecurringCharges" Core..<@>
                  Core.parseXMLList "RecurringCharge"
                Core.<*> x Core..@? "ReservedNodeOfferingId"
                Core.<*> x Core..@? "ReservedNodeOfferingType"
                Core.<*> x Core..@? "UsagePrice"
