{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.ListEventSubscriptions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see 'SubscribeToEvent' and 'UnsubscribeFromEvent' .
--
-- This operation returns paginated results.
module Network.AWS.Inspector.ListEventSubscriptions
    (
    -- * Creating a request
      ListEventSubscriptions (..)
    , mkListEventSubscriptions
    -- ** Request lenses
    , lesMaxResults
    , lesNextToken
    , lesResourceArn

    -- * Destructuring the response
    , ListEventSubscriptionsResponse (..)
    , mkListEventSubscriptionsResponse
    -- ** Response lenses
    , lesrrsSubscriptions
    , lesrrsNextToken
    , lesrrsResponseStatus
    ) where

import qualified Network.AWS.Inspector.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListEventSubscriptions' smart constructor.
data ListEventSubscriptions = ListEventSubscriptions'
  { maxResults :: Core.Maybe Core.Int
    -- ^ You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
  , nextToken :: Core.Maybe Types.PaginationToken
    -- ^ You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListEventSubscriptions__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
  , resourceArn :: Core.Maybe Types.ResourceArn
    -- ^ The ARN of the assessment template for which you want to list the existing event subscriptions.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListEventSubscriptions' value with any optional fields omitted.
mkListEventSubscriptions
    :: ListEventSubscriptions
mkListEventSubscriptions
  = ListEventSubscriptions'{maxResults = Core.Nothing,
                            nextToken = Core.Nothing, resourceArn = Core.Nothing}

-- | You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lesMaxResults :: Lens.Lens' ListEventSubscriptions (Core.Maybe Core.Int)
lesMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lesMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the __ListEventSubscriptions__ action. Subsequent calls to the action fill __nextToken__ in the request with the value of __NextToken__ from the previous response to continue listing data.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lesNextToken :: Lens.Lens' ListEventSubscriptions (Core.Maybe Types.PaginationToken)
lesNextToken = Lens.field @"nextToken"
{-# INLINEABLE lesNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The ARN of the assessment template for which you want to list the existing event subscriptions.
--
-- /Note:/ Consider using 'resourceArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lesResourceArn :: Lens.Lens' ListEventSubscriptions (Core.Maybe Types.ResourceArn)
lesResourceArn = Lens.field @"resourceArn"
{-# INLINEABLE lesResourceArn #-}
{-# DEPRECATED resourceArn "Use generic-lens or generic-optics with 'resourceArn' instead"  #-}

instance Core.ToQuery ListEventSubscriptions where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListEventSubscriptions where
        toHeaders ListEventSubscriptions{..}
          = Core.pure
              ("X-Amz-Target", "InspectorService.ListEventSubscriptions")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListEventSubscriptions where
        toJSON ListEventSubscriptions{..}
          = Core.object
              (Core.catMaybes
                 [("maxResults" Core..=) Core.<$> maxResults,
                  ("nextToken" Core..=) Core.<$> nextToken,
                  ("resourceArn" Core..=) Core.<$> resourceArn])

instance Core.AWSRequest ListEventSubscriptions where
        type Rs ListEventSubscriptions = ListEventSubscriptionsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListEventSubscriptionsResponse' Core.<$>
                   (x Core..:? "subscriptions" Core..!= Core.mempty) Core.<*>
                     x Core..:? "nextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListEventSubscriptions where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop (rs Lens.^. Lens.field @"subscriptions") =
            Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListEventSubscriptionsResponse' smart constructor.
data ListEventSubscriptionsResponse = ListEventSubscriptionsResponse'
  { subscriptions :: [Types.Subscription]
    -- ^ Details of the returned event subscriptions.
  , nextToken :: Core.Maybe Types.PaginationToken
    -- ^ When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ListEventSubscriptionsResponse' value with any optional fields omitted.
mkListEventSubscriptionsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListEventSubscriptionsResponse
mkListEventSubscriptionsResponse responseStatus
  = ListEventSubscriptionsResponse'{subscriptions = Core.mempty,
                                    nextToken = Core.Nothing, responseStatus}

-- | Details of the returned event subscriptions.
--
-- /Note:/ Consider using 'subscriptions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lesrrsSubscriptions :: Lens.Lens' ListEventSubscriptionsResponse [Types.Subscription]
lesrrsSubscriptions = Lens.field @"subscriptions"
{-# INLINEABLE lesrrsSubscriptions #-}
{-# DEPRECATED subscriptions "Use generic-lens or generic-optics with 'subscriptions' instead"  #-}

-- | When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the __nextToken__ parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lesrrsNextToken :: Lens.Lens' ListEventSubscriptionsResponse (Core.Maybe Types.PaginationToken)
lesrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lesrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lesrrsResponseStatus :: Lens.Lens' ListEventSubscriptionsResponse Core.Int
lesrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lesrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
