{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoSync.ListIdentityPoolUsage
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of identity pools registered with Cognito.
--
-- ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.
module Network.AWS.CognitoSync.ListIdentityPoolUsage
    (
    -- * Creating a request
      ListIdentityPoolUsage (..)
    , mkListIdentityPoolUsage
    -- ** Request lenses
    , lipuMaxResults
    , lipuNextToken

    -- * Destructuring the response
    , ListIdentityPoolUsageResponse (..)
    , mkListIdentityPoolUsageResponse
    -- ** Response lenses
    , lipurrsCount
    , lipurrsIdentityPoolUsages
    , lipurrsMaxResults
    , lipurrsNextToken
    , lipurrsResponseStatus
    ) where

import qualified Network.AWS.CognitoSync.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request for usage information on an identity pool.
--
-- /See:/ 'mkListIdentityPoolUsage' smart constructor.
data ListIdentityPoolUsage = ListIdentityPoolUsage'
  { maxResults :: Core.Maybe Core.Int
    -- ^ The maximum number of results to be returned.
  , nextToken :: Core.Maybe Core.Text
    -- ^ A pagination token for obtaining the next page of results.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListIdentityPoolUsage' value with any optional fields omitted.
mkListIdentityPoolUsage
    :: ListIdentityPoolUsage
mkListIdentityPoolUsage
  = ListIdentityPoolUsage'{maxResults = Core.Nothing,
                           nextToken = Core.Nothing}

-- | The maximum number of results to be returned.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lipuMaxResults :: Lens.Lens' ListIdentityPoolUsage (Core.Maybe Core.Int)
lipuMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lipuMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | A pagination token for obtaining the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lipuNextToken :: Lens.Lens' ListIdentityPoolUsage (Core.Maybe Core.Text)
lipuNextToken = Lens.field @"nextToken"
{-# INLINEABLE lipuNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListIdentityPoolUsage where
        toQuery ListIdentityPoolUsage{..}
          = Core.maybe Core.mempty (Core.toQueryPair "maxResults") maxResults
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "nextToken") nextToken

instance Core.ToHeaders ListIdentityPoolUsage where
        toHeaders ListIdentityPoolUsage{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.AWSRequest ListIdentityPoolUsage where
        type Rs ListIdentityPoolUsage = ListIdentityPoolUsageResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET, Core._rqPath = "/identitypools",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListIdentityPoolUsageResponse' Core.<$>
                   (x Core..:? "Count") Core.<*> x Core..:? "IdentityPoolUsages"
                     Core.<*> x Core..:? "MaxResults"
                     Core.<*> x Core..:? "NextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Returned for a successful ListIdentityPoolUsage request.
--
-- /See:/ 'mkListIdentityPoolUsageResponse' smart constructor.
data ListIdentityPoolUsageResponse = ListIdentityPoolUsageResponse'
  { count :: Core.Maybe Core.Int
    -- ^ Total number of identities for the identity pool.
  , identityPoolUsages :: Core.Maybe [Types.IdentityPoolUsage]
    -- ^ Usage information for the identity pools.
  , maxResults :: Core.Maybe Core.Int
    -- ^ The maximum number of results to be returned.
  , nextToken :: Core.Maybe Core.Text
    -- ^ A pagination token for obtaining the next page of results.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ListIdentityPoolUsageResponse' value with any optional fields omitted.
mkListIdentityPoolUsageResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListIdentityPoolUsageResponse
mkListIdentityPoolUsageResponse responseStatus
  = ListIdentityPoolUsageResponse'{count = Core.Nothing,
                                   identityPoolUsages = Core.Nothing, maxResults = Core.Nothing,
                                   nextToken = Core.Nothing, responseStatus}

-- | Total number of identities for the identity pool.
--
-- /Note:/ Consider using 'count' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lipurrsCount :: Lens.Lens' ListIdentityPoolUsageResponse (Core.Maybe Core.Int)
lipurrsCount = Lens.field @"count"
{-# INLINEABLE lipurrsCount #-}
{-# DEPRECATED count "Use generic-lens or generic-optics with 'count' instead"  #-}

-- | Usage information for the identity pools.
--
-- /Note:/ Consider using 'identityPoolUsages' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lipurrsIdentityPoolUsages :: Lens.Lens' ListIdentityPoolUsageResponse (Core.Maybe [Types.IdentityPoolUsage])
lipurrsIdentityPoolUsages = Lens.field @"identityPoolUsages"
{-# INLINEABLE lipurrsIdentityPoolUsages #-}
{-# DEPRECATED identityPoolUsages "Use generic-lens or generic-optics with 'identityPoolUsages' instead"  #-}

-- | The maximum number of results to be returned.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lipurrsMaxResults :: Lens.Lens' ListIdentityPoolUsageResponse (Core.Maybe Core.Int)
lipurrsMaxResults = Lens.field @"maxResults"
{-# INLINEABLE lipurrsMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | A pagination token for obtaining the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lipurrsNextToken :: Lens.Lens' ListIdentityPoolUsageResponse (Core.Maybe Core.Text)
lipurrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lipurrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lipurrsResponseStatus :: Lens.Lens' ListIdentityPoolUsageResponse Core.Int
lipurrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lipurrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
