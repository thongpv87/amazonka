{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.CancelAuditMitigationActionsTask
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a mitigation action task that is in progress. If the task is not in progress, an InvalidRequestException occurs.
module Network.AWS.IoT.CancelAuditMitigationActionsTask
    (
    -- * Creating a request
      CancelAuditMitigationActionsTask (..)
    , mkCancelAuditMitigationActionsTask
    -- ** Request lenses
    , camatTaskId

    -- * Destructuring the response
    , CancelAuditMitigationActionsTaskResponse (..)
    , mkCancelAuditMitigationActionsTaskResponse
    -- ** Response lenses
    , camatrrsResponseStatus
    ) where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCancelAuditMitigationActionsTask' smart constructor.
newtype CancelAuditMitigationActionsTask = CancelAuditMitigationActionsTask'
  { taskId :: Types.AuditMitigationActionsTaskId
    -- ^ The unique identifier for the task that you want to cancel. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'CancelAuditMitigationActionsTask' value with any optional fields omitted.
mkCancelAuditMitigationActionsTask
    :: Types.AuditMitigationActionsTaskId -- ^ 'taskId'
    -> CancelAuditMitigationActionsTask
mkCancelAuditMitigationActionsTask taskId
  = CancelAuditMitigationActionsTask'{taskId}

-- | The unique identifier for the task that you want to cancel. 
--
-- /Note:/ Consider using 'taskId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
camatTaskId :: Lens.Lens' CancelAuditMitigationActionsTask Types.AuditMitigationActionsTaskId
camatTaskId = Lens.field @"taskId"
{-# INLINEABLE camatTaskId #-}
{-# DEPRECATED taskId "Use generic-lens or generic-optics with 'taskId' instead"  #-}

instance Core.ToQuery CancelAuditMitigationActionsTask where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders CancelAuditMitigationActionsTask where
        toHeaders _ = Core.pure Core.mempty

instance Core.FromJSON CancelAuditMitigationActionsTask where
        toJSON _ = Core.Object Core.mempty

instance Core.AWSRequest CancelAuditMitigationActionsTask where
        type Rs CancelAuditMitigationActionsTask =
             CancelAuditMitigationActionsTaskResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PUT,
                         Core._rqPath =
                           "/audit/mitigationactions/tasks/" Core.<> Core.toText taskId
                             Core.<> "/cancel",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 CancelAuditMitigationActionsTaskResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkCancelAuditMitigationActionsTaskResponse' smart constructor.
newtype CancelAuditMitigationActionsTaskResponse = CancelAuditMitigationActionsTaskResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'CancelAuditMitigationActionsTaskResponse' value with any optional fields omitted.
mkCancelAuditMitigationActionsTaskResponse
    :: Core.Int -- ^ 'responseStatus'
    -> CancelAuditMitigationActionsTaskResponse
mkCancelAuditMitigationActionsTaskResponse responseStatus
  = CancelAuditMitigationActionsTaskResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
camatrrsResponseStatus :: Lens.Lens' CancelAuditMitigationActionsTaskResponse Core.Int
camatrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE camatrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
