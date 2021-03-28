{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.DescribeOutboundCrossClusterSearchConnections
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the outbound cross-cluster search connections for a source domain.
module Network.AWS.ElasticSearch.DescribeOutboundCrossClusterSearchConnections
    (
    -- * Creating a request
      DescribeOutboundCrossClusterSearchConnections (..)
    , mkDescribeOutboundCrossClusterSearchConnections
    -- ** Request lenses
    , doccscFilters
    , doccscMaxResults
    , doccscNextToken

    -- * Destructuring the response
    , DescribeOutboundCrossClusterSearchConnectionsResponse (..)
    , mkDescribeOutboundCrossClusterSearchConnectionsResponse
    -- ** Response lenses
    , drsCrossClusterSearchConnections
    , drsNextToken
    , drsResponseStatus
    ) where

import qualified Network.AWS.ElasticSearch.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @'DescribeOutboundCrossClusterSearchConnections' @ operation.
--
-- /See:/ 'mkDescribeOutboundCrossClusterSearchConnections' smart constructor.
data DescribeOutboundCrossClusterSearchConnections = DescribeOutboundCrossClusterSearchConnections'
  { filters :: Core.Maybe [Types.Filter]
    -- ^ A list of filters used to match properties for outbound cross-cluster search connection. Available @'Filter' @ names for this operation are: 
--
--     * cross-cluster-search-connection-id
--
--     * destination-domain-info.domain-name
--
--     * destination-domain-info.owner-id
--
--     * destination-domain-info.region
--
--     * source-domain-info.domain-name
--
--
  , maxResults :: Core.Maybe Core.Int
    -- ^ Set this value to limit the number of results returned. If not specified, defaults to 100.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeOutboundCrossClusterSearchConnections' value with any optional fields omitted.
mkDescribeOutboundCrossClusterSearchConnections
    :: DescribeOutboundCrossClusterSearchConnections
mkDescribeOutboundCrossClusterSearchConnections
  = DescribeOutboundCrossClusterSearchConnections'{filters =
                                                     Core.Nothing,
                                                   maxResults = Core.Nothing,
                                                   nextToken = Core.Nothing}

-- | A list of filters used to match properties for outbound cross-cluster search connection. Available @'Filter' @ names for this operation are: 
--
--     * cross-cluster-search-connection-id
--
--     * destination-domain-info.domain-name
--
--     * destination-domain-info.owner-id
--
--     * destination-domain-info.region
--
--     * source-domain-info.domain-name
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
doccscFilters :: Lens.Lens' DescribeOutboundCrossClusterSearchConnections (Core.Maybe [Types.Filter])
doccscFilters = Lens.field @"filters"
{-# INLINEABLE doccscFilters #-}
{-# DEPRECATED filters "Use generic-lens or generic-optics with 'filters' instead"  #-}

-- | Set this value to limit the number of results returned. If not specified, defaults to 100.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
doccscMaxResults :: Lens.Lens' DescribeOutboundCrossClusterSearchConnections (Core.Maybe Core.Int)
doccscMaxResults = Lens.field @"maxResults"
{-# INLINEABLE doccscMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
doccscNextToken :: Lens.Lens' DescribeOutboundCrossClusterSearchConnections (Core.Maybe Types.NextToken)
doccscNextToken = Lens.field @"nextToken"
{-# INLINEABLE doccscNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery DescribeOutboundCrossClusterSearchConnections
         where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders
           DescribeOutboundCrossClusterSearchConnections
         where
        toHeaders _ = Core.pure Core.mempty

instance Core.FromJSON
           DescribeOutboundCrossClusterSearchConnections
         where
        toJSON DescribeOutboundCrossClusterSearchConnections{..}
          = Core.object
              (Core.catMaybes
                 [("Filters" Core..=) Core.<$> filters,
                  ("MaxResults" Core..=) Core.<$> maxResults,
                  ("NextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest
           DescribeOutboundCrossClusterSearchConnections
         where
        type Rs DescribeOutboundCrossClusterSearchConnections =
             DescribeOutboundCrossClusterSearchConnectionsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST,
                         Core._rqPath = "/2015-01-01/es/ccs/outboundConnection/search",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeOutboundCrossClusterSearchConnectionsResponse' Core.<$>
                   (x Core..:? "CrossClusterSearchConnections") Core.<*>
                     x Core..:? "NextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | The result of a @'DescribeOutboundCrossClusterSearchConnections' @ request. Contains the list of connections matching the filter criteria.
--
-- /See:/ 'mkDescribeOutboundCrossClusterSearchConnectionsResponse' smart constructor.
data DescribeOutboundCrossClusterSearchConnectionsResponse = DescribeOutboundCrossClusterSearchConnectionsResponse'
  { crossClusterSearchConnections :: Core.Maybe [Types.OutboundCrossClusterSearchConnection]
    -- ^ Consists of list of @'OutboundCrossClusterSearchConnection' @ matching the specified filter criteria.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results. 
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeOutboundCrossClusterSearchConnectionsResponse' value with any optional fields omitted.
mkDescribeOutboundCrossClusterSearchConnectionsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeOutboundCrossClusterSearchConnectionsResponse
mkDescribeOutboundCrossClusterSearchConnectionsResponse
  responseStatus
  = DescribeOutboundCrossClusterSearchConnectionsResponse'{crossClusterSearchConnections
                                                             = Core.Nothing,
                                                           nextToken = Core.Nothing, responseStatus}

-- | Consists of list of @'OutboundCrossClusterSearchConnection' @ matching the specified filter criteria.
--
-- /Note:/ Consider using 'crossClusterSearchConnections' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsCrossClusterSearchConnections :: Lens.Lens' DescribeOutboundCrossClusterSearchConnectionsResponse (Core.Maybe [Types.OutboundCrossClusterSearchConnection])
drsCrossClusterSearchConnections = Lens.field @"crossClusterSearchConnections"
{-# INLINEABLE drsCrossClusterSearchConnections #-}
{-# DEPRECATED crossClusterSearchConnections "Use generic-lens or generic-optics with 'crossClusterSearchConnections' instead"  #-}

-- | If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results. 
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsNextToken :: Lens.Lens' DescribeOutboundCrossClusterSearchConnectionsResponse (Core.Maybe Types.NextToken)
drsNextToken = Lens.field @"nextToken"
{-# INLINEABLE drsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drsResponseStatus :: Lens.Lens' DescribeOutboundCrossClusterSearchConnectionsResponse Core.Int
drsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE drsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
