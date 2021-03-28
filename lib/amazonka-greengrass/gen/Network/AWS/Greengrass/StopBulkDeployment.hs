{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.StopBulkDeployment
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.
module Network.AWS.Greengrass.StopBulkDeployment
    (
    -- * Creating a request
      StopBulkDeployment (..)
    , mkStopBulkDeployment
    -- ** Request lenses
    , sbdBulkDeploymentId

    -- * Destructuring the response
    , StopBulkDeploymentResponse (..)
    , mkStopBulkDeploymentResponse
    -- ** Response lenses
    , sbdrrsResponseStatus
    ) where

import qualified Network.AWS.Greengrass.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStopBulkDeployment' smart constructor.
newtype StopBulkDeployment = StopBulkDeployment'
  { bulkDeploymentId :: Core.Text
    -- ^ The ID of the bulk deployment.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopBulkDeployment' value with any optional fields omitted.
mkStopBulkDeployment
    :: Core.Text -- ^ 'bulkDeploymentId'
    -> StopBulkDeployment
mkStopBulkDeployment bulkDeploymentId
  = StopBulkDeployment'{bulkDeploymentId}

-- | The ID of the bulk deployment.
--
-- /Note:/ Consider using 'bulkDeploymentId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sbdBulkDeploymentId :: Lens.Lens' StopBulkDeployment Core.Text
sbdBulkDeploymentId = Lens.field @"bulkDeploymentId"
{-# INLINEABLE sbdBulkDeploymentId #-}
{-# DEPRECATED bulkDeploymentId "Use generic-lens or generic-optics with 'bulkDeploymentId' instead"  #-}

instance Core.ToQuery StopBulkDeployment where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders StopBulkDeployment where
        toHeaders StopBulkDeployment{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON StopBulkDeployment where
        toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest StopBulkDeployment where
        type Rs StopBulkDeployment = StopBulkDeploymentResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PUT,
                         Core._rqPath =
                           "/greengrass/bulk/deployments/" Core.<>
                             Core.toText bulkDeploymentId
                             Core.<> "/$stop",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 StopBulkDeploymentResponse' Core.<$> (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkStopBulkDeploymentResponse' smart constructor.
newtype StopBulkDeploymentResponse = StopBulkDeploymentResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'StopBulkDeploymentResponse' value with any optional fields omitted.
mkStopBulkDeploymentResponse
    :: Core.Int -- ^ 'responseStatus'
    -> StopBulkDeploymentResponse
mkStopBulkDeploymentResponse responseStatus
  = StopBulkDeploymentResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sbdrrsResponseStatus :: Lens.Lens' StopBulkDeploymentResponse Core.Int
sbdrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE sbdrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
