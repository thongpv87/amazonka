{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Translate.DeleteParallelData
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a parallel data resource in Amazon Translate.
module Network.AWS.Translate.DeleteParallelData
    (
    -- * Creating a request
      DeleteParallelData (..)
    , mkDeleteParallelData
    -- ** Request lenses
    , dpdName

    -- * Destructuring the response
    , DeleteParallelDataResponse (..)
    , mkDeleteParallelDataResponse
    -- ** Response lenses
    , dpdrrsName
    , dpdrrsStatus
    , dpdrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Translate.Types as Types

-- | /See:/ 'mkDeleteParallelData' smart constructor.
newtype DeleteParallelData = DeleteParallelData'
  { name :: Types.ResourceName
    -- ^ The name of the parallel data resource that is being deleted.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteParallelData' value with any optional fields omitted.
mkDeleteParallelData
    :: Types.ResourceName -- ^ 'name'
    -> DeleteParallelData
mkDeleteParallelData name = DeleteParallelData'{name}

-- | The name of the parallel data resource that is being deleted.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpdName :: Lens.Lens' DeleteParallelData Types.ResourceName
dpdName = Lens.field @"name"
{-# INLINEABLE dpdName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.ToQuery DeleteParallelData where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteParallelData where
        toHeaders DeleteParallelData{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSShineFrontendService_20170701.DeleteParallelData")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DeleteParallelData where
        toJSON DeleteParallelData{..}
          = Core.object (Core.catMaybes [Core.Just ("Name" Core..= name)])

instance Core.AWSRequest DeleteParallelData where
        type Rs DeleteParallelData = DeleteParallelDataResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DeleteParallelDataResponse' Core.<$>
                   (x Core..:? "Name") Core.<*> x Core..:? "Status" Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDeleteParallelDataResponse' smart constructor.
data DeleteParallelDataResponse = DeleteParallelDataResponse'
  { name :: Core.Maybe Types.ResourceName
    -- ^ The name of the parallel data resource that is being deleted.
  , status :: Core.Maybe Types.ParallelDataStatus
    -- ^ The status of the parallel data deletion.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteParallelDataResponse' value with any optional fields omitted.
mkDeleteParallelDataResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DeleteParallelDataResponse
mkDeleteParallelDataResponse responseStatus
  = DeleteParallelDataResponse'{name = Core.Nothing,
                                status = Core.Nothing, responseStatus}

-- | The name of the parallel data resource that is being deleted.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpdrrsName :: Lens.Lens' DeleteParallelDataResponse (Core.Maybe Types.ResourceName)
dpdrrsName = Lens.field @"name"
{-# INLINEABLE dpdrrsName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | The status of the parallel data deletion.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpdrrsStatus :: Lens.Lens' DeleteParallelDataResponse (Core.Maybe Types.ParallelDataStatus)
dpdrrsStatus = Lens.field @"status"
{-# INLINEABLE dpdrrsStatus #-}
{-# DEPRECATED status "Use generic-lens or generic-optics with 'status' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpdrrsResponseStatus :: Lens.Lens' DeleteParallelDataResponse Core.Int
dpdrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dpdrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
