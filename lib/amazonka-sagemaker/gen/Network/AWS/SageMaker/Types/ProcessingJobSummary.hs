{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProcessingJobSummary
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SageMaker.Types.ProcessingJobSummary
  ( ProcessingJobSummary (..)
  -- * Smart constructor
  , mkProcessingJobSummary
  -- * Lenses
  , pjsProcessingJobName
  , pjsProcessingJobArn
  , pjsCreationTime
  , pjsProcessingJobStatus
  , pjsExitMessage
  , pjsFailureReason
  , pjsLastModifiedTime
  , pjsProcessingEndTime
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SageMaker.Types.ExitMessage as Types
import qualified Network.AWS.SageMaker.Types.FailureReason as Types
import qualified Network.AWS.SageMaker.Types.ProcessingJobArn as Types
import qualified Network.AWS.SageMaker.Types.ProcessingJobName as Types
import qualified Network.AWS.SageMaker.Types.ProcessingJobStatus as Types

-- | Summary of information about a processing job.
--
-- /See:/ 'mkProcessingJobSummary' smart constructor.
data ProcessingJobSummary = ProcessingJobSummary'
  { processingJobName :: Types.ProcessingJobName
    -- ^ The name of the processing job.
  , processingJobArn :: Types.ProcessingJobArn
    -- ^ The Amazon Resource Name (ARN) of the processing job..
  , creationTime :: Core.NominalDiffTime
    -- ^ The time at which the processing job was created.
  , processingJobStatus :: Types.ProcessingJobStatus
    -- ^ The status of the processing job.
  , exitMessage :: Core.Maybe Types.ExitMessage
    -- ^ An optional string, up to one KB in size, that contains metadata from the processing container when the processing job exits.
  , failureReason :: Core.Maybe Types.FailureReason
    -- ^ A string, up to one KB in size, that contains the reason a processing job failed, if it failed.
  , lastModifiedTime :: Core.Maybe Core.NominalDiffTime
    -- ^ A timestamp that indicates the last time the processing job was modified.
  , processingEndTime :: Core.Maybe Core.NominalDiffTime
    -- ^ The time at which the processing job completed.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'ProcessingJobSummary' value with any optional fields omitted.
mkProcessingJobSummary
    :: Types.ProcessingJobName -- ^ 'processingJobName'
    -> Types.ProcessingJobArn -- ^ 'processingJobArn'
    -> Core.NominalDiffTime -- ^ 'creationTime'
    -> Types.ProcessingJobStatus -- ^ 'processingJobStatus'
    -> ProcessingJobSummary
mkProcessingJobSummary processingJobName processingJobArn
  creationTime processingJobStatus
  = ProcessingJobSummary'{processingJobName, processingJobArn,
                          creationTime, processingJobStatus, exitMessage = Core.Nothing,
                          failureReason = Core.Nothing, lastModifiedTime = Core.Nothing,
                          processingEndTime = Core.Nothing}

-- | The name of the processing job.
--
-- /Note:/ Consider using 'processingJobName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pjsProcessingJobName :: Lens.Lens' ProcessingJobSummary Types.ProcessingJobName
pjsProcessingJobName = Lens.field @"processingJobName"
{-# INLINEABLE pjsProcessingJobName #-}
{-# DEPRECATED processingJobName "Use generic-lens or generic-optics with 'processingJobName' instead"  #-}

-- | The Amazon Resource Name (ARN) of the processing job..
--
-- /Note:/ Consider using 'processingJobArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pjsProcessingJobArn :: Lens.Lens' ProcessingJobSummary Types.ProcessingJobArn
pjsProcessingJobArn = Lens.field @"processingJobArn"
{-# INLINEABLE pjsProcessingJobArn #-}
{-# DEPRECATED processingJobArn "Use generic-lens or generic-optics with 'processingJobArn' instead"  #-}

-- | The time at which the processing job was created.
--
-- /Note:/ Consider using 'creationTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pjsCreationTime :: Lens.Lens' ProcessingJobSummary Core.NominalDiffTime
pjsCreationTime = Lens.field @"creationTime"
{-# INLINEABLE pjsCreationTime #-}
{-# DEPRECATED creationTime "Use generic-lens or generic-optics with 'creationTime' instead"  #-}

-- | The status of the processing job.
--
-- /Note:/ Consider using 'processingJobStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pjsProcessingJobStatus :: Lens.Lens' ProcessingJobSummary Types.ProcessingJobStatus
pjsProcessingJobStatus = Lens.field @"processingJobStatus"
{-# INLINEABLE pjsProcessingJobStatus #-}
{-# DEPRECATED processingJobStatus "Use generic-lens or generic-optics with 'processingJobStatus' instead"  #-}

-- | An optional string, up to one KB in size, that contains metadata from the processing container when the processing job exits.
--
-- /Note:/ Consider using 'exitMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pjsExitMessage :: Lens.Lens' ProcessingJobSummary (Core.Maybe Types.ExitMessage)
pjsExitMessage = Lens.field @"exitMessage"
{-# INLINEABLE pjsExitMessage #-}
{-# DEPRECATED exitMessage "Use generic-lens or generic-optics with 'exitMessage' instead"  #-}

-- | A string, up to one KB in size, that contains the reason a processing job failed, if it failed.
--
-- /Note:/ Consider using 'failureReason' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pjsFailureReason :: Lens.Lens' ProcessingJobSummary (Core.Maybe Types.FailureReason)
pjsFailureReason = Lens.field @"failureReason"
{-# INLINEABLE pjsFailureReason #-}
{-# DEPRECATED failureReason "Use generic-lens or generic-optics with 'failureReason' instead"  #-}

-- | A timestamp that indicates the last time the processing job was modified.
--
-- /Note:/ Consider using 'lastModifiedTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pjsLastModifiedTime :: Lens.Lens' ProcessingJobSummary (Core.Maybe Core.NominalDiffTime)
pjsLastModifiedTime = Lens.field @"lastModifiedTime"
{-# INLINEABLE pjsLastModifiedTime #-}
{-# DEPRECATED lastModifiedTime "Use generic-lens or generic-optics with 'lastModifiedTime' instead"  #-}

-- | The time at which the processing job completed.
--
-- /Note:/ Consider using 'processingEndTime' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
pjsProcessingEndTime :: Lens.Lens' ProcessingJobSummary (Core.Maybe Core.NominalDiffTime)
pjsProcessingEndTime = Lens.field @"processingEndTime"
{-# INLINEABLE pjsProcessingEndTime #-}
{-# DEPRECATED processingEndTime "Use generic-lens or generic-optics with 'processingEndTime' instead"  #-}

instance Core.FromJSON ProcessingJobSummary where
        parseJSON
          = Core.withObject "ProcessingJobSummary" Core.$
              \ x ->
                ProcessingJobSummary' Core.<$>
                  (x Core..: "ProcessingJobName") Core.<*>
                    x Core..: "ProcessingJobArn"
                    Core.<*> x Core..: "CreationTime"
                    Core.<*> x Core..: "ProcessingJobStatus"
                    Core.<*> x Core..:? "ExitMessage"
                    Core.<*> x Core..:? "FailureReason"
                    Core.<*> x Core..:? "LastModifiedTime"
                    Core.<*> x Core..:? "ProcessingEndTime"
