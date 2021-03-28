{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.UpdateRadius
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory.
module Network.AWS.DirectoryService.UpdateRadius
    (
    -- * Creating a request
      UpdateRadius (..)
    , mkUpdateRadius
    -- ** Request lenses
    , urDirectoryId
    , urRadiusSettings

    -- * Destructuring the response
    , UpdateRadiusResponse (..)
    , mkUpdateRadiusResponse
    -- ** Response lenses
    , urrrsResponseStatus
    ) where

import qualified Network.AWS.DirectoryService.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the inputs for the 'UpdateRadius' operation.
--
-- /See:/ 'mkUpdateRadius' smart constructor.
data UpdateRadius = UpdateRadius'
  { directoryId :: Types.DirectoryId
    -- ^ The identifier of the directory for which to update the RADIUS server information.
  , radiusSettings :: Types.RadiusSettings
    -- ^ A 'RadiusSettings' object that contains information about the RADIUS server.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateRadius' value with any optional fields omitted.
mkUpdateRadius
    :: Types.DirectoryId -- ^ 'directoryId'
    -> Types.RadiusSettings -- ^ 'radiusSettings'
    -> UpdateRadius
mkUpdateRadius directoryId radiusSettings
  = UpdateRadius'{directoryId, radiusSettings}

-- | The identifier of the directory for which to update the RADIUS server information.
--
-- /Note:/ Consider using 'directoryId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urDirectoryId :: Lens.Lens' UpdateRadius Types.DirectoryId
urDirectoryId = Lens.field @"directoryId"
{-# INLINEABLE urDirectoryId #-}
{-# DEPRECATED directoryId "Use generic-lens or generic-optics with 'directoryId' instead"  #-}

-- | A 'RadiusSettings' object that contains information about the RADIUS server.
--
-- /Note:/ Consider using 'radiusSettings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urRadiusSettings :: Lens.Lens' UpdateRadius Types.RadiusSettings
urRadiusSettings = Lens.field @"radiusSettings"
{-# INLINEABLE urRadiusSettings #-}
{-# DEPRECATED radiusSettings "Use generic-lens or generic-optics with 'radiusSettings' instead"  #-}

instance Core.ToQuery UpdateRadius where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateRadius where
        toHeaders UpdateRadius{..}
          = Core.pure
              ("X-Amz-Target", "DirectoryService_20150416.UpdateRadius")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateRadius where
        toJSON UpdateRadius{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("DirectoryId" Core..= directoryId),
                  Core.Just ("RadiusSettings" Core..= radiusSettings)])

instance Core.AWSRequest UpdateRadius where
        type Rs UpdateRadius = UpdateRadiusResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 UpdateRadiusResponse' Core.<$> (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | Contains the results of the 'UpdateRadius' operation.
--
-- /See:/ 'mkUpdateRadiusResponse' smart constructor.
newtype UpdateRadiusResponse = UpdateRadiusResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateRadiusResponse' value with any optional fields omitted.
mkUpdateRadiusResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateRadiusResponse
mkUpdateRadiusResponse responseStatus
  = UpdateRadiusResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urrrsResponseStatus :: Lens.Lens' UpdateRadiusResponse Core.Int
urrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE urrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
