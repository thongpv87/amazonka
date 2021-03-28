{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.ModifyEventSubscription
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing RDS event notification subscription. You can't modify the source identifiers using this call. To change source identifiers for a subscription, use the @AddSourceIdentifierToSubscription@ and @RemoveSourceIdentifierFromSubscription@ calls.
--
-- You can see a list of the event categories for a given source type (@SourceType@ ) in <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html Events> in the /Amazon RDS User Guide/ or by using the @DescribeEventCategories@ operation.
module Network.AWS.RDS.ModifyEventSubscription
    (
    -- * Creating a request
      ModifyEventSubscription (..)
    , mkModifyEventSubscription
    -- ** Request lenses
    , mesSubscriptionName
    , mesEnabled
    , mesEventCategories
    , mesSnsTopicArn
    , mesSourceType

    -- * Destructuring the response
    , ModifyEventSubscriptionResponse (..)
    , mkModifyEventSubscriptionResponse
    -- ** Response lenses
    , mesrrsEventSubscription
    , mesrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.RDS.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | 
--
-- /See:/ 'mkModifyEventSubscription' smart constructor.
data ModifyEventSubscription = ModifyEventSubscription'
  { subscriptionName :: Core.Text
    -- ^ The name of the RDS event notification subscription.
  , enabled :: Core.Maybe Core.Bool
    -- ^ A value that indicates whether to activate the subscription. 
  , eventCategories :: Core.Maybe [Core.Text]
    -- ^ A list of event categories for a source type (@SourceType@ ) that you want to subscribe to. You can see a list of the categories for a given source type in <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html Events> in the /Amazon RDS User Guide/ or by using the @DescribeEventCategories@ operation. 
  , snsTopicArn :: Core.Maybe Core.Text
    -- ^ The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
  , sourceType :: Core.Maybe Core.Text
    -- ^ The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. If this value isn't specified, all events are returned.
--
-- Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ | @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@ 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ModifyEventSubscription' value with any optional fields omitted.
mkModifyEventSubscription
    :: Core.Text -- ^ 'subscriptionName'
    -> ModifyEventSubscription
mkModifyEventSubscription subscriptionName
  = ModifyEventSubscription'{subscriptionName,
                             enabled = Core.Nothing, eventCategories = Core.Nothing,
                             snsTopicArn = Core.Nothing, sourceType = Core.Nothing}

-- | The name of the RDS event notification subscription.
--
-- /Note:/ Consider using 'subscriptionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesSubscriptionName :: Lens.Lens' ModifyEventSubscription Core.Text
mesSubscriptionName = Lens.field @"subscriptionName"
{-# INLINEABLE mesSubscriptionName #-}
{-# DEPRECATED subscriptionName "Use generic-lens or generic-optics with 'subscriptionName' instead"  #-}

-- | A value that indicates whether to activate the subscription. 
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesEnabled :: Lens.Lens' ModifyEventSubscription (Core.Maybe Core.Bool)
mesEnabled = Lens.field @"enabled"
{-# INLINEABLE mesEnabled #-}
{-# DEPRECATED enabled "Use generic-lens or generic-optics with 'enabled' instead"  #-}

-- | A list of event categories for a source type (@SourceType@ ) that you want to subscribe to. You can see a list of the categories for a given source type in <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html Events> in the /Amazon RDS User Guide/ or by using the @DescribeEventCategories@ operation. 
--
-- /Note:/ Consider using 'eventCategories' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesEventCategories :: Lens.Lens' ModifyEventSubscription (Core.Maybe [Core.Text])
mesEventCategories = Lens.field @"eventCategories"
{-# INLINEABLE mesEventCategories #-}
{-# DEPRECATED eventCategories "Use generic-lens or generic-optics with 'eventCategories' instead"  #-}

-- | The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.
--
-- /Note:/ Consider using 'snsTopicArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesSnsTopicArn :: Lens.Lens' ModifyEventSubscription (Core.Maybe Core.Text)
mesSnsTopicArn = Lens.field @"snsTopicArn"
{-# INLINEABLE mesSnsTopicArn #-}
{-# DEPRECATED snsTopicArn "Use generic-lens or generic-optics with 'snsTopicArn' instead"  #-}

-- | The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. If this value isn't specified, all events are returned.
--
-- Valid values: @db-instance@ | @db-cluster@ | @db-parameter-group@ | @db-security-group@ | @db-snapshot@ | @db-cluster-snapshot@ 
--
-- /Note:/ Consider using 'sourceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesSourceType :: Lens.Lens' ModifyEventSubscription (Core.Maybe Core.Text)
mesSourceType = Lens.field @"sourceType"
{-# INLINEABLE mesSourceType #-}
{-# DEPRECATED sourceType "Use generic-lens or generic-optics with 'sourceType' instead"  #-}

instance Core.ToQuery ModifyEventSubscription where
        toQuery ModifyEventSubscription{..}
          = Core.toQueryPair "Action"
              ("ModifyEventSubscription" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2014-10-31" :: Core.Text)
              Core.<> Core.toQueryPair "SubscriptionName" subscriptionName
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "Enabled") enabled
              Core.<>
              Core.toQueryPair "EventCategories"
                (Core.maybe Core.mempty (Core.toQueryList "EventCategory")
                   eventCategories)
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "SnsTopicArn") snsTopicArn
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "SourceType") sourceType

instance Core.ToHeaders ModifyEventSubscription where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest ModifyEventSubscription where
        type Rs ModifyEventSubscription = ModifyEventSubscriptionResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.mempty,
                         Core._rqHeaders =
                           Core.pure
                             ("Content-Type",
                              "application/x-www-form-urlencoded; charset=utf-8")
                             Core.<> Core.toHeaders x,
                         Core._rqBody = Core.toFormBody (Core.toQuery x)}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXMLWrapper "ModifyEventSubscriptionResult"
              (\ s h x ->
                 ModifyEventSubscriptionResponse' Core.<$>
                   (x Core..@? "EventSubscription") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkModifyEventSubscriptionResponse' smart constructor.
data ModifyEventSubscriptionResponse = ModifyEventSubscriptionResponse'
  { eventSubscription :: Core.Maybe Types.EventSubscription
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ModifyEventSubscriptionResponse' value with any optional fields omitted.
mkModifyEventSubscriptionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ModifyEventSubscriptionResponse
mkModifyEventSubscriptionResponse responseStatus
  = ModifyEventSubscriptionResponse'{eventSubscription =
                                       Core.Nothing,
                                     responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'eventSubscription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesrrsEventSubscription :: Lens.Lens' ModifyEventSubscriptionResponse (Core.Maybe Types.EventSubscription)
mesrrsEventSubscription = Lens.field @"eventSubscription"
{-# INLINEABLE mesrrsEventSubscription #-}
{-# DEPRECATED eventSubscription "Use generic-lens or generic-optics with 'eventSubscription' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
mesrrsResponseStatus :: Lens.Lens' ModifyEventSubscriptionResponse Core.Int
mesrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE mesrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
