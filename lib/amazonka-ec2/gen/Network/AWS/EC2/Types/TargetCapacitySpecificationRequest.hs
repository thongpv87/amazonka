{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TargetCapacitySpecificationRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.EC2.Types.TargetCapacitySpecificationRequest
  ( TargetCapacitySpecificationRequest (..)
  -- * Smart constructor
  , mkTargetCapacitySpecificationRequest
  -- * Lenses
  , tcsrTotalTargetCapacity
  , tcsrDefaultTargetCapacityType
  , tcsrOnDemandTargetCapacity
  , tcsrSpotTargetCapacity
  ) where

import qualified Network.AWS.EC2.Types.DefaultTargetCapacityType as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | The number of units to request. You can choose to set the target capacity as the number of instances. Or you can set the target capacity to a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is @maintain@ , you can specify a target capacity of 0 and add capacity later.
--
-- You can use the On-Demand Instance @MaxTotalPrice@ parameter, the Spot Instance @MaxTotalPrice@ parameter, or both parameters to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, EC2 Fleet will launch instances until it reaches the maximum amount that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity. The @MaxTotalPrice@ parameters are located in <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_OnDemandOptionsRequest OnDemandOptionsRequest> and <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotOptionsRequest SpotOptionsRequest> .
--
-- /See:/ 'mkTargetCapacitySpecificationRequest' smart constructor.
data TargetCapacitySpecificationRequest = TargetCapacitySpecificationRequest'
  { totalTargetCapacity :: Core.Int
    -- ^ The number of units to request, filled using @DefaultTargetCapacityType@ .
  , defaultTargetCapacityType :: Core.Maybe Types.DefaultTargetCapacityType
    -- ^ The default @TotalTargetCapacity@ , which is either @Spot@ or @On-Demand@ .
  , onDemandTargetCapacity :: Core.Maybe Core.Int
    -- ^ The number of On-Demand units to request.
  , spotTargetCapacity :: Core.Maybe Core.Int
    -- ^ The number of Spot units to request.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'TargetCapacitySpecificationRequest' value with any optional fields omitted.
mkTargetCapacitySpecificationRequest
    :: Core.Int -- ^ 'totalTargetCapacity'
    -> TargetCapacitySpecificationRequest
mkTargetCapacitySpecificationRequest totalTargetCapacity
  = TargetCapacitySpecificationRequest'{totalTargetCapacity,
                                        defaultTargetCapacityType = Core.Nothing,
                                        onDemandTargetCapacity = Core.Nothing,
                                        spotTargetCapacity = Core.Nothing}

-- | The number of units to request, filled using @DefaultTargetCapacityType@ .
--
-- /Note:/ Consider using 'totalTargetCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tcsrTotalTargetCapacity :: Lens.Lens' TargetCapacitySpecificationRequest Core.Int
tcsrTotalTargetCapacity = Lens.field @"totalTargetCapacity"
{-# INLINEABLE tcsrTotalTargetCapacity #-}
{-# DEPRECATED totalTargetCapacity "Use generic-lens or generic-optics with 'totalTargetCapacity' instead"  #-}

-- | The default @TotalTargetCapacity@ , which is either @Spot@ or @On-Demand@ .
--
-- /Note:/ Consider using 'defaultTargetCapacityType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tcsrDefaultTargetCapacityType :: Lens.Lens' TargetCapacitySpecificationRequest (Core.Maybe Types.DefaultTargetCapacityType)
tcsrDefaultTargetCapacityType = Lens.field @"defaultTargetCapacityType"
{-# INLINEABLE tcsrDefaultTargetCapacityType #-}
{-# DEPRECATED defaultTargetCapacityType "Use generic-lens or generic-optics with 'defaultTargetCapacityType' instead"  #-}

-- | The number of On-Demand units to request.
--
-- /Note:/ Consider using 'onDemandTargetCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tcsrOnDemandTargetCapacity :: Lens.Lens' TargetCapacitySpecificationRequest (Core.Maybe Core.Int)
tcsrOnDemandTargetCapacity = Lens.field @"onDemandTargetCapacity"
{-# INLINEABLE tcsrOnDemandTargetCapacity #-}
{-# DEPRECATED onDemandTargetCapacity "Use generic-lens or generic-optics with 'onDemandTargetCapacity' instead"  #-}

-- | The number of Spot units to request.
--
-- /Note:/ Consider using 'spotTargetCapacity' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
tcsrSpotTargetCapacity :: Lens.Lens' TargetCapacitySpecificationRequest (Core.Maybe Core.Int)
tcsrSpotTargetCapacity = Lens.field @"spotTargetCapacity"
{-# INLINEABLE tcsrSpotTargetCapacity #-}
{-# DEPRECATED spotTargetCapacity "Use generic-lens or generic-optics with 'spotTargetCapacity' instead"  #-}

instance Core.ToQuery TargetCapacitySpecificationRequest where
        toQuery TargetCapacitySpecificationRequest{..}
          = Core.toQueryPair "TotalTargetCapacity" totalTargetCapacity
              Core.<>
              Core.maybe Core.mempty
                (Core.toQueryPair "DefaultTargetCapacityType")
                defaultTargetCapacityType
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "OnDemandTargetCapacity")
                onDemandTargetCapacity
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "SpotTargetCapacity")
                spotTargetCapacity
