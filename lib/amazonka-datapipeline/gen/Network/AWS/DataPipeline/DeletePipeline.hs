{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DataPipeline.DeletePipeline
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a pipeline, its pipeline definition, and its run history. AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners.
--
-- Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline. To temporarily pause a pipeline instead of deleting it, call 'SetStatus' with the status set to @PAUSE@ on individual components. Components that are paused by 'SetStatus' can be resumed.
module Network.AWS.DataPipeline.DeletePipeline
    (
    -- * Creating a request
      DeletePipeline (..)
    , mkDeletePipeline
    -- ** Request lenses
    , dpPipelineId

    -- * Destructuring the response
    , DeletePipelineResponse (..)
    , mkDeletePipelineResponse
    ) where

import qualified Network.AWS.DataPipeline.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for DeletePipeline.
--
-- /See:/ 'mkDeletePipeline' smart constructor.
newtype DeletePipeline = DeletePipeline'
  { pipelineId :: Types.PipelineId
    -- ^ The ID of the pipeline.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeletePipeline' value with any optional fields omitted.
mkDeletePipeline
    :: Types.PipelineId -- ^ 'pipelineId'
    -> DeletePipeline
mkDeletePipeline pipelineId = DeletePipeline'{pipelineId}

-- | The ID of the pipeline.
--
-- /Note:/ Consider using 'pipelineId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dpPipelineId :: Lens.Lens' DeletePipeline Types.PipelineId
dpPipelineId = Lens.field @"pipelineId"
{-# INLINEABLE dpPipelineId #-}
{-# DEPRECATED pipelineId "Use generic-lens or generic-optics with 'pipelineId' instead"  #-}

instance Core.ToQuery DeletePipeline where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeletePipeline where
        toHeaders DeletePipeline{..}
          = Core.pure ("X-Amz-Target", "DataPipeline.DeletePipeline") Core.<>
              Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DeletePipeline where
        toJSON DeletePipeline{..}
          = Core.object
              (Core.catMaybes [Core.Just ("pipelineId" Core..= pipelineId)])

instance Core.AWSRequest DeletePipeline where
        type Rs DeletePipeline = DeletePipelineResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse = Response.receiveNull DeletePipelineResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDeletePipelineResponse' smart constructor.
data DeletePipelineResponse = DeletePipelineResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeletePipelineResponse' value with any optional fields omitted.
mkDeletePipelineResponse
    :: DeletePipelineResponse
mkDeletePipelineResponse = DeletePipelineResponse'
