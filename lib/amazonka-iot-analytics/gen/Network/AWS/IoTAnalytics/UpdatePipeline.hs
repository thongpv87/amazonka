{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.UpdatePipeline
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a pipeline. You must specify both a @channel@ and a @datastore@ activity and, optionally, as many as 23 additional activities in the @pipelineActivities@ array.
module Network.AWS.IoTAnalytics.UpdatePipeline
    (
    -- * Creating a request
      UpdatePipeline (..)
    , mkUpdatePipeline
    -- ** Request lenses
    , upPipelineName
    , upPipelineActivities

    -- * Destructuring the response
    , UpdatePipelineResponse (..)
    , mkUpdatePipelineResponse
    ) where

import qualified Network.AWS.IoTAnalytics.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdatePipeline' smart constructor.
data UpdatePipeline = UpdatePipeline'
  { pipelineName :: Types.PipelineName
    -- ^ The name of the pipeline to update.
  , pipelineActivities :: Core.NonEmpty Types.PipelineActivity
    -- ^ A list of @PipelineActivity@ objects. Activities perform transformations on your messages, such as removing, renaming or adding message attributes; filtering messages based on attribute values; invoking your Lambda functions on messages for advanced processing; or performing mathematical transformations to normalize device data.
--
-- The list can be 2-25 @PipelineActivity@ objects and must contain both a @channel@ and a @datastore@ activity. Each entry in the list must contain only one activity. For example:
-- @pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ... ]@ 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdatePipeline' value with any optional fields omitted.
mkUpdatePipeline
    :: Types.PipelineName -- ^ 'pipelineName'
    -> Core.NonEmpty Types.PipelineActivity -- ^ 'pipelineActivities'
    -> UpdatePipeline
mkUpdatePipeline pipelineName pipelineActivities
  = UpdatePipeline'{pipelineName, pipelineActivities}

-- | The name of the pipeline to update.
--
-- /Note:/ Consider using 'pipelineName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
upPipelineName :: Lens.Lens' UpdatePipeline Types.PipelineName
upPipelineName = Lens.field @"pipelineName"
{-# INLINEABLE upPipelineName #-}
{-# DEPRECATED pipelineName "Use generic-lens or generic-optics with 'pipelineName' instead"  #-}

-- | A list of @PipelineActivity@ objects. Activities perform transformations on your messages, such as removing, renaming or adding message attributes; filtering messages based on attribute values; invoking your Lambda functions on messages for advanced processing; or performing mathematical transformations to normalize device data.
--
-- The list can be 2-25 @PipelineActivity@ objects and must contain both a @channel@ and a @datastore@ activity. Each entry in the list must contain only one activity. For example:
-- @pipelineActivities = [ { "channel": { ... } }, { "lambda": { ... } }, ... ]@ 
--
-- /Note:/ Consider using 'pipelineActivities' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
upPipelineActivities :: Lens.Lens' UpdatePipeline (Core.NonEmpty Types.PipelineActivity)
upPipelineActivities = Lens.field @"pipelineActivities"
{-# INLINEABLE upPipelineActivities #-}
{-# DEPRECATED pipelineActivities "Use generic-lens or generic-optics with 'pipelineActivities' instead"  #-}

instance Core.ToQuery UpdatePipeline where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdatePipeline where
        toHeaders _ = Core.pure Core.mempty

instance Core.FromJSON UpdatePipeline where
        toJSON UpdatePipeline{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("pipelineActivities" Core..= pipelineActivities)])

instance Core.AWSRequest UpdatePipeline where
        type Rs UpdatePipeline = UpdatePipelineResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PUT,
                         Core._rqPath = "/pipelines/" Core.<> Core.toText pipelineName,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse = Response.receiveNull UpdatePipelineResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdatePipelineResponse' smart constructor.
data UpdatePipelineResponse = UpdatePipelineResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdatePipelineResponse' value with any optional fields omitted.
mkUpdatePipelineResponse
    :: UpdatePipelineResponse
mkUpdatePipelineResponse = UpdatePipelineResponse'
