{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.ListServices
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the services that are running in a specified cluster.
--
-- This operation returns paginated results.
module Network.AWS.ECS.ListServices
    (
    -- * Creating a request
      ListServices (..)
    , mkListServices
    -- ** Request lenses
    , lsCluster
    , lsLaunchType
    , lsMaxResults
    , lsNextToken
    , lsSchedulingStrategy

    -- * Destructuring the response
    , ListServicesResponse (..)
    , mkListServicesResponse
    -- ** Response lenses
    , lsrrsNextToken
    , lsrrsServiceArns
    , lsrrsResponseStatus
    ) where

import qualified Network.AWS.ECS.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListServices' smart constructor.
data ListServices = ListServices'
  { cluster :: Core.Maybe Core.Text
    -- ^ The short name or full Amazon Resource Name (ARN) of the cluster that hosts the services to list. If you do not specify a cluster, the default cluster is assumed.
  , launchType :: Core.Maybe Types.LaunchType
    -- ^ The launch type for the services to list.
  , maxResults :: Core.Maybe Core.Int
    -- ^ The maximum number of service results returned by @ListServices@ in paginated output. When this parameter is used, @ListServices@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListServices@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListServices@ returns up to 10 results and a @nextToken@ value if applicable.
  , nextToken :: Core.Maybe Core.Text
    -- ^ The @nextToken@ value returned from a @ListServices@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
  , schedulingStrategy :: Core.Maybe Types.SchedulingStrategy
    -- ^ The scheduling strategy for services to list.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListServices' value with any optional fields omitted.
mkListServices
    :: ListServices
mkListServices
  = ListServices'{cluster = Core.Nothing, launchType = Core.Nothing,
                  maxResults = Core.Nothing, nextToken = Core.Nothing,
                  schedulingStrategy = Core.Nothing}

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the services to list. If you do not specify a cluster, the default cluster is assumed.
--
-- /Note:/ Consider using 'cluster' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsCluster :: Lens.Lens' ListServices (Core.Maybe Core.Text)
lsCluster = Lens.field @"cluster"
{-# INLINEABLE lsCluster #-}
{-# DEPRECATED cluster "Use generic-lens or generic-optics with 'cluster' instead"  #-}

-- | The launch type for the services to list.
--
-- /Note:/ Consider using 'launchType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsLaunchType :: Lens.Lens' ListServices (Core.Maybe Types.LaunchType)
lsLaunchType = Lens.field @"launchType"
{-# INLINEABLE lsLaunchType #-}
{-# DEPRECATED launchType "Use generic-lens or generic-optics with 'launchType' instead"  #-}

-- | The maximum number of service results returned by @ListServices@ in paginated output. When this parameter is used, @ListServices@ only returns @maxResults@ results in a single page along with a @nextToken@ response element. The remaining results of the initial request can be seen by sending another @ListServices@ request with the returned @nextToken@ value. This value can be between 1 and 100. If this parameter is not used, then @ListServices@ returns up to 10 results and a @nextToken@ value if applicable.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsMaxResults :: Lens.Lens' ListServices (Core.Maybe Core.Int)
lsMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lsMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The @nextToken@ value returned from a @ListServices@ request indicating that more results are available to fulfill the request and further calls will be needed. If @maxResults@ was provided, it is possible the number of results to be fewer than @maxResults@ .
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsNextToken :: Lens.Lens' ListServices (Core.Maybe Core.Text)
lsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The scheduling strategy for services to list.
--
-- /Note:/ Consider using 'schedulingStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsSchedulingStrategy :: Lens.Lens' ListServices (Core.Maybe Types.SchedulingStrategy)
lsSchedulingStrategy = Lens.field @"schedulingStrategy"
{-# INLINEABLE lsSchedulingStrategy #-}
{-# DEPRECATED schedulingStrategy "Use generic-lens or generic-optics with 'schedulingStrategy' instead"  #-}

instance Core.ToQuery ListServices where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListServices where
        toHeaders ListServices{..}
          = Core.pure
              ("X-Amz-Target", "AmazonEC2ContainerServiceV20141113.ListServices")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListServices where
        toJSON ListServices{..}
          = Core.object
              (Core.catMaybes
                 [("cluster" Core..=) Core.<$> cluster,
                  ("launchType" Core..=) Core.<$> launchType,
                  ("maxResults" Core..=) Core.<$> maxResults,
                  ("nextToken" Core..=) Core.<$> nextToken,
                  ("schedulingStrategy" Core..=) Core.<$> schedulingStrategy])

instance Core.AWSRequest ListServices where
        type Rs ListServices = ListServicesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListServicesResponse' Core.<$>
                   (x Core..:? "nextToken") Core.<*> x Core..:? "serviceArns" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListServices where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"serviceArns" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListServicesResponse' smart constructor.
data ListServicesResponse = ListServicesResponse'
  { nextToken :: Core.Maybe Core.Text
    -- ^ The @nextToken@ value to include in a future @ListServices@ request. When the results of a @ListServices@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
  , serviceArns :: Core.Maybe [Core.Text]
    -- ^ The list of full ARN entries for each service associated with the specified cluster.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListServicesResponse' value with any optional fields omitted.
mkListServicesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListServicesResponse
mkListServicesResponse responseStatus
  = ListServicesResponse'{nextToken = Core.Nothing,
                          serviceArns = Core.Nothing, responseStatus}

-- | The @nextToken@ value to include in a future @ListServices@ request. When the results of a @ListServices@ request exceed @maxResults@ , this value can be used to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsrrsNextToken :: Lens.Lens' ListServicesResponse (Core.Maybe Core.Text)
lsrrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lsrrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The list of full ARN entries for each service associated with the specified cluster.
--
-- /Note:/ Consider using 'serviceArns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsrrsServiceArns :: Lens.Lens' ListServicesResponse (Core.Maybe [Core.Text])
lsrrsServiceArns = Lens.field @"serviceArns"
{-# INLINEABLE lsrrsServiceArns #-}
{-# DEPRECATED serviceArns "Use generic-lens or generic-optics with 'serviceArns' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsrrsResponseStatus :: Lens.Lens' ListServicesResponse Core.Int
lsrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lsrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
