{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.CloudFormationTarget
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CodeDeploy.Types.CloudFormationTarget
  ( CloudFormationTarget (..)
  -- * Smart constructor
  , mkCloudFormationTarget
  -- * Lenses
  , cftDeploymentId
  , cftLastUpdatedAt
  , cftLifecycleEvents
  , cftResourceType
  , cftStatus
  , cftTargetId
  , cftTargetVersionWeight
  ) where

import qualified Network.AWS.CodeDeploy.Types.DeploymentId as Types
import qualified Network.AWS.CodeDeploy.Types.LifecycleEvent as Types
import qualified Network.AWS.CodeDeploy.Types.ResourceType as Types
import qualified Network.AWS.CodeDeploy.Types.TargetId as Types
import qualified Network.AWS.CodeDeploy.Types.TargetStatus as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Information about the target to be updated by an AWS CloudFormation blue/green deployment. This target type is used for all deployments initiated by a CloudFormation stack update.
--
-- /See:/ 'mkCloudFormationTarget' smart constructor.
data CloudFormationTarget = CloudFormationTarget'
  { deploymentId :: Core.Maybe Types.DeploymentId
    -- ^ The unique ID of an AWS CloudFormation blue/green deployment.
  , lastUpdatedAt :: Core.Maybe Core.NominalDiffTime
    -- ^ The date and time when the target application was updated by an AWS CloudFormation blue/green deployment. 
  , lifecycleEvents :: Core.Maybe [Types.LifecycleEvent]
    -- ^ The lifecycle events of the AWS CloudFormation blue/green deployment to this target application. 
  , resourceType :: Core.Maybe Types.ResourceType
    -- ^ The resource type for the AWS CloudFormation blue/green deployment.
  , status :: Core.Maybe Types.TargetStatus
    -- ^ The status of an AWS CloudFormation blue/green deployment's target application. 
  , targetId :: Core.Maybe Types.TargetId
    -- ^ The unique ID of a deployment target that has a type of @CloudFormationTarget@ . 
  , targetVersionWeight :: Core.Maybe Core.Double
    -- ^ The percentage of production traffic that the target version of an AWS CloudFormation blue/green deployment receives.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'CloudFormationTarget' value with any optional fields omitted.
mkCloudFormationTarget
    :: CloudFormationTarget
mkCloudFormationTarget
  = CloudFormationTarget'{deploymentId = Core.Nothing,
                          lastUpdatedAt = Core.Nothing, lifecycleEvents = Core.Nothing,
                          resourceType = Core.Nothing, status = Core.Nothing,
                          targetId = Core.Nothing, targetVersionWeight = Core.Nothing}

-- | The unique ID of an AWS CloudFormation blue/green deployment.
--
-- /Note:/ Consider using 'deploymentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cftDeploymentId :: Lens.Lens' CloudFormationTarget (Core.Maybe Types.DeploymentId)
cftDeploymentId = Lens.field @"deploymentId"
{-# INLINEABLE cftDeploymentId #-}
{-# DEPRECATED deploymentId "Use generic-lens or generic-optics with 'deploymentId' instead"  #-}

-- | The date and time when the target application was updated by an AWS CloudFormation blue/green deployment. 
--
-- /Note:/ Consider using 'lastUpdatedAt' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cftLastUpdatedAt :: Lens.Lens' CloudFormationTarget (Core.Maybe Core.NominalDiffTime)
cftLastUpdatedAt = Lens.field @"lastUpdatedAt"
{-# INLINEABLE cftLastUpdatedAt #-}
{-# DEPRECATED lastUpdatedAt "Use generic-lens or generic-optics with 'lastUpdatedAt' instead"  #-}

-- | The lifecycle events of the AWS CloudFormation blue/green deployment to this target application. 
--
-- /Note:/ Consider using 'lifecycleEvents' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cftLifecycleEvents :: Lens.Lens' CloudFormationTarget (Core.Maybe [Types.LifecycleEvent])
cftLifecycleEvents = Lens.field @"lifecycleEvents"
{-# INLINEABLE cftLifecycleEvents #-}
{-# DEPRECATED lifecycleEvents "Use generic-lens or generic-optics with 'lifecycleEvents' instead"  #-}

-- | The resource type for the AWS CloudFormation blue/green deployment.
--
-- /Note:/ Consider using 'resourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cftResourceType :: Lens.Lens' CloudFormationTarget (Core.Maybe Types.ResourceType)
cftResourceType = Lens.field @"resourceType"
{-# INLINEABLE cftResourceType #-}
{-# DEPRECATED resourceType "Use generic-lens or generic-optics with 'resourceType' instead"  #-}

-- | The status of an AWS CloudFormation blue/green deployment's target application. 
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cftStatus :: Lens.Lens' CloudFormationTarget (Core.Maybe Types.TargetStatus)
cftStatus = Lens.field @"status"
{-# INLINEABLE cftStatus #-}
{-# DEPRECATED status "Use generic-lens or generic-optics with 'status' instead"  #-}

-- | The unique ID of a deployment target that has a type of @CloudFormationTarget@ . 
--
-- /Note:/ Consider using 'targetId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cftTargetId :: Lens.Lens' CloudFormationTarget (Core.Maybe Types.TargetId)
cftTargetId = Lens.field @"targetId"
{-# INLINEABLE cftTargetId #-}
{-# DEPRECATED targetId "Use generic-lens or generic-optics with 'targetId' instead"  #-}

-- | The percentage of production traffic that the target version of an AWS CloudFormation blue/green deployment receives.
--
-- /Note:/ Consider using 'targetVersionWeight' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cftTargetVersionWeight :: Lens.Lens' CloudFormationTarget (Core.Maybe Core.Double)
cftTargetVersionWeight = Lens.field @"targetVersionWeight"
{-# INLINEABLE cftTargetVersionWeight #-}
{-# DEPRECATED targetVersionWeight "Use generic-lens or generic-optics with 'targetVersionWeight' instead"  #-}

instance Core.FromJSON CloudFormationTarget where
        parseJSON
          = Core.withObject "CloudFormationTarget" Core.$
              \ x ->
                CloudFormationTarget' Core.<$>
                  (x Core..:? "deploymentId") Core.<*> x Core..:? "lastUpdatedAt"
                    Core.<*> x Core..:? "lifecycleEvents"
                    Core.<*> x Core..:? "resourceType"
                    Core.<*> x Core..:? "status"
                    Core.<*> x Core..:? "targetId"
                    Core.<*> x Core..:? "targetVersionWeight"
