{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.GetJourney
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status, configuration, and other settings for a journey.
module Network.AWS.Pinpoint.GetJourney
    (
    -- * Creating a request
      GetJourney (..)
    , mkGetJourney
    -- ** Request lenses
    , gjJourneyId
    , gjApplicationId

    -- * Destructuring the response
    , GetJourneyResponse (..)
    , mkGetJourneyResponse
    -- ** Response lenses
    , gjrrsJourneyResponse
    , gjrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pinpoint.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetJourney' smart constructor.
data GetJourney = GetJourney'
  { journeyId :: Core.Text
    -- ^ The unique identifier for the journey.
  , applicationId :: Core.Text
    -- ^ The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetJourney' value with any optional fields omitted.
mkGetJourney
    :: Core.Text -- ^ 'journeyId'
    -> Core.Text -- ^ 'applicationId'
    -> GetJourney
mkGetJourney journeyId applicationId
  = GetJourney'{journeyId, applicationId}

-- | The unique identifier for the journey.
--
-- /Note:/ Consider using 'journeyId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjJourneyId :: Lens.Lens' GetJourney Core.Text
gjJourneyId = Lens.field @"journeyId"
{-# INLINEABLE gjJourneyId #-}
{-# DEPRECATED journeyId "Use generic-lens or generic-optics with 'journeyId' instead"  #-}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjApplicationId :: Lens.Lens' GetJourney Core.Text
gjApplicationId = Lens.field @"applicationId"
{-# INLINEABLE gjApplicationId #-}
{-# DEPRECATED applicationId "Use generic-lens or generic-optics with 'applicationId' instead"  #-}

instance Core.ToQuery GetJourney where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetJourney where
        toHeaders GetJourney{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.AWSRequest GetJourney where
        type Rs GetJourney = GetJourneyResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath =
                           "/v1/apps/" Core.<> Core.toText applicationId Core.<> "/journeys/"
                             Core.<> Core.toText journeyId,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetJourneyResponse' Core.<$>
                   (Core.eitherParseJSON x) Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetJourneyResponse' smart constructor.
data GetJourneyResponse = GetJourneyResponse'
  { journeyResponse :: Types.JourneyResponse
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'GetJourneyResponse' value with any optional fields omitted.
mkGetJourneyResponse
    :: Types.JourneyResponse -- ^ 'journeyResponse'
    -> Core.Int -- ^ 'responseStatus'
    -> GetJourneyResponse
mkGetJourneyResponse journeyResponse responseStatus
  = GetJourneyResponse'{journeyResponse, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'journeyResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjrrsJourneyResponse :: Lens.Lens' GetJourneyResponse Types.JourneyResponse
gjrrsJourneyResponse = Lens.field @"journeyResponse"
{-# INLINEABLE gjrrsJourneyResponse #-}
{-# DEPRECATED journeyResponse "Use generic-lens or generic-optics with 'journeyResponse' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gjrrsResponseStatus :: Lens.Lens' GetJourneyResponse Core.Int
gjrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gjrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
