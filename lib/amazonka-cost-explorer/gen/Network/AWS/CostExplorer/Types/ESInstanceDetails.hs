{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.ESInstanceDetails
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CostExplorer.Types.ESInstanceDetails
  ( ESInstanceDetails (..)
  -- * Smart constructor
  , mkESInstanceDetails
  -- * Lenses
  , esidCurrentGeneration
  , esidInstanceClass
  , esidInstanceSize
  , esidRegion
  , esidSizeFlexEligible
  ) where

import qualified Network.AWS.CostExplorer.Types.InstanceClass as Types
import qualified Network.AWS.CostExplorer.Types.InstanceSize as Types
import qualified Network.AWS.CostExplorer.Types.Region as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Details about the Amazon ES instances that AWS recommends that you purchase.
--
-- /See:/ 'mkESInstanceDetails' smart constructor.
data ESInstanceDetails = ESInstanceDetails'
  { currentGeneration :: Core.Maybe Core.Bool
    -- ^ Whether the recommendation is for a current-generation instance.
  , instanceClass :: Core.Maybe Types.InstanceClass
    -- ^ The class of instance that AWS recommends.
  , instanceSize :: Core.Maybe Types.InstanceSize
    -- ^ The size of instance that AWS recommends.
  , region :: Core.Maybe Types.Region
    -- ^ The AWS Region of the recommended reservation.
  , sizeFlexEligible :: Core.Maybe Core.Bool
    -- ^ Whether the recommended reservation is size flexible.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ESInstanceDetails' value with any optional fields omitted.
mkESInstanceDetails
    :: ESInstanceDetails
mkESInstanceDetails
  = ESInstanceDetails'{currentGeneration = Core.Nothing,
                       instanceClass = Core.Nothing, instanceSize = Core.Nothing,
                       region = Core.Nothing, sizeFlexEligible = Core.Nothing}

-- | Whether the recommendation is for a current-generation instance.
--
-- /Note:/ Consider using 'currentGeneration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esidCurrentGeneration :: Lens.Lens' ESInstanceDetails (Core.Maybe Core.Bool)
esidCurrentGeneration = Lens.field @"currentGeneration"
{-# INLINEABLE esidCurrentGeneration #-}
{-# DEPRECATED currentGeneration "Use generic-lens or generic-optics with 'currentGeneration' instead"  #-}

-- | The class of instance that AWS recommends.
--
-- /Note:/ Consider using 'instanceClass' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esidInstanceClass :: Lens.Lens' ESInstanceDetails (Core.Maybe Types.InstanceClass)
esidInstanceClass = Lens.field @"instanceClass"
{-# INLINEABLE esidInstanceClass #-}
{-# DEPRECATED instanceClass "Use generic-lens or generic-optics with 'instanceClass' instead"  #-}

-- | The size of instance that AWS recommends.
--
-- /Note:/ Consider using 'instanceSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esidInstanceSize :: Lens.Lens' ESInstanceDetails (Core.Maybe Types.InstanceSize)
esidInstanceSize = Lens.field @"instanceSize"
{-# INLINEABLE esidInstanceSize #-}
{-# DEPRECATED instanceSize "Use generic-lens or generic-optics with 'instanceSize' instead"  #-}

-- | The AWS Region of the recommended reservation.
--
-- /Note:/ Consider using 'region' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esidRegion :: Lens.Lens' ESInstanceDetails (Core.Maybe Types.Region)
esidRegion = Lens.field @"region"
{-# INLINEABLE esidRegion #-}
{-# DEPRECATED region "Use generic-lens or generic-optics with 'region' instead"  #-}

-- | Whether the recommended reservation is size flexible.
--
-- /Note:/ Consider using 'sizeFlexEligible' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
esidSizeFlexEligible :: Lens.Lens' ESInstanceDetails (Core.Maybe Core.Bool)
esidSizeFlexEligible = Lens.field @"sizeFlexEligible"
{-# INLINEABLE esidSizeFlexEligible #-}
{-# DEPRECATED sizeFlexEligible "Use generic-lens or generic-optics with 'sizeFlexEligible' instead"  #-}

instance Core.FromJSON ESInstanceDetails where
        parseJSON
          = Core.withObject "ESInstanceDetails" Core.$
              \ x ->
                ESInstanceDetails' Core.<$>
                  (x Core..:? "CurrentGeneration") Core.<*>
                    x Core..:? "InstanceClass"
                    Core.<*> x Core..:? "InstanceSize"
                    Core.<*> x Core..:? "Region"
                    Core.<*> x Core..:? "SizeFlexEligible"
