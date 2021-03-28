{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.GetEventStream
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the event stream settings for an application.
module Network.AWS.Pinpoint.GetEventStream
    (
    -- * Creating a request
      GetEventStream (..)
    , mkGetEventStream
    -- ** Request lenses
    , gesApplicationId

    -- * Destructuring the response
    , GetEventStreamResponse (..)
    , mkGetEventStreamResponse
    -- ** Response lenses
    , gesrrsEventStream
    , gesrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pinpoint.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkGetEventStream' smart constructor.
newtype GetEventStream = GetEventStream'
  { applicationId :: Core.Text
    -- ^ The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetEventStream' value with any optional fields omitted.
mkGetEventStream
    :: Core.Text -- ^ 'applicationId'
    -> GetEventStream
mkGetEventStream applicationId = GetEventStream'{applicationId}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- /Note:/ Consider using 'applicationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gesApplicationId :: Lens.Lens' GetEventStream Core.Text
gesApplicationId = Lens.field @"applicationId"
{-# INLINEABLE gesApplicationId #-}
{-# DEPRECATED applicationId "Use generic-lens or generic-optics with 'applicationId' instead"  #-}

instance Core.ToQuery GetEventStream where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetEventStream where
        toHeaders GetEventStream{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.AWSRequest GetEventStream where
        type Rs GetEventStream = GetEventStreamResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath =
                           "/v1/apps/" Core.<> Core.toText applicationId Core.<>
                             "/eventstream",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetEventStreamResponse' Core.<$>
                   (Core.eitherParseJSON x) Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetEventStreamResponse' smart constructor.
data GetEventStreamResponse = GetEventStreamResponse'
  { eventStream :: Types.EventStream
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetEventStreamResponse' value with any optional fields omitted.
mkGetEventStreamResponse
    :: Types.EventStream -- ^ 'eventStream'
    -> Core.Int -- ^ 'responseStatus'
    -> GetEventStreamResponse
mkGetEventStreamResponse eventStream responseStatus
  = GetEventStreamResponse'{eventStream, responseStatus}

-- | Undocumented field.
--
-- /Note:/ Consider using 'eventStream' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gesrrsEventStream :: Lens.Lens' GetEventStreamResponse Types.EventStream
gesrrsEventStream = Lens.field @"eventStream"
{-# INLINEABLE gesrrsEventStream #-}
{-# DEPRECATED eventStream "Use generic-lens or generic-optics with 'eventStream' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gesrrsResponseStatus :: Lens.Lens' GetEventStreamResponse Core.Int
gesrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gesrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
