{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.ListSecurityProfiles
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Device Defender security profiles you have created. You can use filters to list only those security profiles associated with a thing group or only those associated with your account.
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListSecurityProfiles
    (
    -- * Creating a request
      ListSecurityProfiles (..)
    , mkListSecurityProfiles
    -- ** Request lenses
    , lspDimensionName
    , lspMaxResults
    , lspNextToken

    -- * Destructuring the response
    , ListSecurityProfilesResponse (..)
    , mkListSecurityProfilesResponse
    -- ** Response lenses
    , lsprrsNextToken
    , lsprrsSecurityProfileIdentifiers
    , lsprrsResponseStatus
    ) where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListSecurityProfiles' smart constructor.
data ListSecurityProfiles = ListSecurityProfiles'
  { dimensionName :: Core.Maybe Types.DimensionName
    -- ^ A filter to limit results to the security profiles that use the defined dimension.
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of results to return at one time.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token for the next set of results.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListSecurityProfiles' value with any optional fields omitted.
mkListSecurityProfiles
    :: ListSecurityProfiles
mkListSecurityProfiles
  = ListSecurityProfiles'{dimensionName = Core.Nothing,
                          maxResults = Core.Nothing, nextToken = Core.Nothing}

-- | A filter to limit results to the security profiles that use the defined dimension.
--
-- /Note:/ Consider using 'dimensionName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lspDimensionName :: Lens.Lens' ListSecurityProfiles (Core.Maybe Types.DimensionName)
lspDimensionName = Lens.field @"dimensionName"
{-# INLINEABLE lspDimensionName #-}
{-# DEPRECATED dimensionName "Use generic-lens or generic-optics with 'dimensionName' instead"  #-}

-- | The maximum number of results to return at one time.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lspMaxResults :: Lens.Lens' ListSecurityProfiles (Core.Maybe Core.Natural)
lspMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lspMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The token for the next set of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lspNextToken :: Lens.Lens' ListSecurityProfiles (Core.Maybe Types.NextToken)
lspNextToken = Lens.field @"nextToken"
{-# INLINEABLE lspNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListSecurityProfiles where
        toQuery ListSecurityProfiles{..}
          = Core.maybe Core.mempty (Core.toQueryPair "dimensionName")
              dimensionName
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "maxResults") maxResults
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "nextToken") nextToken

instance Core.ToHeaders ListSecurityProfiles where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest ListSecurityProfiles where
        type Rs ListSecurityProfiles = ListSecurityProfilesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET, Core._rqPath = "/security-profiles",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListSecurityProfilesResponse' Core.<$>
                   (x Core..:? "nextToken") Core.<*>
                     x Core..:? "securityProfileIdentifiers"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListSecurityProfiles where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^?
                 Lens.field @"securityProfileIdentifiers" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListSecurityProfilesResponse' smart constructor.
data ListSecurityProfilesResponse = ListSecurityProfilesResponse'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
  , securityProfileIdentifiers :: Core.Maybe [Types.SecurityProfileIdentifier]
    -- ^ A list of security profile identifiers (names and ARNs).
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListSecurityProfilesResponse' value with any optional fields omitted.
mkListSecurityProfilesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListSecurityProfilesResponse
mkListSecurityProfilesResponse responseStatus
  = ListSecurityProfilesResponse'{nextToken = Core.Nothing,
                                  securityProfileIdentifiers = Core.Nothing, responseStatus}

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsprrsNextToken :: Lens.Lens' ListSecurityProfilesResponse (Core.Maybe Types.NextToken)
lsprrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lsprrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | A list of security profile identifiers (names and ARNs).
--
-- /Note:/ Consider using 'securityProfileIdentifiers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsprrsSecurityProfileIdentifiers :: Lens.Lens' ListSecurityProfilesResponse (Core.Maybe [Types.SecurityProfileIdentifier])
lsprrsSecurityProfileIdentifiers = Lens.field @"securityProfileIdentifiers"
{-# INLINEABLE lsprrsSecurityProfileIdentifiers #-}
{-# DEPRECATED securityProfileIdentifiers "Use generic-lens or generic-optics with 'securityProfileIdentifiers' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lsprrsResponseStatus :: Lens.Lens' ListSecurityProfilesResponse Core.Int
lsprrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lsprrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
