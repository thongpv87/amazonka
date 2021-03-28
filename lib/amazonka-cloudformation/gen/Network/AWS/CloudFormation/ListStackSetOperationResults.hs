{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.ListStackSetOperationResults
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns summary information about the results of a stack set operation. 
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.ListStackSetOperationResults
    (
    -- * Creating a request
      ListStackSetOperationResults (..)
    , mkListStackSetOperationResults
    -- ** Request lenses
    , lssorStackSetName
    , lssorOperationId
    , lssorMaxResults
    , lssorNextToken

    -- * Destructuring the response
    , ListStackSetOperationResultsResponse (..)
    , mkListStackSetOperationResultsResponse
    -- ** Response lenses
    , lssorrrsNextToken
    , lssorrrsSummaries
    , lssorrrsResponseStatus
    ) where

import qualified Network.AWS.CloudFormation.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListStackSetOperationResults' smart constructor.
data ListStackSetOperationResults = ListStackSetOperationResults'
  { stackSetName :: Types.StackSetName
    -- ^ The name or unique ID of the stack set that you want to get operation results for.
  , operationId :: Types.OperationId
    -- ^ The ID of the stack set operation.
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ If the previous request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackSetOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListStackSetOperationResults' value with any optional fields omitted.
mkListStackSetOperationResults
    :: Types.StackSetName -- ^ 'stackSetName'
    -> Types.OperationId -- ^ 'operationId'
    -> ListStackSetOperationResults
mkListStackSetOperationResults stackSetName operationId
  = ListStackSetOperationResults'{stackSetName, operationId,
                                  maxResults = Core.Nothing, nextToken = Core.Nothing}

-- | The name or unique ID of the stack set that you want to get operation results for.
--
-- /Note:/ Consider using 'stackSetName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lssorStackSetName :: Lens.Lens' ListStackSetOperationResults Types.StackSetName
lssorStackSetName = Lens.field @"stackSetName"
{-# INLINEABLE lssorStackSetName #-}
{-# DEPRECATED stackSetName "Use generic-lens or generic-optics with 'stackSetName' instead"  #-}

-- | The ID of the stack set operation.
--
-- /Note:/ Consider using 'operationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lssorOperationId :: Lens.Lens' ListStackSetOperationResults Types.OperationId
lssorOperationId = Lens.field @"operationId"
{-# INLINEABLE lssorOperationId #-}
{-# DEPRECATED operationId "Use generic-lens or generic-optics with 'operationId' instead"  #-}

-- | The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a @NextToken@ value that you can assign to the @NextToken@ request parameter to get the next set of results.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lssorMaxResults :: Lens.Lens' ListStackSetOperationResults (Core.Maybe Core.Natural)
lssorMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lssorMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | If the previous request didn't return all of the remaining results, the response object's @NextToken@ parameter value is set to a token. To retrieve the next set of results, call @ListStackSetOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, the previous response object's @NextToken@ parameter is set to @null@ .
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lssorNextToken :: Lens.Lens' ListStackSetOperationResults (Core.Maybe Types.NextToken)
lssorNextToken = Lens.field @"nextToken"
{-# INLINEABLE lssorNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListStackSetOperationResults where
        toQuery ListStackSetOperationResults{..}
          = Core.toQueryPair "Action"
              ("ListStackSetOperationResults" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2010-05-15" :: Core.Text)
              Core.<> Core.toQueryPair "StackSetName" stackSetName
              Core.<> Core.toQueryPair "OperationId" operationId
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxResults") maxResults
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "NextToken") nextToken

instance Core.ToHeaders ListStackSetOperationResults where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest ListStackSetOperationResults where
        type Rs ListStackSetOperationResults =
             ListStackSetOperationResultsResponse
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
          = Response.receiveXMLWrapper "ListStackSetOperationResultsResult"
              (\ s h x ->
                 ListStackSetOperationResultsResponse' Core.<$>
                   (x Core..@? "NextToken") Core.<*>
                     x Core..@? "Summaries" Core..<@> Core.parseXMLList "member"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListStackSetOperationResults where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop (rs Lens.^? Lens.field @"summaries" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListStackSetOperationResultsResponse' smart constructor.
data ListStackSetOperationResultsResponse = ListStackSetOperationResultsResponse'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ If the request doesn't return all results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, @NextToken@ is set to @null@ .
  , summaries :: Core.Maybe [Types.StackSetOperationResultSummary]
    -- ^ A list of @StackSetOperationResultSummary@ structures that contain information about the specified operation results, for accounts and Regions that are included in the operation.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListStackSetOperationResultsResponse' value with any optional fields omitted.
mkListStackSetOperationResultsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListStackSetOperationResultsResponse
mkListStackSetOperationResultsResponse responseStatus
  = ListStackSetOperationResultsResponse'{nextToken = Core.Nothing,
                                          summaries = Core.Nothing, responseStatus}

-- | If the request doesn't return all results, @NextToken@ is set to a token. To retrieve the next set of results, call @ListOperationResults@ again and assign that token to the request object's @NextToken@ parameter. If there are no remaining results, @NextToken@ is set to @null@ .
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lssorrrsNextToken :: Lens.Lens' ListStackSetOperationResultsResponse (Core.Maybe Types.NextToken)
lssorrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lssorrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | A list of @StackSetOperationResultSummary@ structures that contain information about the specified operation results, for accounts and Regions that are included in the operation.
--
-- /Note:/ Consider using 'summaries' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lssorrrsSummaries :: Lens.Lens' ListStackSetOperationResultsResponse (Core.Maybe [Types.StackSetOperationResultSummary])
lssorrrsSummaries = Lens.field @"summaries"
{-# INLINEABLE lssorrrsSummaries #-}
{-# DEPRECATED summaries "Use generic-lens or generic-optics with 'summaries' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lssorrrsResponseStatus :: Lens.Lens' ListStackSetOperationResultsResponse Core.Int
lssorrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lssorrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
