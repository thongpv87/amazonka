{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.ListGeoMatchSets
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of 'GeoMatchSetSummary' objects in the response.
--
-- This operation returns paginated results.
module Network.AWS.WAF.ListGeoMatchSets
    (
    -- * Creating a request
      ListGeoMatchSets (..)
    , mkListGeoMatchSets
    -- ** Request lenses
    , lgmsLimit
    , lgmsNextMarker

    -- * Destructuring the response
    , ListGeoMatchSetsResponse (..)
    , mkListGeoMatchSetsResponse
    -- ** Response lenses
    , lgmsrrsGeoMatchSets
    , lgmsrrsNextMarker
    , lgmsrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.WAF.Types as Types

-- | /See:/ 'mkListGeoMatchSets' smart constructor.
data ListGeoMatchSets = ListGeoMatchSets'
  { limit :: Core.Maybe Core.Natural
    -- ^ Specifies the number of @GeoMatchSet@ objects that you want AWS WAF to return for this request. If you have more @GeoMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @GeoMatchSet@ objects.
  , nextMarker :: Core.Maybe Types.NextMarker
    -- ^ If you specify a value for @Limit@ and you have more @GeoMatchSet@ s than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @GeoMatchSet@ objects. For the second and subsequent @ListGeoMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @GeoMatchSet@ objects.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListGeoMatchSets' value with any optional fields omitted.
mkListGeoMatchSets
    :: ListGeoMatchSets
mkListGeoMatchSets
  = ListGeoMatchSets'{limit = Core.Nothing,
                      nextMarker = Core.Nothing}

-- | Specifies the number of @GeoMatchSet@ objects that you want AWS WAF to return for this request. If you have more @GeoMatchSet@ objects than the number you specify for @Limit@ , the response includes a @NextMarker@ value that you can use to get another batch of @GeoMatchSet@ objects.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmsLimit :: Lens.Lens' ListGeoMatchSets (Core.Maybe Core.Natural)
lgmsLimit = Lens.field @"limit"
{-# INLINEABLE lgmsLimit #-}
{-# DEPRECATED limit "Use generic-lens or generic-optics with 'limit' instead"  #-}

-- | If you specify a value for @Limit@ and you have more @GeoMatchSet@ s than the value of @Limit@ , AWS WAF returns a @NextMarker@ value in the response that allows you to list another group of @GeoMatchSet@ objects. For the second and subsequent @ListGeoMatchSets@ requests, specify the value of @NextMarker@ from the previous response to get information about another batch of @GeoMatchSet@ objects.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmsNextMarker :: Lens.Lens' ListGeoMatchSets (Core.Maybe Types.NextMarker)
lgmsNextMarker = Lens.field @"nextMarker"
{-# INLINEABLE lgmsNextMarker #-}
{-# DEPRECATED nextMarker "Use generic-lens or generic-optics with 'nextMarker' instead"  #-}

instance Core.ToQuery ListGeoMatchSets where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListGeoMatchSets where
        toHeaders ListGeoMatchSets{..}
          = Core.pure ("X-Amz-Target", "AWSWAF_20150824.ListGeoMatchSets")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListGeoMatchSets where
        toJSON ListGeoMatchSets{..}
          = Core.object
              (Core.catMaybes
                 [("Limit" Core..=) Core.<$> limit,
                  ("NextMarker" Core..=) Core.<$> nextMarker])

instance Core.AWSRequest ListGeoMatchSets where
        type Rs ListGeoMatchSets = ListGeoMatchSetsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListGeoMatchSetsResponse' Core.<$>
                   (x Core..:? "GeoMatchSets") Core.<*> x Core..:? "NextMarker"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListGeoMatchSets where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextMarker") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"geoMatchSets" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextMarker" Lens..~
                   rs Lens.^. Lens.field @"nextMarker")

-- | /See:/ 'mkListGeoMatchSetsResponse' smart constructor.
data ListGeoMatchSetsResponse = ListGeoMatchSetsResponse'
  { geoMatchSets :: Core.Maybe [Types.GeoMatchSetSummary]
    -- ^ An array of 'GeoMatchSetSummary' objects.
  , nextMarker :: Core.Maybe Types.NextMarker
    -- ^ If you have more @GeoMatchSet@ objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @GeoMatchSet@ objects, submit another @ListGeoMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListGeoMatchSetsResponse' value with any optional fields omitted.
mkListGeoMatchSetsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListGeoMatchSetsResponse
mkListGeoMatchSetsResponse responseStatus
  = ListGeoMatchSetsResponse'{geoMatchSets = Core.Nothing,
                              nextMarker = Core.Nothing, responseStatus}

-- | An array of 'GeoMatchSetSummary' objects.
--
-- /Note:/ Consider using 'geoMatchSets' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmsrrsGeoMatchSets :: Lens.Lens' ListGeoMatchSetsResponse (Core.Maybe [Types.GeoMatchSetSummary])
lgmsrrsGeoMatchSets = Lens.field @"geoMatchSets"
{-# INLINEABLE lgmsrrsGeoMatchSets #-}
{-# DEPRECATED geoMatchSets "Use generic-lens or generic-optics with 'geoMatchSets' instead"  #-}

-- | If you have more @GeoMatchSet@ objects than the number that you specified for @Limit@ in the request, the response includes a @NextMarker@ value. To list more @GeoMatchSet@ objects, submit another @ListGeoMatchSets@ request, and specify the @NextMarker@ value from the response in the @NextMarker@ value in the next request.
--
-- /Note:/ Consider using 'nextMarker' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmsrrsNextMarker :: Lens.Lens' ListGeoMatchSetsResponse (Core.Maybe Types.NextMarker)
lgmsrrsNextMarker = Lens.field @"nextMarker"
{-# INLINEABLE lgmsrrsNextMarker #-}
{-# DEPRECATED nextMarker "Use generic-lens or generic-optics with 'nextMarker' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lgmsrrsResponseStatus :: Lens.Lens' ListGeoMatchSetsResponse Core.Int
lgmsrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lgmsrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
