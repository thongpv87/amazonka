{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.ScalingPolicy
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AutoScaling.Types.ScalingPolicy
  ( ScalingPolicy (..)
  -- * Smart constructor
  , mkScalingPolicy
  -- * Lenses
  , spAdjustmentType
  , spAlarms
  , spAutoScalingGroupName
  , spCooldown
  , spEnabled
  , spEstimatedInstanceWarmup
  , spMetricAggregationType
  , spMinAdjustmentMagnitude
  , spMinAdjustmentStep
  , spPolicyARN
  , spPolicyName
  , spPolicyType
  , spScalingAdjustment
  , spStepAdjustments
  , spTargetTrackingConfiguration
  ) where

import qualified Network.AWS.AutoScaling.Types.Alarm as Types
import qualified Network.AWS.AutoScaling.Types.AutoScalingGroupName as Types
import qualified Network.AWS.AutoScaling.Types.MetricAggregationType as Types
import qualified Network.AWS.AutoScaling.Types.PolicyName as Types
import qualified Network.AWS.AutoScaling.Types.ResourceName as Types
import qualified Network.AWS.AutoScaling.Types.StepAdjustment as Types
import qualified Network.AWS.AutoScaling.Types.TargetTrackingConfiguration as Types
import qualified Network.AWS.AutoScaling.Types.XmlStringMaxLen255 as Types
import qualified Network.AWS.AutoScaling.Types.XmlStringMaxLen64 as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Describes a scaling policy.
--
-- /See:/ 'mkScalingPolicy' smart constructor.
data ScalingPolicy = ScalingPolicy'
  { adjustmentType :: Core.Maybe Types.XmlStringMaxLen255
    -- ^ Specifies how the scaling adjustment is interpreted (for example, an absolute number or a percentage). The valid values are @ChangeInCapacity@ , @ExactCapacity@ , and @PercentChangeInCapacity@ .
  , alarms :: Core.Maybe [Types.Alarm]
    -- ^ The CloudWatch alarms related to the policy.
  , autoScalingGroupName :: Core.Maybe Types.AutoScalingGroupName
    -- ^ The name of the Auto Scaling group.
  , cooldown :: Core.Maybe Core.Int
    -- ^ The duration of the policy's cooldown period, in seconds.
  , enabled :: Core.Maybe Core.Bool
    -- ^ Indicates whether the policy is enabled (@true@ ) or disabled (@false@ ).
  , estimatedInstanceWarmup :: Core.Maybe Core.Int
    -- ^ The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.
  , metricAggregationType :: Core.Maybe Types.MetricAggregationType
    -- ^ The aggregation type for the CloudWatch metrics. The valid values are @Minimum@ , @Maximum@ , and @Average@ .
  , minAdjustmentMagnitude :: Core.Maybe Core.Int
    -- ^ The minimum value to scale by when the adjustment type is @PercentChangeInCapacity@ . 
  , minAdjustmentStep :: Core.Maybe Core.Int
    -- ^ Available for backward compatibility. Use @MinAdjustmentMagnitude@ instead.
  , policyARN :: Core.Maybe Types.ResourceName
    -- ^ The Amazon Resource Name (ARN) of the policy.
  , policyName :: Core.Maybe Types.PolicyName
    -- ^ The name of the scaling policy.
  , policyType :: Core.Maybe Types.XmlStringMaxLen64
    -- ^ One of the following policy types: 
--
--
--     * @TargetTrackingScaling@ 
--
--
--     * @StepScaling@ 
--
--
--     * @SimpleScaling@ (default)
--
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html Target tracking scaling policies> and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html Step and simple scaling policies> in the /Amazon EC2 Auto Scaling User Guide/ .
  , scalingAdjustment :: Core.Maybe Core.Int
    -- ^ The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.
  , stepAdjustments :: Core.Maybe [Types.StepAdjustment]
    -- ^ A set of adjustments that enable you to scale based on the size of the alarm breach.
  , targetTrackingConfiguration :: Core.Maybe Types.TargetTrackingConfiguration
    -- ^ A target tracking scaling policy.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ScalingPolicy' value with any optional fields omitted.
mkScalingPolicy
    :: ScalingPolicy
mkScalingPolicy
  = ScalingPolicy'{adjustmentType = Core.Nothing,
                   alarms = Core.Nothing, autoScalingGroupName = Core.Nothing,
                   cooldown = Core.Nothing, enabled = Core.Nothing,
                   estimatedInstanceWarmup = Core.Nothing,
                   metricAggregationType = Core.Nothing,
                   minAdjustmentMagnitude = Core.Nothing,
                   minAdjustmentStep = Core.Nothing, policyARN = Core.Nothing,
                   policyName = Core.Nothing, policyType = Core.Nothing,
                   scalingAdjustment = Core.Nothing, stepAdjustments = Core.Nothing,
                   targetTrackingConfiguration = Core.Nothing}

-- | Specifies how the scaling adjustment is interpreted (for example, an absolute number or a percentage). The valid values are @ChangeInCapacity@ , @ExactCapacity@ , and @PercentChangeInCapacity@ .
--
-- /Note:/ Consider using 'adjustmentType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spAdjustmentType :: Lens.Lens' ScalingPolicy (Core.Maybe Types.XmlStringMaxLen255)
spAdjustmentType = Lens.field @"adjustmentType"
{-# INLINEABLE spAdjustmentType #-}
{-# DEPRECATED adjustmentType "Use generic-lens or generic-optics with 'adjustmentType' instead"  #-}

-- | The CloudWatch alarms related to the policy.
--
-- /Note:/ Consider using 'alarms' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spAlarms :: Lens.Lens' ScalingPolicy (Core.Maybe [Types.Alarm])
spAlarms = Lens.field @"alarms"
{-# INLINEABLE spAlarms #-}
{-# DEPRECATED alarms "Use generic-lens or generic-optics with 'alarms' instead"  #-}

-- | The name of the Auto Scaling group.
--
-- /Note:/ Consider using 'autoScalingGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spAutoScalingGroupName :: Lens.Lens' ScalingPolicy (Core.Maybe Types.AutoScalingGroupName)
spAutoScalingGroupName = Lens.field @"autoScalingGroupName"
{-# INLINEABLE spAutoScalingGroupName #-}
{-# DEPRECATED autoScalingGroupName "Use generic-lens or generic-optics with 'autoScalingGroupName' instead"  #-}

-- | The duration of the policy's cooldown period, in seconds.
--
-- /Note:/ Consider using 'cooldown' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spCooldown :: Lens.Lens' ScalingPolicy (Core.Maybe Core.Int)
spCooldown = Lens.field @"cooldown"
{-# INLINEABLE spCooldown #-}
{-# DEPRECATED cooldown "Use generic-lens or generic-optics with 'cooldown' instead"  #-}

-- | Indicates whether the policy is enabled (@true@ ) or disabled (@false@ ).
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spEnabled :: Lens.Lens' ScalingPolicy (Core.Maybe Core.Bool)
spEnabled = Lens.field @"enabled"
{-# INLINEABLE spEnabled #-}
{-# DEPRECATED enabled "Use generic-lens or generic-optics with 'enabled' instead"  #-}

-- | The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics.
--
-- /Note:/ Consider using 'estimatedInstanceWarmup' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spEstimatedInstanceWarmup :: Lens.Lens' ScalingPolicy (Core.Maybe Core.Int)
spEstimatedInstanceWarmup = Lens.field @"estimatedInstanceWarmup"
{-# INLINEABLE spEstimatedInstanceWarmup #-}
{-# DEPRECATED estimatedInstanceWarmup "Use generic-lens or generic-optics with 'estimatedInstanceWarmup' instead"  #-}

-- | The aggregation type for the CloudWatch metrics. The valid values are @Minimum@ , @Maximum@ , and @Average@ .
--
-- /Note:/ Consider using 'metricAggregationType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spMetricAggregationType :: Lens.Lens' ScalingPolicy (Core.Maybe Types.MetricAggregationType)
spMetricAggregationType = Lens.field @"metricAggregationType"
{-# INLINEABLE spMetricAggregationType #-}
{-# DEPRECATED metricAggregationType "Use generic-lens or generic-optics with 'metricAggregationType' instead"  #-}

-- | The minimum value to scale by when the adjustment type is @PercentChangeInCapacity@ . 
--
-- /Note:/ Consider using 'minAdjustmentMagnitude' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spMinAdjustmentMagnitude :: Lens.Lens' ScalingPolicy (Core.Maybe Core.Int)
spMinAdjustmentMagnitude = Lens.field @"minAdjustmentMagnitude"
{-# INLINEABLE spMinAdjustmentMagnitude #-}
{-# DEPRECATED minAdjustmentMagnitude "Use generic-lens or generic-optics with 'minAdjustmentMagnitude' instead"  #-}

-- | Available for backward compatibility. Use @MinAdjustmentMagnitude@ instead.
--
-- /Note:/ Consider using 'minAdjustmentStep' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spMinAdjustmentStep :: Lens.Lens' ScalingPolicy (Core.Maybe Core.Int)
spMinAdjustmentStep = Lens.field @"minAdjustmentStep"
{-# INLINEABLE spMinAdjustmentStep #-}
{-# DEPRECATED minAdjustmentStep "Use generic-lens or generic-optics with 'minAdjustmentStep' instead"  #-}

-- | The Amazon Resource Name (ARN) of the policy.
--
-- /Note:/ Consider using 'policyARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spPolicyARN :: Lens.Lens' ScalingPolicy (Core.Maybe Types.ResourceName)
spPolicyARN = Lens.field @"policyARN"
{-# INLINEABLE spPolicyARN #-}
{-# DEPRECATED policyARN "Use generic-lens or generic-optics with 'policyARN' instead"  #-}

-- | The name of the scaling policy.
--
-- /Note:/ Consider using 'policyName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spPolicyName :: Lens.Lens' ScalingPolicy (Core.Maybe Types.PolicyName)
spPolicyName = Lens.field @"policyName"
{-# INLINEABLE spPolicyName #-}
{-# DEPRECATED policyName "Use generic-lens or generic-optics with 'policyName' instead"  #-}

-- | One of the following policy types: 
--
--
--     * @TargetTrackingScaling@ 
--
--
--     * @StepScaling@ 
--
--
--     * @SimpleScaling@ (default)
--
--
-- For more information, see <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html Target tracking scaling policies> and <https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html Step and simple scaling policies> in the /Amazon EC2 Auto Scaling User Guide/ .
--
-- /Note:/ Consider using 'policyType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spPolicyType :: Lens.Lens' ScalingPolicy (Core.Maybe Types.XmlStringMaxLen64)
spPolicyType = Lens.field @"policyType"
{-# INLINEABLE spPolicyType #-}
{-# DEPRECATED policyType "Use generic-lens or generic-optics with 'policyType' instead"  #-}

-- | The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity.
--
-- /Note:/ Consider using 'scalingAdjustment' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spScalingAdjustment :: Lens.Lens' ScalingPolicy (Core.Maybe Core.Int)
spScalingAdjustment = Lens.field @"scalingAdjustment"
{-# INLINEABLE spScalingAdjustment #-}
{-# DEPRECATED scalingAdjustment "Use generic-lens or generic-optics with 'scalingAdjustment' instead"  #-}

-- | A set of adjustments that enable you to scale based on the size of the alarm breach.
--
-- /Note:/ Consider using 'stepAdjustments' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spStepAdjustments :: Lens.Lens' ScalingPolicy (Core.Maybe [Types.StepAdjustment])
spStepAdjustments = Lens.field @"stepAdjustments"
{-# INLINEABLE spStepAdjustments #-}
{-# DEPRECATED stepAdjustments "Use generic-lens or generic-optics with 'stepAdjustments' instead"  #-}

-- | A target tracking scaling policy.
--
-- /Note:/ Consider using 'targetTrackingConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
spTargetTrackingConfiguration :: Lens.Lens' ScalingPolicy (Core.Maybe Types.TargetTrackingConfiguration)
spTargetTrackingConfiguration = Lens.field @"targetTrackingConfiguration"
{-# INLINEABLE spTargetTrackingConfiguration #-}
{-# DEPRECATED targetTrackingConfiguration "Use generic-lens or generic-optics with 'targetTrackingConfiguration' instead"  #-}

instance Core.FromXML ScalingPolicy where
        parseXML x
          = ScalingPolicy' Core.<$>
              (x Core..@? "AdjustmentType") Core.<*>
                x Core..@? "Alarms" Core..<@> Core.parseXMLList "member"
                Core.<*> x Core..@? "AutoScalingGroupName"
                Core.<*> x Core..@? "Cooldown"
                Core.<*> x Core..@? "Enabled"
                Core.<*> x Core..@? "EstimatedInstanceWarmup"
                Core.<*> x Core..@? "MetricAggregationType"
                Core.<*> x Core..@? "MinAdjustmentMagnitude"
                Core.<*> x Core..@? "MinAdjustmentStep"
                Core.<*> x Core..@? "PolicyARN"
                Core.<*> x Core..@? "PolicyName"
                Core.<*> x Core..@? "PolicyType"
                Core.<*> x Core..@? "ScalingAdjustment"
                Core.<*>
                x Core..@? "StepAdjustments" Core..<@> Core.parseXMLList "member"
                Core.<*> x Core..@? "TargetTrackingConfiguration"
