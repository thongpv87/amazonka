{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanSummary
  ( ProvisionedProductPlanSummary (..)
  -- * Smart constructor
  , mkProvisionedProductPlanSummary
  -- * Lenses
  , pppsPlanId
  , pppsPlanName
  , pppsPlanType
  , pppsProvisionProductId
  , pppsProvisionProductName
  , pppsProvisioningArtifactId
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.ServiceCatalog.Types.PlanId as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisionProductId as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisionedProductName as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanName as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanType as Types
import qualified Network.AWS.ServiceCatalog.Types.ProvisioningArtifactId as Types

-- | Summary information about a plan.
--
-- /See:/ 'mkProvisionedProductPlanSummary' smart constructor.
data ProvisionedProductPlanSummary = ProvisionedProductPlanSummary'
  { planId :: Core.Maybe Types.PlanId
    -- ^ The plan identifier.
  , planName :: Core.Maybe Types.ProvisionedProductPlanName
    -- ^ The name of the plan.
  , planType :: Core.Maybe Types.ProvisionedProductPlanType
    -- ^ The plan type.
  , provisionProductId :: Core.Maybe Types.ProvisionProductId
    -- ^ The product identifier.
  , provisionProductName :: Core.Maybe Types.ProvisionedProductName
    -- ^ The user-friendly name of the provisioned product.
  , provisioningArtifactId :: Core.Maybe Types.ProvisioningArtifactId
    -- ^ The identifier of the provisioning artifact.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ProvisionedProductPlanSummary' value with any optional fields omitted.
mkProvisionedProductPlanSummary
    :: ProvisionedProductPlanSummary
mkProvisionedProductPlanSummary
  = ProvisionedProductPlanSummary'{planId = Core.Nothing,
                                   planName = Core.Nothing, planType = Core.Nothing,
                                   provisionProductId = Core.Nothing,
                                   provisionProductName = Core.Nothing,
                                   provisioningArtifactId = Core.Nothing}

-- | The plan identifier.
--
-- /Note:/ Consider using 'planId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pppsPlanId :: Lens.Lens' ProvisionedProductPlanSummary (Core.Maybe Types.PlanId)
pppsPlanId = Lens.field @"planId"
{-# INLINEABLE pppsPlanId #-}
{-# DEPRECATED planId "Use generic-lens or generic-optics with 'planId' instead"  #-}

-- | The name of the plan.
--
-- /Note:/ Consider using 'planName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pppsPlanName :: Lens.Lens' ProvisionedProductPlanSummary (Core.Maybe Types.ProvisionedProductPlanName)
pppsPlanName = Lens.field @"planName"
{-# INLINEABLE pppsPlanName #-}
{-# DEPRECATED planName "Use generic-lens or generic-optics with 'planName' instead"  #-}

-- | The plan type.
--
-- /Note:/ Consider using 'planType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pppsPlanType :: Lens.Lens' ProvisionedProductPlanSummary (Core.Maybe Types.ProvisionedProductPlanType)
pppsPlanType = Lens.field @"planType"
{-# INLINEABLE pppsPlanType #-}
{-# DEPRECATED planType "Use generic-lens or generic-optics with 'planType' instead"  #-}

-- | The product identifier.
--
-- /Note:/ Consider using 'provisionProductId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pppsProvisionProductId :: Lens.Lens' ProvisionedProductPlanSummary (Core.Maybe Types.ProvisionProductId)
pppsProvisionProductId = Lens.field @"provisionProductId"
{-# INLINEABLE pppsProvisionProductId #-}
{-# DEPRECATED provisionProductId "Use generic-lens or generic-optics with 'provisionProductId' instead"  #-}

-- | The user-friendly name of the provisioned product.
--
-- /Note:/ Consider using 'provisionProductName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pppsProvisionProductName :: Lens.Lens' ProvisionedProductPlanSummary (Core.Maybe Types.ProvisionedProductName)
pppsProvisionProductName = Lens.field @"provisionProductName"
{-# INLINEABLE pppsProvisionProductName #-}
{-# DEPRECATED provisionProductName "Use generic-lens or generic-optics with 'provisionProductName' instead"  #-}

-- | The identifier of the provisioning artifact.
--
-- /Note:/ Consider using 'provisioningArtifactId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pppsProvisioningArtifactId :: Lens.Lens' ProvisionedProductPlanSummary (Core.Maybe Types.ProvisioningArtifactId)
pppsProvisioningArtifactId = Lens.field @"provisioningArtifactId"
{-# INLINEABLE pppsProvisioningArtifactId #-}
{-# DEPRECATED provisioningArtifactId "Use generic-lens or generic-optics with 'provisioningArtifactId' instead"  #-}

instance Core.FromJSON ProvisionedProductPlanSummary where
        parseJSON
          = Core.withObject "ProvisionedProductPlanSummary" Core.$
              \ x ->
                ProvisionedProductPlanSummary' Core.<$>
                  (x Core..:? "PlanId") Core.<*> x Core..:? "PlanName" Core.<*>
                    x Core..:? "PlanType"
                    Core.<*> x Core..:? "ProvisionProductId"
                    Core.<*> x Core..:? "ProvisionProductName"
                    Core.<*> x Core..:? "ProvisioningArtifactId"
