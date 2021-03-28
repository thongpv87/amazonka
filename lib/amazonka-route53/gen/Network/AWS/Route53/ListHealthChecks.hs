{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.ListHealthChecks
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a list of the health checks that are associated with the current AWS account. 
--
-- This operation returns paginated results.
module Network.AWS.Route53.ListHealthChecks
    (
    -- * Creating a request
      ListHealthChecks (..)
    , mkListHealthChecks
    -- ** Request lenses
    , lhcMarker
    , lhcMaxItems

    -- * Destructuring the response
    , ListHealthChecksResponse (..)
    , mkListHealthChecksResponse
    -- ** Response lenses
    , lhcrrsHealthChecks
    , lhcrrsMarker
    , lhcrrsIsTruncated
    , lhcrrsMaxItems
    , lhcrrsNextMarker
    , lhcrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Route53.Types as Types

-- | A request to retrieve a list of the health checks that are associated with the current AWS account.
--
-- /See:/ 'mkListHealthChecks' smart constructor.
data ListHealthChecks = ListHealthChecks'
  { marker :: Core.Maybe Types.Marker
    -- ^ If the value of @IsTruncated@ in the previous response was @true@ , you have more health checks. To get another group, submit another @ListHealthChecks@ request. 
--
-- For the value of @marker@ , specify the value of @NextMarker@ from the previous response, which is the ID of the first health check that Amazon Route 53 will return if you submit another request.
-- If the value of @IsTruncated@ in the previous response was @false@ , there are no more health checks to get.
  , maxItems :: Core.Maybe Types.MaxItems
    -- ^ The maximum number of health checks that you want @ListHealthChecks@ to return in response to the current request. Amazon Route 53 returns a maximum of 100 items. If you set @MaxItems@ to a value greater than 100, Route 53 returns only the first 100 health checks. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListHealthChecks' value with any optional fields omitted.
mkListHealthChecks
    :: ListHealthChecks
mkListHealthChecks
  = ListHealthChecks'{marker = Core.Nothing, maxItems = Core.Nothing}

-- | If the value of @IsTruncated@ in the previous response was @true@ , you have more health checks. To get another group, submit another @ListHealthChecks@ request. 
--
-- For the value of @marker@ , specify the value of @NextMarker@ from the previous response, which is the ID of the first health check that Amazon Route 53 will return if you submit another request.
-- If the value of @IsTruncated@ in the previous response was @false@ , there are no more health checks to get.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhcMarker :: Lens.Lens' ListHealthChecks (Core.Maybe Types.Marker)
lhcMarker = Lens.field @"marker"
{-# INLINEABLE lhcMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

-- | The maximum number of health checks that you want @ListHealthChecks@ to return in response to the current request. Amazon Route 53 returns a maximum of 100 items. If you set @MaxItems@ to a value greater than 100, Route 53 returns only the first 100 health checks. 
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhcMaxItems :: Lens.Lens' ListHealthChecks (Core.Maybe Types.MaxItems)
lhcMaxItems = Lens.field @"maxItems"
{-# INLINEABLE lhcMaxItems #-}
{-# DEPRECATED maxItems "Use generic-lens or generic-optics with 'maxItems' instead"  #-}

instance Core.ToQuery ListHealthChecks where
        toQuery ListHealthChecks{..}
          = Core.maybe Core.mempty (Core.toQueryPair "marker") marker Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "maxitems") maxItems

instance Core.ToHeaders ListHealthChecks where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest ListHealthChecks where
        type Rs ListHealthChecks = ListHealthChecksResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath = "/2013-04-01/healthcheck",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXML
              (\ s h x ->
                 ListHealthChecksResponse' Core.<$>
                   (x Core..@ "HealthChecks" Core..@! Core.mempty Core..<@>
                      Core.parseXMLList "HealthCheck")
                     Core.<*> x Core..@ "Marker"
                     Core.<*> x Core..@ "IsTruncated"
                     Core.<*> x Core..@ "MaxItems"
                     Core.<*> x Core..@? "NextMarker"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListHealthChecks where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"isTruncated") = Core.Nothing
          | Core.isNothing (rs Lens.^. Lens.field @"nextMarker") =
            Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"marker" Lens..~ rs Lens.^. Lens.field @"nextMarker")

-- | A complex type that contains the response to a @ListHealthChecks@ request.
--
-- /See:/ 'mkListHealthChecksResponse' smart constructor.
data ListHealthChecksResponse = ListHealthChecksResponse'
  { healthChecks :: [Types.HealthCheck]
    -- ^ A complex type that contains one @HealthCheck@ element for each health check that is associated with the current AWS account.
  , marker :: Types.Marker
    -- ^ For the second and subsequent calls to @ListHealthChecks@ , @Marker@ is the value that you specified for the @marker@ parameter in the previous request.
  , isTruncated :: Core.Bool
    -- ^ A flag that indicates whether there are more health checks to be listed. If the response was truncated, you can get the next group of health checks by submitting another @ListHealthChecks@ request and specifying the value of @NextMarker@ in the @marker@ parameter.
  , maxItems :: Types.MaxItems
    -- ^ The value that you specified for the @maxitems@ parameter in the call to @ListHealthChecks@ that produced the current response.
  , nextMarker :: Core.Maybe Types.NextMarker
    -- ^ If @IsTruncated@ is @true@ , the value of @NextMarker@ identifies the first health check that Amazon Route 53 returns if you submit another @ListHealthChecks@ request and specify the value of @NextMarker@ in the @marker@ parameter.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListHealthChecksResponse' value with any optional fields omitted.
mkListHealthChecksResponse
    :: Types.Marker -- ^ 'marker'
    -> Core.Bool -- ^ 'isTruncated'
    -> Types.MaxItems -- ^ 'maxItems'
    -> Core.Int -- ^ 'responseStatus'
    -> ListHealthChecksResponse
mkListHealthChecksResponse marker isTruncated maxItems
  responseStatus
  = ListHealthChecksResponse'{healthChecks = Core.mempty, marker,
                              isTruncated, maxItems, nextMarker = Core.Nothing, responseStatus}

-- | A complex type that contains one @HealthCheck@ element for each health check that is associated with the current AWS account.
--
-- /Note:/ Consider using 'healthChecks' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhcrrsHealthChecks :: Lens.Lens' ListHealthChecksResponse [Types.HealthCheck]
lhcrrsHealthChecks = Lens.field @"healthChecks"
{-# INLINEABLE lhcrrsHealthChecks #-}
{-# DEPRECATED healthChecks "Use generic-lens or generic-optics with 'healthChecks' instead"  #-}

-- | For the second and subsequent calls to @ListHealthChecks@ , @Marker@ is the value that you specified for the @marker@ parameter in the previous request.
--
-- /Note:/ Consider using 'marker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhcrrsMarker :: Lens.Lens' ListHealthChecksResponse Types.Marker
lhcrrsMarker = Lens.field @"marker"
{-# INLINEABLE lhcrrsMarker #-}
{-# DEPRECATED marker "Use generic-lens or generic-optics with 'marker' instead"  #-}

-- | A flag that indicates whether there are more health checks to be listed. If the response was truncated, you can get the next group of health checks by submitting another @ListHealthChecks@ request and specifying the value of @NextMarker@ in the @marker@ parameter.
--
-- /Note:/ Consider using 'isTruncated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhcrrsIsTruncated :: Lens.Lens' ListHealthChecksResponse Core.Bool
lhcrrsIsTruncated = Lens.field @"isTruncated"
{-# INLINEABLE lhcrrsIsTruncated #-}
{-# DEPRECATED isTruncated "Use generic-lens or generic-optics with 'isTruncated' instead"  #-}

-- | The value that you specified for the @maxitems@ parameter in the call to @ListHealthChecks@ that produced the current response.
--
-- /Note:/ Consider using 'maxItems' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhcrrsMaxItems :: Lens.Lens' ListHealthChecksResponse Types.MaxItems
lhcrrsMaxItems = Lens.field @"maxItems"
{-# INLINEABLE lhcrrsMaxItems #-}
{-# DEPRECATED maxItems "Use generic-lens or generic-optics with 'maxItems' instead"  #-}

-- | If @IsTruncated@ is @true@ , the value of @NextMarker@ identifies the first health check that Amazon Route 53 returns if you submit another @ListHealthChecks@ request and specify the value of @NextMarker@ in the @marker@ parameter.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhcrrsNextMarker :: Lens.Lens' ListHealthChecksResponse (Core.Maybe Types.NextMarker)
lhcrrsNextMarker = Lens.field @"nextMarker"
{-# INLINEABLE lhcrrsNextMarker #-}
{-# DEPRECATED nextMarker "Use generic-lens or generic-optics with 'nextMarker' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lhcrrsResponseStatus :: Lens.Lens' ListHealthChecksResponse Core.Int
lhcrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lhcrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
