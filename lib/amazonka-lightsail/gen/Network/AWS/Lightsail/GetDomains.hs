{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.GetDomains
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all domains in the user's account.
--
-- This operation returns paginated results.
module Network.AWS.Lightsail.GetDomains
    (
    -- * Creating a request
      GetDomains (..)
    , mkGetDomains
    -- ** Request lenses
    , gPageToken

    -- * Destructuring the response
    , GetDomainsResponse (..)
    , mkGetDomainsResponse
    -- ** Response lenses
    , gdrfrsDomains
    , gdrfrsNextPageToken
    , gdrfrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Lightsail.Types as Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetDomains' smart constructor.
newtype GetDomains = GetDomains'
  { pageToken :: Core.Maybe Core.Text
    -- ^ The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetDomains@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetDomains' value with any optional fields omitted.
mkGetDomains
    :: GetDomains
mkGetDomains = GetDomains'{pageToken = Core.Nothing}

-- | The token to advance to the next page of results from your request.
--
-- To get a page token, perform an initial @GetDomains@ request. If your results are paginated, the response will return a next page token that you can specify as the page token in a subsequent request.
--
-- /Note:/ Consider using 'pageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gPageToken :: Lens.Lens' GetDomains (Core.Maybe Core.Text)
gPageToken = Lens.field @"pageToken"
{-# INLINEABLE gPageToken #-}
{-# DEPRECATED pageToken "Use generic-lens or generic-optics with 'pageToken' instead"  #-}

instance Core.ToQuery GetDomains where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetDomains where
        toHeaders GetDomains{..}
          = Core.pure ("X-Amz-Target", "Lightsail_20161128.GetDomains")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetDomains where
        toJSON GetDomains{..}
          = Core.object
              (Core.catMaybes [("pageToken" Core..=) Core.<$> pageToken])

instance Core.AWSRequest GetDomains where
        type Rs GetDomains = GetDomainsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetDomainsResponse' Core.<$>
                   (x Core..:? "domains") Core.<*> x Core..:? "nextPageToken" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager GetDomains where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextPageToken") =
            Core.Nothing
          | Pager.stop (rs Lens.^? Lens.field @"domains" Core.. Lens._Just) =
            Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"pageToken" Lens..~
                   rs Lens.^. Lens.field @"nextPageToken")

-- | /See:/ 'mkGetDomainsResponse' smart constructor.
data GetDomainsResponse = GetDomainsResponse'
  { domains :: Core.Maybe [Types.Domain]
    -- ^ An array of key-value pairs containing information about each of the domain entries in the user's account.
  , nextPageToken :: Core.Maybe Core.Text
    -- ^ The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to display.
-- To get the next page of results, perform another @GetDomains@ request and specify the next page token using the @pageToken@ parameter.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'GetDomainsResponse' value with any optional fields omitted.
mkGetDomainsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetDomainsResponse
mkGetDomainsResponse responseStatus
  = GetDomainsResponse'{domains = Core.Nothing,
                        nextPageToken = Core.Nothing, responseStatus}

-- | An array of key-value pairs containing information about each of the domain entries in the user's account.
--
-- /Note:/ Consider using 'domains' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gdrfrsDomains :: Lens.Lens' GetDomainsResponse (Core.Maybe [Types.Domain])
gdrfrsDomains = Lens.field @"domains"
{-# INLINEABLE gdrfrsDomains #-}
{-# DEPRECATED domains "Use generic-lens or generic-optics with 'domains' instead"  #-}

-- | The token to advance to the next page of results from your request.
--
-- A next page token is not returned if there are no more results to display.
-- To get the next page of results, perform another @GetDomains@ request and specify the next page token using the @pageToken@ parameter.
--
-- /Note:/ Consider using 'nextPageToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gdrfrsNextPageToken :: Lens.Lens' GetDomainsResponse (Core.Maybe Core.Text)
gdrfrsNextPageToken = Lens.field @"nextPageToken"
{-# INLINEABLE gdrfrsNextPageToken #-}
{-# DEPRECATED nextPageToken "Use generic-lens or generic-optics with 'nextPageToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gdrfrsResponseStatus :: Lens.Lens' GetDomainsResponse Core.Int
gdrfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gdrfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
