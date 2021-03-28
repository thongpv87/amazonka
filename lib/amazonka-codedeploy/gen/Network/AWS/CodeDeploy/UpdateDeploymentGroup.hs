{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.UpdateDeploymentGroup
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes information about a deployment group.
module Network.AWS.CodeDeploy.UpdateDeploymentGroup
    (
    -- * Creating a request
      UpdateDeploymentGroup (..)
    , mkUpdateDeploymentGroup
    -- ** Request lenses
    , udgApplicationName
    , udgCurrentDeploymentGroupName
    , udgAlarmConfiguration
    , udgAutoRollbackConfiguration
    , udgAutoScalingGroups
    , udgBlueGreenDeploymentConfiguration
    , udgDeploymentConfigName
    , udgDeploymentStyle
    , udgEc2TagFilters
    , udgEc2TagSet
    , udgEcsServices
    , udgLoadBalancerInfo
    , udgNewDeploymentGroupName
    , udgOnPremisesInstanceTagFilters
    , udgOnPremisesTagSet
    , udgServiceRoleArn
    , udgTriggerConfigurations

    -- * Destructuring the response
    , UpdateDeploymentGroupResponse (..)
    , mkUpdateDeploymentGroupResponse
    -- ** Response lenses
    , udgrrsHooksNotCleanedUp
    , udgrrsResponseStatus
    ) where

import qualified Network.AWS.CodeDeploy.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of an @UpdateDeploymentGroup@ operation.
--
-- /See:/ 'mkUpdateDeploymentGroup' smart constructor.
data UpdateDeploymentGroup = UpdateDeploymentGroup'
  { applicationName :: Types.ApplicationName
    -- ^ The application name that corresponds to the deployment group to update.
  , currentDeploymentGroupName :: Types.CurrentDeploymentGroupName
    -- ^ The current name of the deployment group.
  , alarmConfiguration :: Core.Maybe Types.AlarmConfiguration
    -- ^ Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.
  , autoRollbackConfiguration :: Core.Maybe Types.AutoRollbackConfiguration
    -- ^ Information for an automatic rollback configuration that is added or changed when a deployment group is updated.
  , autoScalingGroups :: Core.Maybe [Types.AutoScalingGroupName]
    -- ^ The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.
  , blueGreenDeploymentConfiguration :: Core.Maybe Types.BlueGreenDeploymentConfiguration
    -- ^ Information about blue/green deployment options for a deployment group.
  , deploymentConfigName :: Core.Maybe Types.DeploymentConfigName
    -- ^ The replacement deployment configuration name to use, if you want to change it.
  , deploymentStyle :: Core.Maybe Types.DeploymentStyle
    -- ^ Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
  , ec2TagFilters :: Core.Maybe [Types.EC2TagFilter]
    -- ^ The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
  , ec2TagSet :: Core.Maybe Types.EC2TagSet
    -- ^ Information about groups of tags applied to on-premises instances. The deployment group includes only EC2 instances identified by all the tag groups.
  , ecsServices :: Core.Maybe [Types.ECSService]
    -- ^ The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format @<clustername>:<servicename>@ . 
  , loadBalancerInfo :: Core.Maybe Types.LoadBalancerInfo
    -- ^ Information about the load balancer used in a deployment.
  , newDeploymentGroupName :: Core.Maybe Types.NewDeploymentGroupName
    -- ^ The new name of the deployment group, if you want to change it.
  , onPremisesInstanceTagFilters :: Core.Maybe [Types.TagFilter]
    -- ^ The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
  , onPremisesTagSet :: Core.Maybe Types.OnPremisesTagSet
    -- ^ Information about an on-premises instance tag set. The deployment group includes only on-premises instances identified by all the tag groups.
  , serviceRoleArn :: Core.Maybe Types.ServiceRoleArn
    -- ^ A replacement ARN for the service role, if you want to change it.
  , triggerConfigurations :: Core.Maybe [Types.TriggerConfig]
    -- ^ Information about triggers to change when the deployment group is updated. For examples, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html Edit a Trigger in a CodeDeploy Deployment Group> in the /AWS CodeDeploy User Guide/ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateDeploymentGroup' value with any optional fields omitted.
mkUpdateDeploymentGroup
    :: Types.ApplicationName -- ^ 'applicationName'
    -> Types.CurrentDeploymentGroupName -- ^ 'currentDeploymentGroupName'
    -> UpdateDeploymentGroup
mkUpdateDeploymentGroup applicationName currentDeploymentGroupName
  = UpdateDeploymentGroup'{applicationName,
                           currentDeploymentGroupName, alarmConfiguration = Core.Nothing,
                           autoRollbackConfiguration = Core.Nothing,
                           autoScalingGroups = Core.Nothing,
                           blueGreenDeploymentConfiguration = Core.Nothing,
                           deploymentConfigName = Core.Nothing,
                           deploymentStyle = Core.Nothing, ec2TagFilters = Core.Nothing,
                           ec2TagSet = Core.Nothing, ecsServices = Core.Nothing,
                           loadBalancerInfo = Core.Nothing,
                           newDeploymentGroupName = Core.Nothing,
                           onPremisesInstanceTagFilters = Core.Nothing,
                           onPremisesTagSet = Core.Nothing, serviceRoleArn = Core.Nothing,
                           triggerConfigurations = Core.Nothing}

-- | The application name that corresponds to the deployment group to update.
--
-- /Note:/ Consider using 'applicationName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgApplicationName :: Lens.Lens' UpdateDeploymentGroup Types.ApplicationName
udgApplicationName = Lens.field @"applicationName"
{-# INLINEABLE udgApplicationName #-}
{-# DEPRECATED applicationName "Use generic-lens or generic-optics with 'applicationName' instead"  #-}

-- | The current name of the deployment group.
--
-- /Note:/ Consider using 'currentDeploymentGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgCurrentDeploymentGroupName :: Lens.Lens' UpdateDeploymentGroup Types.CurrentDeploymentGroupName
udgCurrentDeploymentGroupName = Lens.field @"currentDeploymentGroupName"
{-# INLINEABLE udgCurrentDeploymentGroupName #-}
{-# DEPRECATED currentDeploymentGroupName "Use generic-lens or generic-optics with 'currentDeploymentGroupName' instead"  #-}

-- | Information to add or change about Amazon CloudWatch alarms when the deployment group is updated.
--
-- /Note:/ Consider using 'alarmConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgAlarmConfiguration :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.AlarmConfiguration)
udgAlarmConfiguration = Lens.field @"alarmConfiguration"
{-# INLINEABLE udgAlarmConfiguration #-}
{-# DEPRECATED alarmConfiguration "Use generic-lens or generic-optics with 'alarmConfiguration' instead"  #-}

-- | Information for an automatic rollback configuration that is added or changed when a deployment group is updated.
--
-- /Note:/ Consider using 'autoRollbackConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgAutoRollbackConfiguration :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.AutoRollbackConfiguration)
udgAutoRollbackConfiguration = Lens.field @"autoRollbackConfiguration"
{-# INLINEABLE udgAutoRollbackConfiguration #-}
{-# DEPRECATED autoRollbackConfiguration "Use generic-lens or generic-optics with 'autoRollbackConfiguration' instead"  #-}

-- | The replacement list of Auto Scaling groups to be included in the deployment group, if you want to change them. To keep the Auto Scaling groups, enter their names. To remove Auto Scaling groups, do not enter any Auto Scaling group names.
--
-- /Note:/ Consider using 'autoScalingGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgAutoScalingGroups :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe [Types.AutoScalingGroupName])
udgAutoScalingGroups = Lens.field @"autoScalingGroups"
{-# INLINEABLE udgAutoScalingGroups #-}
{-# DEPRECATED autoScalingGroups "Use generic-lens or generic-optics with 'autoScalingGroups' instead"  #-}

-- | Information about blue/green deployment options for a deployment group.
--
-- /Note:/ Consider using 'blueGreenDeploymentConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgBlueGreenDeploymentConfiguration :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.BlueGreenDeploymentConfiguration)
udgBlueGreenDeploymentConfiguration = Lens.field @"blueGreenDeploymentConfiguration"
{-# INLINEABLE udgBlueGreenDeploymentConfiguration #-}
{-# DEPRECATED blueGreenDeploymentConfiguration "Use generic-lens or generic-optics with 'blueGreenDeploymentConfiguration' instead"  #-}

-- | The replacement deployment configuration name to use, if you want to change it.
--
-- /Note:/ Consider using 'deploymentConfigName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgDeploymentConfigName :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.DeploymentConfigName)
udgDeploymentConfigName = Lens.field @"deploymentConfigName"
{-# INLINEABLE udgDeploymentConfigName #-}
{-# DEPRECATED deploymentConfigName "Use generic-lens or generic-optics with 'deploymentConfigName' instead"  #-}

-- | Information about the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer.
--
-- /Note:/ Consider using 'deploymentStyle' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgDeploymentStyle :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.DeploymentStyle)
udgDeploymentStyle = Lens.field @"deploymentStyle"
{-# INLINEABLE udgDeploymentStyle #-}
{-# DEPRECATED deploymentStyle "Use generic-lens or generic-optics with 'deploymentStyle' instead"  #-}

-- | The replacement set of Amazon EC2 tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
--
-- /Note:/ Consider using 'ec2TagFilters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgEc2TagFilters :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe [Types.EC2TagFilter])
udgEc2TagFilters = Lens.field @"ec2TagFilters"
{-# INLINEABLE udgEc2TagFilters #-}
{-# DEPRECATED ec2TagFilters "Use generic-lens or generic-optics with 'ec2TagFilters' instead"  #-}

-- | Information about groups of tags applied to on-premises instances. The deployment group includes only EC2 instances identified by all the tag groups.
--
-- /Note:/ Consider using 'ec2TagSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgEc2TagSet :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.EC2TagSet)
udgEc2TagSet = Lens.field @"ec2TagSet"
{-# INLINEABLE udgEc2TagSet #-}
{-# DEPRECATED ec2TagSet "Use generic-lens or generic-optics with 'ec2TagSet' instead"  #-}

-- | The target Amazon ECS services in the deployment group. This applies only to deployment groups that use the Amazon ECS compute platform. A target Amazon ECS service is specified as an Amazon ECS cluster and service name pair using the format @<clustername>:<servicename>@ . 
--
-- /Note:/ Consider using 'ecsServices' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgEcsServices :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe [Types.ECSService])
udgEcsServices = Lens.field @"ecsServices"
{-# INLINEABLE udgEcsServices #-}
{-# DEPRECATED ecsServices "Use generic-lens or generic-optics with 'ecsServices' instead"  #-}

-- | Information about the load balancer used in a deployment.
--
-- /Note:/ Consider using 'loadBalancerInfo' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgLoadBalancerInfo :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.LoadBalancerInfo)
udgLoadBalancerInfo = Lens.field @"loadBalancerInfo"
{-# INLINEABLE udgLoadBalancerInfo #-}
{-# DEPRECATED loadBalancerInfo "Use generic-lens or generic-optics with 'loadBalancerInfo' instead"  #-}

-- | The new name of the deployment group, if you want to change it.
--
-- /Note:/ Consider using 'newDeploymentGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgNewDeploymentGroupName :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.NewDeploymentGroupName)
udgNewDeploymentGroupName = Lens.field @"newDeploymentGroupName"
{-# INLINEABLE udgNewDeploymentGroupName #-}
{-# DEPRECATED newDeploymentGroupName "Use generic-lens or generic-optics with 'newDeploymentGroupName' instead"  #-}

-- | The replacement set of on-premises instance tags on which to filter, if you want to change them. To keep the existing tags, enter their names. To remove tags, do not enter any tag names.
--
-- /Note:/ Consider using 'onPremisesInstanceTagFilters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgOnPremisesInstanceTagFilters :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe [Types.TagFilter])
udgOnPremisesInstanceTagFilters = Lens.field @"onPremisesInstanceTagFilters"
{-# INLINEABLE udgOnPremisesInstanceTagFilters #-}
{-# DEPRECATED onPremisesInstanceTagFilters "Use generic-lens or generic-optics with 'onPremisesInstanceTagFilters' instead"  #-}

-- | Information about an on-premises instance tag set. The deployment group includes only on-premises instances identified by all the tag groups.
--
-- /Note:/ Consider using 'onPremisesTagSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgOnPremisesTagSet :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.OnPremisesTagSet)
udgOnPremisesTagSet = Lens.field @"onPremisesTagSet"
{-# INLINEABLE udgOnPremisesTagSet #-}
{-# DEPRECATED onPremisesTagSet "Use generic-lens or generic-optics with 'onPremisesTagSet' instead"  #-}

-- | A replacement ARN for the service role, if you want to change it.
--
-- /Note:/ Consider using 'serviceRoleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgServiceRoleArn :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe Types.ServiceRoleArn)
udgServiceRoleArn = Lens.field @"serviceRoleArn"
{-# INLINEABLE udgServiceRoleArn #-}
{-# DEPRECATED serviceRoleArn "Use generic-lens or generic-optics with 'serviceRoleArn' instead"  #-}

-- | Information about triggers to change when the deployment group is updated. For examples, see <https://docs.aws.amazon.com/codedeploy/latest/userguide/how-to-notify-edit.html Edit a Trigger in a CodeDeploy Deployment Group> in the /AWS CodeDeploy User Guide/ .
--
-- /Note:/ Consider using 'triggerConfigurations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgTriggerConfigurations :: Lens.Lens' UpdateDeploymentGroup (Core.Maybe [Types.TriggerConfig])
udgTriggerConfigurations = Lens.field @"triggerConfigurations"
{-# INLINEABLE udgTriggerConfigurations #-}
{-# DEPRECATED triggerConfigurations "Use generic-lens or generic-optics with 'triggerConfigurations' instead"  #-}

instance Core.ToQuery UpdateDeploymentGroup where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateDeploymentGroup where
        toHeaders UpdateDeploymentGroup{..}
          = Core.pure
              ("X-Amz-Target", "CodeDeploy_20141006.UpdateDeploymentGroup")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateDeploymentGroup where
        toJSON UpdateDeploymentGroup{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("applicationName" Core..= applicationName),
                  Core.Just
                    ("currentDeploymentGroupName" Core..= currentDeploymentGroupName),
                  ("alarmConfiguration" Core..=) Core.<$> alarmConfiguration,
                  ("autoRollbackConfiguration" Core..=) Core.<$>
                    autoRollbackConfiguration,
                  ("autoScalingGroups" Core..=) Core.<$> autoScalingGroups,
                  ("blueGreenDeploymentConfiguration" Core..=) Core.<$>
                    blueGreenDeploymentConfiguration,
                  ("deploymentConfigName" Core..=) Core.<$> deploymentConfigName,
                  ("deploymentStyle" Core..=) Core.<$> deploymentStyle,
                  ("ec2TagFilters" Core..=) Core.<$> ec2TagFilters,
                  ("ec2TagSet" Core..=) Core.<$> ec2TagSet,
                  ("ecsServices" Core..=) Core.<$> ecsServices,
                  ("loadBalancerInfo" Core..=) Core.<$> loadBalancerInfo,
                  ("newDeploymentGroupName" Core..=) Core.<$> newDeploymentGroupName,
                  ("onPremisesInstanceTagFilters" Core..=) Core.<$>
                    onPremisesInstanceTagFilters,
                  ("onPremisesTagSet" Core..=) Core.<$> onPremisesTagSet,
                  ("serviceRoleArn" Core..=) Core.<$> serviceRoleArn,
                  ("triggerConfigurations" Core..=) Core.<$> triggerConfigurations])

instance Core.AWSRequest UpdateDeploymentGroup where
        type Rs UpdateDeploymentGroup = UpdateDeploymentGroupResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateDeploymentGroupResponse' Core.<$>
                   (x Core..:? "hooksNotCleanedUp") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Represents the output of an @UpdateDeploymentGroup@ operation.
--
-- /See:/ 'mkUpdateDeploymentGroupResponse' smart constructor.
data UpdateDeploymentGroupResponse = UpdateDeploymentGroupResponse'
  { hooksNotCleanedUp :: Core.Maybe [Types.AutoScalingGroup]
    -- ^ If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS account.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateDeploymentGroupResponse' value with any optional fields omitted.
mkUpdateDeploymentGroupResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateDeploymentGroupResponse
mkUpdateDeploymentGroupResponse responseStatus
  = UpdateDeploymentGroupResponse'{hooksNotCleanedUp = Core.Nothing,
                                   responseStatus}

-- | If the output contains no data, and the corresponding deployment group contained at least one Auto Scaling group, AWS CodeDeploy successfully removed all corresponding Auto Scaling lifecycle event hooks from the AWS account. If the output contains data, AWS CodeDeploy could not remove some Auto Scaling lifecycle event hooks from the AWS account.
--
-- /Note:/ Consider using 'hooksNotCleanedUp' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgrrsHooksNotCleanedUp :: Lens.Lens' UpdateDeploymentGroupResponse (Core.Maybe [Types.AutoScalingGroup])
udgrrsHooksNotCleanedUp = Lens.field @"hooksNotCleanedUp"
{-# INLINEABLE udgrrsHooksNotCleanedUp #-}
{-# DEPRECATED hooksNotCleanedUp "Use generic-lens or generic-optics with 'hooksNotCleanedUp' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
udgrrsResponseStatus :: Lens.Lens' UpdateDeploymentGroupResponse Core.Int
udgrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE udgrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
