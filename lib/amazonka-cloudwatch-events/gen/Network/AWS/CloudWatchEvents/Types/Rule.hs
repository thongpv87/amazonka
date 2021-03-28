{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.Rule
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.CloudWatchEvents.Types.Rule
  ( Rule (..)
  -- * Smart constructor
  , mkRule
  -- * Lenses
  , rArn
  , rDescription
  , rEventBusName
  , rEventPattern
  , rManagedBy
  , rName
  , rRoleArn
  , rScheduleExpression
  , rState
  ) where

import qualified Network.AWS.CloudWatchEvents.Types.Arn as Types
import qualified Network.AWS.CloudWatchEvents.Types.Description as Types
import qualified Network.AWS.CloudWatchEvents.Types.EventBusName as Types
import qualified Network.AWS.CloudWatchEvents.Types.EventPattern as Types
import qualified Network.AWS.CloudWatchEvents.Types.ManagedBy as Types
import qualified Network.AWS.CloudWatchEvents.Types.Name as Types
import qualified Network.AWS.CloudWatchEvents.Types.RoleArn as Types
import qualified Network.AWS.CloudWatchEvents.Types.RuleState as Types
import qualified Network.AWS.CloudWatchEvents.Types.ScheduleExpression as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains information about a rule in Amazon EventBridge.
--
-- /See:/ 'mkRule' smart constructor.
data Rule = Rule'
  { arn :: Core.Maybe Types.Arn
    -- ^ The Amazon Resource Name (ARN) of the rule.
  , description :: Core.Maybe Types.Description
    -- ^ The description of the rule.
  , eventBusName :: Core.Maybe Types.EventBusName
    -- ^ The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
  , eventPattern :: Core.Maybe Types.EventPattern
    -- ^ The event pattern of the rule. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
  , managedBy :: Core.Maybe Types.ManagedBy
    -- ^ If the rule was created on behalf of your account by an AWS service, this field displays the principal name of the service that created the rule.
  , name :: Core.Maybe Types.Name
    -- ^ The name of the rule.
  , roleArn :: Core.Maybe Types.RoleArn
    -- ^ The Amazon Resource Name (ARN) of the role that is used for target invocation.
  , scheduleExpression :: Core.Maybe Types.ScheduleExpression
    -- ^ The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
  , state :: Core.Maybe Types.RuleState
    -- ^ The state of the rule.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Rule' value with any optional fields omitted.
mkRule
    :: Rule
mkRule
  = Rule'{arn = Core.Nothing, description = Core.Nothing,
          eventBusName = Core.Nothing, eventPattern = Core.Nothing,
          managedBy = Core.Nothing, name = Core.Nothing,
          roleArn = Core.Nothing, scheduleExpression = Core.Nothing,
          state = Core.Nothing}

-- | The Amazon Resource Name (ARN) of the rule.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rArn :: Lens.Lens' Rule (Core.Maybe Types.Arn)
rArn = Lens.field @"arn"
{-# INLINEABLE rArn #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

-- | The description of the rule.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rDescription :: Lens.Lens' Rule (Core.Maybe Types.Description)
rDescription = Lens.field @"description"
{-# INLINEABLE rDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
--
-- /Note:/ Consider using 'eventBusName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rEventBusName :: Lens.Lens' Rule (Core.Maybe Types.EventBusName)
rEventBusName = Lens.field @"eventBusName"
{-# INLINEABLE rEventBusName #-}
{-# DEPRECATED eventBusName "Use generic-lens or generic-optics with 'eventBusName' instead"  #-}

-- | The event pattern of the rule. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html Events and Event Patterns> in the /Amazon EventBridge User Guide/ .
--
-- /Note:/ Consider using 'eventPattern' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rEventPattern :: Lens.Lens' Rule (Core.Maybe Types.EventPattern)
rEventPattern = Lens.field @"eventPattern"
{-# INLINEABLE rEventPattern #-}
{-# DEPRECATED eventPattern "Use generic-lens or generic-optics with 'eventPattern' instead"  #-}

-- | If the rule was created on behalf of your account by an AWS service, this field displays the principal name of the service that created the rule.
--
-- /Note:/ Consider using 'managedBy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rManagedBy :: Lens.Lens' Rule (Core.Maybe Types.ManagedBy)
rManagedBy = Lens.field @"managedBy"
{-# INLINEABLE rManagedBy #-}
{-# DEPRECATED managedBy "Use generic-lens or generic-optics with 'managedBy' instead"  #-}

-- | The name of the rule.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rName :: Lens.Lens' Rule (Core.Maybe Types.Name)
rName = Lens.field @"name"
{-# INLINEABLE rName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The Amazon Resource Name (ARN) of the role that is used for target invocation.
--
-- /Note:/ Consider using 'roleArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rRoleArn :: Lens.Lens' Rule (Core.Maybe Types.RoleArn)
rRoleArn = Lens.field @"roleArn"
{-# INLINEABLE rRoleArn #-}
{-# DEPRECATED roleArn "Use generic-lens or generic-optics with 'roleArn' instead"  #-}

-- | The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".
--
-- /Note:/ Consider using 'scheduleExpression' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rScheduleExpression :: Lens.Lens' Rule (Core.Maybe Types.ScheduleExpression)
rScheduleExpression = Lens.field @"scheduleExpression"
{-# INLINEABLE rScheduleExpression #-}
{-# DEPRECATED scheduleExpression "Use generic-lens or generic-optics with 'scheduleExpression' instead"  #-}

-- | The state of the rule.
--
-- /Note:/ Consider using 'state' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rState :: Lens.Lens' Rule (Core.Maybe Types.RuleState)
rState = Lens.field @"state"
{-# INLINEABLE rState #-}
{-# DEPRECATED state "Use generic-lens or generic-optics with 'state' instead"  #-}

instance Core.FromJSON Rule where
        parseJSON
          = Core.withObject "Rule" Core.$
              \ x ->
                Rule' Core.<$>
                  (x Core..:? "Arn") Core.<*> x Core..:? "Description" Core.<*>
                    x Core..:? "EventBusName"
                    Core.<*> x Core..:? "EventPattern"
                    Core.<*> x Core..:? "ManagedBy"
                    Core.<*> x Core..:? "Name"
                    Core.<*> x Core..:? "RoleArn"
                    Core.<*> x Core..:? "ScheduleExpression"
                    Core.<*> x Core..:? "State"
