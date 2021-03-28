{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeImportSnapshotTasks
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your import snapshot tasks.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeImportSnapshotTasks
    (
    -- * Creating a request
      DescribeImportSnapshotTasks (..)
    , mkDescribeImportSnapshotTasks
    -- ** Request lenses
    , distDryRun
    , distFilters
    , distImportTaskIds
    , distMaxResults
    , distNextToken

    -- * Destructuring the response
    , DescribeImportSnapshotTasksResponse (..)
    , mkDescribeImportSnapshotTasksResponse
    -- ** Response lenses
    , distrrsImportSnapshotTasks
    , distrrsNextToken
    , distrrsResponseStatus
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeImportSnapshotTasks' smart constructor.
data DescribeImportSnapshotTasks = DescribeImportSnapshotTasks'
  { dryRun :: Core.Maybe Core.Bool
    -- ^ Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
  , filters :: Core.Maybe [Types.Filter]
    -- ^ The filters.
  , importTaskIds :: Core.Maybe [Types.ImportSnapshotTaskId]
    -- ^ A list of import snapshot task IDs.
  , maxResults :: Core.Maybe Core.Int
    -- ^ The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value.
  , nextToken :: Core.Maybe Core.Text
    -- ^ A token that indicates the next page of results.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeImportSnapshotTasks' value with any optional fields omitted.
mkDescribeImportSnapshotTasks
    :: DescribeImportSnapshotTasks
mkDescribeImportSnapshotTasks
  = DescribeImportSnapshotTasks'{dryRun = Core.Nothing,
                                 filters = Core.Nothing, importTaskIds = Core.Nothing,
                                 maxResults = Core.Nothing, nextToken = Core.Nothing}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
distDryRun :: Lens.Lens' DescribeImportSnapshotTasks (Core.Maybe Core.Bool)
distDryRun = Lens.field @"dryRun"
{-# INLINEABLE distDryRun #-}
{-# DEPRECATED dryRun "Use generic-lens or generic-optics with 'dryRun' instead"  #-}

-- | The filters.
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
distFilters :: Lens.Lens' DescribeImportSnapshotTasks (Core.Maybe [Types.Filter])
distFilters = Lens.field @"filters"
{-# INLINEABLE distFilters #-}
{-# DEPRECATED filters "Use generic-lens or generic-optics with 'filters' instead"  #-}

-- | A list of import snapshot task IDs.
--
-- /Note:/ Consider using 'importTaskIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
distImportTaskIds :: Lens.Lens' DescribeImportSnapshotTasks (Core.Maybe [Types.ImportSnapshotTaskId])
distImportTaskIds = Lens.field @"importTaskIds"
{-# INLINEABLE distImportTaskIds #-}
{-# DEPRECATED importTaskIds "Use generic-lens or generic-optics with 'importTaskIds' instead"  #-}

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
distMaxResults :: Lens.Lens' DescribeImportSnapshotTasks (Core.Maybe Core.Int)
distMaxResults = Lens.field @"maxResults"
{-# INLINEABLE distMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | A token that indicates the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
distNextToken :: Lens.Lens' DescribeImportSnapshotTasks (Core.Maybe Core.Text)
distNextToken = Lens.field @"nextToken"
{-# INLINEABLE distNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery DescribeImportSnapshotTasks where
        toQuery DescribeImportSnapshotTasks{..}
          = Core.toQueryPair "Action"
              ("DescribeImportSnapshotTasks" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "DryRun") dryRun
              Core.<> Core.maybe Core.mempty (Core.toQueryList "Filters") filters
              Core.<>
              Core.maybe Core.mempty (Core.toQueryList "ImportTaskId")
                importTaskIds
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxResults") maxResults
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "NextToken") nextToken

instance Core.ToHeaders DescribeImportSnapshotTasks where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeImportSnapshotTasks where
        type Rs DescribeImportSnapshotTasks =
             DescribeImportSnapshotTasksResponse
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
          = Response.receiveXML
              (\ s h x ->
                 DescribeImportSnapshotTasksResponse' Core.<$>
                   (x Core..@? "importSnapshotTaskSet" Core..<@>
                      Core.parseXMLList "item")
                     Core.<*> x Core..@? "nextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeImportSnapshotTasks where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"importSnapshotTasks" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkDescribeImportSnapshotTasksResponse' smart constructor.
data DescribeImportSnapshotTasksResponse = DescribeImportSnapshotTasksResponse'
  { importSnapshotTasks :: Core.Maybe [Types.ImportSnapshotTask]
    -- ^ A list of zero or more import snapshot tasks that are currently active or were completed or canceled in the previous 7 days.
  , nextToken :: Core.Maybe Core.Text
    -- ^ The token to use to get the next page of results. This value is @null@ when there are no more results to return.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeImportSnapshotTasksResponse' value with any optional fields omitted.
mkDescribeImportSnapshotTasksResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeImportSnapshotTasksResponse
mkDescribeImportSnapshotTasksResponse responseStatus
  = DescribeImportSnapshotTasksResponse'{importSnapshotTasks =
                                           Core.Nothing,
                                         nextToken = Core.Nothing, responseStatus}

-- | A list of zero or more import snapshot tasks that are currently active or were completed or canceled in the previous 7 days.
--
-- /Note:/ Consider using 'importSnapshotTasks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
distrrsImportSnapshotTasks :: Lens.Lens' DescribeImportSnapshotTasksResponse (Core.Maybe [Types.ImportSnapshotTask])
distrrsImportSnapshotTasks = Lens.field @"importSnapshotTasks"
{-# INLINEABLE distrrsImportSnapshotTasks #-}
{-# DEPRECATED importSnapshotTasks "Use generic-lens or generic-optics with 'importSnapshotTasks' instead"  #-}

-- | The token to use to get the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
distrrsNextToken :: Lens.Lens' DescribeImportSnapshotTasksResponse (Core.Maybe Core.Text)
distrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE distrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
distrrsResponseStatus :: Lens.Lens' DescribeImportSnapshotTasksResponse Core.Int
distrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE distrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
