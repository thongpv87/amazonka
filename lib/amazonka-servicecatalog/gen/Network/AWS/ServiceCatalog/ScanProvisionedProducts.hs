{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.ScanProvisionedProducts
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the provisioned products that are available (not terminated).
--
-- To use additional filtering, see 'SearchProvisionedProducts' .
--
-- This operation returns paginated results.
module Network.AWS.ServiceCatalog.ScanProvisionedProducts
    (
    -- * Creating a request
      ScanProvisionedProducts (..)
    , mkScanProvisionedProducts
    -- ** Request lenses
    , sAcceptLanguage
    , sAccessLevelFilter
    , sPageSize
    , sPageToken

    -- * Destructuring the response
    , ScanProvisionedProductsResponse (..)
    , mkScanProvisionedProductsResponse
    -- ** Response lenses
    , srsNextPageToken
    , srsProvisionedProducts
    , srsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.ServiceCatalog.Types as Types

-- | /See:/ 'mkScanProvisionedProducts' smart constructor.
data ScanProvisionedProducts = ScanProvisionedProducts'
  { acceptLanguage :: Core.Maybe Types.AcceptLanguage
    -- ^ The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
  , accessLevelFilter :: Core.Maybe Types.AccessLevelFilter
    -- ^ The access level to use to obtain results. The default is @User@ .
  , pageSize :: Core.Maybe Core.Natural
    -- ^ The maximum number of items to return with this call.
  , pageToken :: Core.Maybe Types.PageToken
    -- ^ The page token for the next set of results. To retrieve the first set of results, use null.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ScanProvisionedProducts' value with any optional fields omitted.
mkScanProvisionedProducts
    :: ScanProvisionedProducts
mkScanProvisionedProducts
  = ScanProvisionedProducts'{acceptLanguage = Core.Nothing,
                             accessLevelFilter = Core.Nothing, pageSize = Core.Nothing,
                             pageToken = Core.Nothing}

-- | The language code.
--
--
--     * @en@ - English (default)
--
--
--     * @jp@ - Japanese
--
--
--     * @zh@ - Chinese
--
--
--
-- /Note:/ Consider using 'acceptLanguage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sAcceptLanguage :: Lens.Lens' ScanProvisionedProducts (Core.Maybe Types.AcceptLanguage)
sAcceptLanguage = Lens.field @"acceptLanguage"
{-# INLINEABLE sAcceptLanguage #-}
{-# DEPRECATED acceptLanguage "Use generic-lens or generic-optics with 'acceptLanguage' instead"  #-}

-- | The access level to use to obtain results. The default is @User@ .
--
-- /Note:/ Consider using 'accessLevelFilter' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sAccessLevelFilter :: Lens.Lens' ScanProvisionedProducts (Core.Maybe Types.AccessLevelFilter)
sAccessLevelFilter = Lens.field @"accessLevelFilter"
{-# INLINEABLE sAccessLevelFilter #-}
{-# DEPRECATED accessLevelFilter "Use generic-lens or generic-optics with 'accessLevelFilter' instead"  #-}

-- | The maximum number of items to return with this call.
--
-- /Note:/ Consider using 'pageSize' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sPageSize :: Lens.Lens' ScanProvisionedProducts (Core.Maybe Core.Natural)
sPageSize = Lens.field @"pageSize"
{-# INLINEABLE sPageSize #-}
{-# DEPRECATED pageSize "Use generic-lens or generic-optics with 'pageSize' instead"  #-}

-- | The page token for the next set of results. To retrieve the first set of results, use null.
--
-- /Note:/ Consider using 'pageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sPageToken :: Lens.Lens' ScanProvisionedProducts (Core.Maybe Types.PageToken)
sPageToken = Lens.field @"pageToken"
{-# INLINEABLE sPageToken #-}
{-# DEPRECATED pageToken "Use generic-lens or generic-optics with 'pageToken' instead"  #-}

instance Core.ToQuery ScanProvisionedProducts where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ScanProvisionedProducts where
        toHeaders ScanProvisionedProducts{..}
          = Core.pure
              ("X-Amz-Target",
               "AWS242ServiceCatalogService.ScanProvisionedProducts")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ScanProvisionedProducts where
        toJSON ScanProvisionedProducts{..}
          = Core.object
              (Core.catMaybes
                 [("AcceptLanguage" Core..=) Core.<$> acceptLanguage,
                  ("AccessLevelFilter" Core..=) Core.<$> accessLevelFilter,
                  ("PageSize" Core..=) Core.<$> pageSize,
                  ("PageToken" Core..=) Core.<$> pageToken])

instance Core.AWSRequest ScanProvisionedProducts where
        type Rs ScanProvisionedProducts = ScanProvisionedProductsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ScanProvisionedProductsResponse' Core.<$>
                   (x Core..:? "NextPageToken") Core.<*>
                     x Core..:? "ProvisionedProducts"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ScanProvisionedProducts where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextPageToken") =
            Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"provisionedProducts" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"pageToken" Lens..~
                   rs Lens.^. Lens.field @"nextPageToken")

-- | /See:/ 'mkScanProvisionedProductsResponse' smart constructor.
data ScanProvisionedProductsResponse = ScanProvisionedProductsResponse'
  { nextPageToken :: Core.Maybe Types.NextPageToken
    -- ^ The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
  , provisionedProducts :: Core.Maybe [Types.ProvisionedProductDetail]
    -- ^ Information about the provisioned products.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ScanProvisionedProductsResponse' value with any optional fields omitted.
mkScanProvisionedProductsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ScanProvisionedProductsResponse
mkScanProvisionedProductsResponse responseStatus
  = ScanProvisionedProductsResponse'{nextPageToken = Core.Nothing,
                                     provisionedProducts = Core.Nothing, responseStatus}

-- | The page token to use to retrieve the next set of results. If there are no additional results, this value is null.
--
-- /Note:/ Consider using 'nextPageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsNextPageToken :: Lens.Lens' ScanProvisionedProductsResponse (Core.Maybe Types.NextPageToken)
srsNextPageToken = Lens.field @"nextPageToken"
{-# INLINEABLE srsNextPageToken #-}
{-# DEPRECATED nextPageToken "Use generic-lens or generic-optics with 'nextPageToken' instead"  #-}

-- | Information about the provisioned products.
--
-- /Note:/ Consider using 'provisionedProducts' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsProvisionedProducts :: Lens.Lens' ScanProvisionedProductsResponse (Core.Maybe [Types.ProvisionedProductDetail])
srsProvisionedProducts = Lens.field @"provisionedProducts"
{-# INLINEABLE srsProvisionedProducts #-}
{-# DEPRECATED provisionedProducts "Use generic-lens or generic-optics with 'provisionedProducts' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
srsResponseStatus :: Lens.Lens' ScanProvisionedProductsResponse Core.Int
srsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE srsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
