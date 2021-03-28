{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.GetSnapshotLimits
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains the manual snapshot limits for a directory.
module Network.AWS.DirectoryService.GetSnapshotLimits
    (
    -- * Creating a request
      GetSnapshotLimits (..)
    , mkGetSnapshotLimits
    -- ** Request lenses
    , gslDirectoryId

    -- * Destructuring the response
    , GetSnapshotLimitsResponse (..)
    , mkGetSnapshotLimitsResponse
    -- ** Response lenses
    , gslrrsSnapshotLimits
    , gslrrsResponseStatus
    ) where

import qualified Network.AWS.DirectoryService.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the inputs for the 'GetSnapshotLimits' operation.
--
-- /See:/ 'mkGetSnapshotLimits' smart constructor.
newtype GetSnapshotLimits = GetSnapshotLimits'
  { directoryId :: Types.DirectoryId
    -- ^ Contains the identifier of the directory to obtain the limits for.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'GetSnapshotLimits' value with any optional fields omitted.
mkGetSnapshotLimits
    :: Types.DirectoryId -- ^ 'directoryId'
    -> GetSnapshotLimits
mkGetSnapshotLimits directoryId = GetSnapshotLimits'{directoryId}

-- | Contains the identifier of the directory to obtain the limits for.
--
-- /Note:/ Consider using 'directoryId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gslDirectoryId :: Lens.Lens' GetSnapshotLimits Types.DirectoryId
gslDirectoryId = Lens.field @"directoryId"
{-# INLINEABLE gslDirectoryId #-}
{-# DEPRECATED directoryId "Use generic-lens or generic-optics with 'directoryId' instead"  #-}

instance Core.ToQuery GetSnapshotLimits where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders GetSnapshotLimits where
        toHeaders GetSnapshotLimits{..}
          = Core.pure
              ("X-Amz-Target", "DirectoryService_20150416.GetSnapshotLimits")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON GetSnapshotLimits where
        toJSON GetSnapshotLimits{..}
          = Core.object
              (Core.catMaybes [Core.Just ("DirectoryId" Core..= directoryId)])

instance Core.AWSRequest GetSnapshotLimits where
        type Rs GetSnapshotLimits = GetSnapshotLimitsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 GetSnapshotLimitsResponse' Core.<$>
                   (x Core..:? "SnapshotLimits") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Contains the results of the 'GetSnapshotLimits' operation.
--
-- /See:/ 'mkGetSnapshotLimitsResponse' smart constructor.
data GetSnapshotLimitsResponse = GetSnapshotLimitsResponse'
  { snapshotLimits :: Core.Maybe Types.SnapshotLimits
    -- ^ A 'SnapshotLimits' object that contains the manual snapshot limits for the specified directory.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetSnapshotLimitsResponse' value with any optional fields omitted.
mkGetSnapshotLimitsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetSnapshotLimitsResponse
mkGetSnapshotLimitsResponse responseStatus
  = GetSnapshotLimitsResponse'{snapshotLimits = Core.Nothing,
                               responseStatus}

-- | A 'SnapshotLimits' object that contains the manual snapshot limits for the specified directory.
--
-- /Note:/ Consider using 'snapshotLimits' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gslrrsSnapshotLimits :: Lens.Lens' GetSnapshotLimitsResponse (Core.Maybe Types.SnapshotLimits)
gslrrsSnapshotLimits = Lens.field @"snapshotLimits"
{-# INLINEABLE gslrrsSnapshotLimits #-}
{-# DEPRECATED snapshotLimits "Use generic-lens or generic-optics with 'snapshotLimits' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gslrrsResponseStatus :: Lens.Lens' GetSnapshotLimitsResponse Core.Int
gslrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gslrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
