{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.DeleteUpload
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an upload given the upload ARN.
module Network.AWS.DeviceFarm.DeleteUpload
    (
    -- * Creating a request
      DeleteUpload (..)
    , mkDeleteUpload
    -- ** Request lenses
    , duArn

    -- * Destructuring the response
    , DeleteUploadResponse (..)
    , mkDeleteUploadResponse
    -- ** Response lenses
    , durrsResponseStatus
    ) where

import qualified Network.AWS.DeviceFarm.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents a request to the delete upload operation.
--
-- /See:/ 'mkDeleteUpload' smart constructor.
newtype DeleteUpload = DeleteUpload'
  { arn :: Types.AmazonResourceName
    -- ^ Represents the Amazon Resource Name (ARN) of the Device Farm upload to delete.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteUpload' value with any optional fields omitted.
mkDeleteUpload
    :: Types.AmazonResourceName -- ^ 'arn'
    -> DeleteUpload
mkDeleteUpload arn = DeleteUpload'{arn}

-- | Represents the Amazon Resource Name (ARN) of the Device Farm upload to delete.
--
-- /Note:/ Consider using 'arn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
duArn :: Lens.Lens' DeleteUpload Types.AmazonResourceName
duArn = Lens.field @"arn"
{-# INLINEABLE duArn #-}
{-# DEPRECATED arn "Use generic-lens or generic-optics with 'arn' instead"  #-}

instance Core.ToQuery DeleteUpload where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteUpload where
        toHeaders DeleteUpload{..}
          = Core.pure ("X-Amz-Target", "DeviceFarm_20150623.DeleteUpload")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DeleteUpload where
        toJSON DeleteUpload{..}
          = Core.object (Core.catMaybes [Core.Just ("arn" Core..= arn)])

instance Core.AWSRequest DeleteUpload where
        type Rs DeleteUpload = DeleteUploadResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 DeleteUploadResponse' Core.<$> (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | Represents the result of a delete upload request.
--
-- /See:/ 'mkDeleteUploadResponse' smart constructor.
newtype DeleteUploadResponse = DeleteUploadResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteUploadResponse' value with any optional fields omitted.
mkDeleteUploadResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DeleteUploadResponse
mkDeleteUploadResponse responseStatus
  = DeleteUploadResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
durrsResponseStatus :: Lens.Lens' DeleteUploadResponse Core.Int
durrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE durrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
