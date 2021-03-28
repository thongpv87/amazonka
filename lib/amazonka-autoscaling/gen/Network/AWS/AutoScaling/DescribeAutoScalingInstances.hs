{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.DescribeAutoScalingInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more Auto Scaling instances.
--
-- This operation returns paginated results.
module Network.AWS.AutoScaling.DescribeAutoScalingInstances
    (
    -- * Creating a request
      DescribeAutoScalingInstances (..)
    , mkDescribeAutoScalingInstances
    -- ** Request lenses
    , dasiInstanceIds
    , dasiMaxRecords
    , dasiNextToken

    -- * Destructuring the response
    , DescribeAutoScalingInstancesResponse (..)
    , mkDescribeAutoScalingInstancesResponse
    -- ** Response lenses
    , dasirrsAutoScalingInstances
    , dasirrsNextToken
    , dasirrsResponseStatus
    ) where

import qualified Network.AWS.AutoScaling.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeAutoScalingInstances' smart constructor.
data DescribeAutoScalingInstances = DescribeAutoScalingInstances'
  { instanceIds :: Core.Maybe [Types.XmlStringMaxLen19]
    -- ^ The IDs of the instances. You can specify up to @MaxRecords@ IDs. If you omit this parameter, all Auto Scaling instances are described. If you specify an ID that does not exist, it is ignored with no error.
  , maxRecords :: Core.Maybe Core.Int
    -- ^ The maximum number of items to return with this call. The default value is @50@ and the maximum value is @50@ .
  , nextToken :: Core.Maybe Types.XmlString
    -- ^ The token for the next set of items to return. (You received this token from a previous call.)
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeAutoScalingInstances' value with any optional fields omitted.
mkDescribeAutoScalingInstances
    :: DescribeAutoScalingInstances
mkDescribeAutoScalingInstances
  = DescribeAutoScalingInstances'{instanceIds = Core.Nothing,
                                  maxRecords = Core.Nothing, nextToken = Core.Nothing}

-- | The IDs of the instances. You can specify up to @MaxRecords@ IDs. If you omit this parameter, all Auto Scaling instances are described. If you specify an ID that does not exist, it is ignored with no error.
--
-- /Note:/ Consider using 'instanceIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasiInstanceIds :: Lens.Lens' DescribeAutoScalingInstances (Core.Maybe [Types.XmlStringMaxLen19])
dasiInstanceIds = Lens.field @"instanceIds"
{-# INLINEABLE dasiInstanceIds #-}
{-# DEPRECATED instanceIds "Use generic-lens or generic-optics with 'instanceIds' instead"  #-}

-- | The maximum number of items to return with this call. The default value is @50@ and the maximum value is @50@ .
--
-- /Note:/ Consider using 'maxRecords' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasiMaxRecords :: Lens.Lens' DescribeAutoScalingInstances (Core.Maybe Core.Int)
dasiMaxRecords = Lens.field @"maxRecords"
{-# INLINEABLE dasiMaxRecords #-}
{-# DEPRECATED maxRecords "Use generic-lens or generic-optics with 'maxRecords' instead"  #-}

-- | The token for the next set of items to return. (You received this token from a previous call.)
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasiNextToken :: Lens.Lens' DescribeAutoScalingInstances (Core.Maybe Types.XmlString)
dasiNextToken = Lens.field @"nextToken"
{-# INLINEABLE dasiNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery DescribeAutoScalingInstances where
        toQuery DescribeAutoScalingInstances{..}
          = Core.toQueryPair "Action"
              ("DescribeAutoScalingInstances" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2011-01-01" :: Core.Text)
              Core.<>
              Core.toQueryPair "InstanceIds"
                (Core.maybe Core.mempty (Core.toQueryList "member") instanceIds)
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxRecords") maxRecords
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "NextToken") nextToken

instance Core.ToHeaders DescribeAutoScalingInstances where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeAutoScalingInstances where
        type Rs DescribeAutoScalingInstances =
             DescribeAutoScalingInstancesResponse
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
          = Response.receiveXMLWrapper "DescribeAutoScalingInstancesResult"
              (\ s h x ->
                 DescribeAutoScalingInstancesResponse' Core.<$>
                   (x Core..@? "AutoScalingInstances" Core..<@>
                      Core.parseXMLList "member")
                     Core.<*> x Core..@? "NextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeAutoScalingInstances where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"autoScalingInstances" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkDescribeAutoScalingInstancesResponse' smart constructor.
data DescribeAutoScalingInstancesResponse = DescribeAutoScalingInstancesResponse'
  { autoScalingInstances :: Core.Maybe [Types.AutoScalingInstanceDetails]
    -- ^ The instances.
  , nextToken :: Core.Maybe Types.XmlString
    -- ^ A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeAutoScalingInstancesResponse' value with any optional fields omitted.
mkDescribeAutoScalingInstancesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeAutoScalingInstancesResponse
mkDescribeAutoScalingInstancesResponse responseStatus
  = DescribeAutoScalingInstancesResponse'{autoScalingInstances =
                                            Core.Nothing,
                                          nextToken = Core.Nothing, responseStatus}

-- | The instances.
--
-- /Note:/ Consider using 'autoScalingInstances' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasirrsAutoScalingInstances :: Lens.Lens' DescribeAutoScalingInstancesResponse (Core.Maybe [Types.AutoScalingInstanceDetails])
dasirrsAutoScalingInstances = Lens.field @"autoScalingInstances"
{-# INLINEABLE dasirrsAutoScalingInstances #-}
{-# DEPRECATED autoScalingInstances "Use generic-lens or generic-optics with 'autoScalingInstances' instead"  #-}

-- | A string that indicates that the response contains more items than can be returned in a single response. To receive additional items, specify this string for the @NextToken@ value when requesting the next set of items. This value is null when there are no more items to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasirrsNextToken :: Lens.Lens' DescribeAutoScalingInstancesResponse (Core.Maybe Types.XmlString)
dasirrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE dasirrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dasirrsResponseStatus :: Lens.Lens' DescribeAutoScalingInstancesResponse Core.Int
dasirrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dasirrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
