{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.GetStreamingDistributionConfig
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the configuration information about a streaming distribution. 
module Network.AWS.CloudFront.GetStreamingDistributionConfig
    (
    -- * Creating a request
      GetStreamingDistributionConfig (..)
    , mkGetStreamingDistributionConfig
    -- ** Request lenses
    , gsdcId

    -- * Destructuring the response
    , GetStreamingDistributionConfigResponse (..)
    , mkGetStreamingDistributionConfigResponse
    -- ** Response lenses
    , gsdcrrsETag
    , gsdcrrsStreamingDistributionConfig
    , gsdcrrsResponseStatus
    ) where

import qualified Network.AWS.CloudFront.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | To request to get a streaming distribution configuration.
--
-- /See:/ 'mkGetStreamingDistributionConfig' smart constructor.
newtype GetStreamingDistributionConfig = GetStreamingDistributionConfig'
  { id :: Core.Text
    -- ^ The streaming distribution's ID.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetStreamingDistributionConfig' value with any optional fields omitted.
mkGetStreamingDistributionConfig
    :: Core.Text -- ^ 'id'
    -> GetStreamingDistributionConfig
mkGetStreamingDistributionConfig id
  = GetStreamingDistributionConfig'{id}

-- | The streaming distribution's ID.
--
-- /Note:/ Consider using 'id' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsdcId :: Lens.Lens' GetStreamingDistributionConfig Core.Text
gsdcId = Lens.field @"id"
{-# INLINEABLE gsdcId #-}
{-# DEPRECATED id "Use generic-lens or generic-optics with 'id' instead"  #-}

instance Core.ToQuery GetStreamingDistributionConfig where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetStreamingDistributionConfig where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest GetStreamingDistributionConfig where
        type Rs GetStreamingDistributionConfig =
             GetStreamingDistributionConfigResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath =
                           "/2020-05-31/streaming-distribution/" Core.<> Core.toText id
                             Core.<> "/config",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXML
              (\ s h x ->
                 GetStreamingDistributionConfigResponse' Core.<$>
                   (Core.parseHeaderMaybe "ETag" h) Core.<*> Core.parseXML x Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | The returned result of the corresponding request.
--
-- /See:/ 'mkGetStreamingDistributionConfigResponse' smart constructor.
data GetStreamingDistributionConfigResponse = GetStreamingDistributionConfigResponse'
  { eTag :: Core.Maybe Core.Text
    -- ^ The current version of the configuration. For example: @E2QWRUHAPOMQZL@ . 
  , streamingDistributionConfig :: Core.Maybe Types.StreamingDistributionConfig
    -- ^ The streaming distribution's configuration information.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetStreamingDistributionConfigResponse' value with any optional fields omitted.
mkGetStreamingDistributionConfigResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetStreamingDistributionConfigResponse
mkGetStreamingDistributionConfigResponse responseStatus
  = GetStreamingDistributionConfigResponse'{eTag = Core.Nothing,
                                            streamingDistributionConfig = Core.Nothing,
                                            responseStatus}

-- | The current version of the configuration. For example: @E2QWRUHAPOMQZL@ . 
--
-- /Note:/ Consider using 'eTag' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsdcrrsETag :: Lens.Lens' GetStreamingDistributionConfigResponse (Core.Maybe Core.Text)
gsdcrrsETag = Lens.field @"eTag"
{-# INLINEABLE gsdcrrsETag #-}
{-# DEPRECATED eTag "Use generic-lens or generic-optics with 'eTag' instead"  #-}

-- | The streaming distribution's configuration information.
--
-- /Note:/ Consider using 'streamingDistributionConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsdcrrsStreamingDistributionConfig :: Lens.Lens' GetStreamingDistributionConfigResponse (Core.Maybe Types.StreamingDistributionConfig)
gsdcrrsStreamingDistributionConfig = Lens.field @"streamingDistributionConfig"
{-# INLINEABLE gsdcrrsStreamingDistributionConfig #-}
{-# DEPRECATED streamingDistributionConfig "Use generic-lens or generic-optics with 'streamingDistributionConfig' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gsdcrrsResponseStatus :: Lens.Lens' GetStreamingDistributionConfigResponse Core.Int
gsdcrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gsdcrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
