{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.ListOfferingPromotions
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a @NotEligible@ error if the caller is not permitted to invoke the operation. Contact <mailto:aws-devicefarm-support@amazon.com aws-devicefarm-support@amazon.com> if you must be able to invoke this operation.
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListOfferingPromotions
    (
    -- * Creating a request
      ListOfferingPromotions (..)
    , mkListOfferingPromotions
    -- ** Request lenses
    , lopNextToken

    -- * Destructuring the response
    , ListOfferingPromotionsResponse (..)
    , mkListOfferingPromotionsResponse
    -- ** Response lenses
    , loprrsNextToken
    , loprrsOfferingPromotions
    , loprrsResponseStatus
    ) where

import qualified Network.AWS.DeviceFarm.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkListOfferingPromotions' smart constructor.
newtype ListOfferingPromotions = ListOfferingPromotions'
  { nextToken :: Core.Maybe Types.PaginationToken
    -- ^ An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'ListOfferingPromotions' value with any optional fields omitted.
mkListOfferingPromotions
    :: ListOfferingPromotions
mkListOfferingPromotions
  = ListOfferingPromotions'{nextToken = Core.Nothing}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lopNextToken :: Lens.Lens' ListOfferingPromotions (Core.Maybe Types.PaginationToken)
lopNextToken = Lens.field @"nextToken"
{-# INLINEABLE lopNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

instance Core.ToQuery ListOfferingPromotions where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListOfferingPromotions where
        toHeaders ListOfferingPromotions{..}
          = Core.pure
              ("X-Amz-Target", "DeviceFarm_20150623.ListOfferingPromotions")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListOfferingPromotions where
        toJSON ListOfferingPromotions{..}
          = Core.object
              (Core.catMaybes [("nextToken" Core..=) Core.<$> nextToken])

instance Core.AWSRequest ListOfferingPromotions where
        type Rs ListOfferingPromotions = ListOfferingPromotionsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListOfferingPromotionsResponse' Core.<$>
                   (x Core..:? "nextToken") Core.<*> x Core..:? "offeringPromotions"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListOfferingPromotions where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"offeringPromotions" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkListOfferingPromotionsResponse' smart constructor.
data ListOfferingPromotionsResponse = ListOfferingPromotionsResponse'
  { nextToken :: Core.Maybe Types.PaginationToken
    -- ^ An identifier to be used in the next call to this operation, to return the next set of items in the list.
  , offeringPromotions :: Core.Maybe [Types.OfferingPromotion]
    -- ^ Information about the offering promotions.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListOfferingPromotionsResponse' value with any optional fields omitted.
mkListOfferingPromotionsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListOfferingPromotionsResponse
mkListOfferingPromotionsResponse responseStatus
  = ListOfferingPromotionsResponse'{nextToken = Core.Nothing,
                                    offeringPromotions = Core.Nothing, responseStatus}

-- | An identifier to be used in the next call to this operation, to return the next set of items in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
loprrsNextToken :: Lens.Lens' ListOfferingPromotionsResponse (Core.Maybe Types.PaginationToken)
loprrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE loprrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | Information about the offering promotions.
--
-- /Note:/ Consider using 'offeringPromotions' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
loprrsOfferingPromotions :: Lens.Lens' ListOfferingPromotionsResponse (Core.Maybe [Types.OfferingPromotion])
loprrsOfferingPromotions = Lens.field @"offeringPromotions"
{-# INLINEABLE loprrsOfferingPromotions #-}
{-# DEPRECATED offeringPromotions "Use generic-lens or generic-optics with 'offeringPromotions' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
loprrsResponseStatus :: Lens.Lens' ListOfferingPromotionsResponse Core.Int
loprrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE loprrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
