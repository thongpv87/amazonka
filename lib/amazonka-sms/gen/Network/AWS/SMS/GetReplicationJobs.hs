{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.GetReplicationJobs
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified replication job or all of your replication jobs.
--
-- This operation returns paginated results.
module Network.AWS.SMS.GetReplicationJobs
    (
    -- * Creating a request
      GetReplicationJobs (..)
    , mkGetReplicationJobs
    -- ** Request lenses
    , grjMaxResults
    , grjNextToken
    , grjReplicationJobId

    -- * Destructuring the response
    , GetReplicationJobsResponse (..)
    , mkGetReplicationJobsResponse
    -- ** Response lenses
    , grjrrsNextToken
    , grjrrsReplicationJobList
    , grjrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SMS.Types as Types

-- | /See:/ 'mkGetReplicationJobs' smart constructor.
data GetReplicationJobs = GetReplicationJobs'
  { maxResults :: Core.Maybe Core.Int
    -- ^ The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token for the next set of results.
  , replicationJobId :: Core.Maybe Types.ReplicationJobId
    -- ^ The ID of the replication job.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetReplicationJobs' value with any optional fields omitted.
mkGetReplicationJobs
    :: GetReplicationJobs
mkGetReplicationJobs
  = GetReplicationJobs'{maxResults = Core.Nothing,
                        nextToken = Core.Nothing, replicationJobId = Core.Nothing}

-- | The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grjMaxResults :: Lens.Lens' GetReplicationJobs (Core.Maybe Core.Int)
grjMaxResults = Lens.field @"maxResults"
{-# INLINEABLE grjMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grjNextToken :: Lens.Lens' GetReplicationJobs (Core.Maybe Types.NextToken)
grjNextToken = Lens.field @"nextToken"
{-# INLINEABLE grjNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The ID of the replication job.
--
-- /Note:/ Consider using 'replicationJobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grjReplicationJobId :: Lens.Lens' GetReplicationJobs (Core.Maybe Types.ReplicationJobId)
grjReplicationJobId = Lens.field @"replicationJobId"
{-# INLINEABLE grjReplicationJobId #-}
{-# DEPRECATED replicationJobId "Use generic-lens or generic-optics with 'replicationJobId' instead"  #-}

instance Core.ToQuery GetReplicationJobs where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetReplicationJobs where
        toHeaders GetReplicationJobs{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSServerMigrationService_V2016_10_24.GetReplicationJobs")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetReplicationJobs where
        toJSON GetReplicationJobs{..}
          = Core.object
              (Core.catMaybes
                 [("maxResults" Core..=) Core.<$> maxResults,
                  ("nextToken" Core..=) Core.<$> nextToken,
                  ("replicationJobId" Core..=) Core.<$> replicationJobId])

instance Core.AWSRequest GetReplicationJobs where
        type Rs GetReplicationJobs = GetReplicationJobsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetReplicationJobsResponse' Core.<$>
                   (x Core..:? "nextToken") Core.<*> x Core..:? "replicationJobList"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager GetReplicationJobs where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"replicationJobList" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkGetReplicationJobsResponse' smart constructor.
data GetReplicationJobsResponse = GetReplicationJobsResponse'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ The token required to retrieve the next set of results. This value is null when there are no more results to return.
  , replicationJobList :: Core.Maybe [Types.ReplicationJob]
    -- ^ Information about the replication jobs.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'GetReplicationJobsResponse' value with any optional fields omitted.
mkGetReplicationJobsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetReplicationJobsResponse
mkGetReplicationJobsResponse responseStatus
  = GetReplicationJobsResponse'{nextToken = Core.Nothing,
                                replicationJobList = Core.Nothing, responseStatus}

-- | The token required to retrieve the next set of results. This value is null when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grjrrsNextToken :: Lens.Lens' GetReplicationJobsResponse (Core.Maybe Types.NextToken)
grjrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE grjrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | Information about the replication jobs.
--
-- /Note:/ Consider using 'replicationJobList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grjrrsReplicationJobList :: Lens.Lens' GetReplicationJobsResponse (Core.Maybe [Types.ReplicationJob])
grjrrsReplicationJobList = Lens.field @"replicationJobList"
{-# INLINEABLE grjrrsReplicationJobList #-}
{-# DEPRECATED replicationJobList "Use generic-lens or generic-optics with 'replicationJobList' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grjrrsResponseStatus :: Lens.Lens' GetReplicationJobsResponse Core.Int
grjrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE grjrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
