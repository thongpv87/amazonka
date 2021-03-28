{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.ScheduleActivityTaskFailedEventAttributes
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SWF.Types.ScheduleActivityTaskFailedEventAttributes
  ( ScheduleActivityTaskFailedEventAttributes (..)
  -- * Smart constructor
  , mkScheduleActivityTaskFailedEventAttributes
  -- * Lenses
  , satfeaActivityType
  , satfeaActivityId
  , satfeaCause
  , satfeaDecisionTaskCompletedEventId
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SWF.Types.ActivityId as Types
import qualified Network.AWS.SWF.Types.ActivityType as Types
import qualified Network.AWS.SWF.Types.ScheduleActivityTaskFailedCause as Types

-- | Provides the details of the @ScheduleActivityTaskFailed@ event.
--
-- /See:/ 'mkScheduleActivityTaskFailedEventAttributes' smart constructor.
data ScheduleActivityTaskFailedEventAttributes = ScheduleActivityTaskFailedEventAttributes'
  { activityType :: Types.ActivityType
    -- ^ The activity type provided in the @ScheduleActivityTask@ decision that failed.
  , activityId :: Types.ActivityId
    -- ^ The activityId provided in the @ScheduleActivityTask@ decision that failed.
  , cause :: Types.ScheduleActivityTaskFailedCause
    -- ^ The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
  , decisionTaskCompletedEventId :: Core.Integer
    -- ^ The ID of the @DecisionTaskCompleted@ event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ScheduleActivityTaskFailedEventAttributes' value with any optional fields omitted.
mkScheduleActivityTaskFailedEventAttributes
    :: Types.ActivityType -- ^ 'activityType'
    -> Types.ActivityId -- ^ 'activityId'
    -> Types.ScheduleActivityTaskFailedCause -- ^ 'cause'
    -> Core.Integer -- ^ 'decisionTaskCompletedEventId'
    -> ScheduleActivityTaskFailedEventAttributes
mkScheduleActivityTaskFailedEventAttributes activityType activityId
  cause decisionTaskCompletedEventId
  = ScheduleActivityTaskFailedEventAttributes'{activityType,
                                               activityId, cause, decisionTaskCompletedEventId}

-- | The activity type provided in the @ScheduleActivityTask@ decision that failed.
--
-- /Note:/ Consider using 'activityType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
satfeaActivityType :: Lens.Lens' ScheduleActivityTaskFailedEventAttributes Types.ActivityType
satfeaActivityType = Lens.field @"activityType"
{-# INLINEABLE satfeaActivityType #-}
{-# DEPRECATED activityType "Use generic-lens or generic-optics with 'activityType' instead"  #-}

-- | The activityId provided in the @ScheduleActivityTask@ decision that failed.
--
-- /Note:/ Consider using 'activityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
satfeaActivityId :: Lens.Lens' ScheduleActivityTaskFailedEventAttributes Types.ActivityId
satfeaActivityId = Lens.field @"activityId"
{-# INLINEABLE satfeaActivityId #-}
{-# DEPRECATED activityId "Use generic-lens or generic-optics with 'activityId' instead"  #-}

-- | The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.
--
-- /Note:/ Consider using 'cause' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
satfeaCause :: Lens.Lens' ScheduleActivityTaskFailedEventAttributes Types.ScheduleActivityTaskFailedCause
satfeaCause = Lens.field @"cause"
{-# INLINEABLE satfeaCause #-}
{-# DEPRECATED cause "Use generic-lens or generic-optics with 'cause' instead"  #-}

-- | The ID of the @DecisionTaskCompleted@ event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.
--
-- /Note:/ Consider using 'decisionTaskCompletedEventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
satfeaDecisionTaskCompletedEventId :: Lens.Lens' ScheduleActivityTaskFailedEventAttributes Core.Integer
satfeaDecisionTaskCompletedEventId = Lens.field @"decisionTaskCompletedEventId"
{-# INLINEABLE satfeaDecisionTaskCompletedEventId #-}
{-# DEPRECATED decisionTaskCompletedEventId "Use generic-lens or generic-optics with 'decisionTaskCompletedEventId' instead"  #-}

instance Core.FromJSON ScheduleActivityTaskFailedEventAttributes
         where
        parseJSON
          = Core.withObject "ScheduleActivityTaskFailedEventAttributes"
              Core.$
              \ x ->
                ScheduleActivityTaskFailedEventAttributes' Core.<$>
                  (x Core..: "activityType") Core.<*> x Core..: "activityId" Core.<*>
                    x Core..: "cause"
                    Core.<*> x Core..: "decisionTaskCompletedEventId"
