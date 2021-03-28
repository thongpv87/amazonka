{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.StartFaceDetection
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts asynchronous detection of faces in a stored video.
--
-- Amazon Rekognition Video can detect faces in a video stored in an Amazon S3 bucket. Use 'Video' to specify the bucket name and the filename of the video. @StartFaceDetection@ returns a job identifier (@JobId@ ) that you use to get the results of the operation. When face detection is finished, Amazon Rekognition Video publishes a completion status to the Amazon Simple Notification Service topic that you specify in @NotificationChannel@ . To get the results of the face detection operation, first check that the status value published to the Amazon SNS topic is @SUCCEEDED@ . If so, call 'GetFaceDetection' and pass the job identifier (@JobId@ ) from the initial call to @StartFaceDetection@ .
-- For more information, see Detecting Faces in a Stored Video in the Amazon Rekognition Developer Guide.
module Network.AWS.Rekognition.StartFaceDetection
    (
    -- * Creating a request
      StartFaceDetection (..)
    , mkStartFaceDetection
    -- ** Request lenses
    , sfdVideo
    , sfdClientRequestToken
    , sfdFaceAttributes
    , sfdJobTag
    , sfdNotificationChannel

    -- * Destructuring the response
    , StartFaceDetectionResponse (..)
    , mkStartFaceDetectionResponse
    -- ** Response lenses
    , sfdrrsJobId
    , sfdrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Rekognition.Types as Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkStartFaceDetection' smart constructor.
data StartFaceDetection = StartFaceDetection'
  { video :: Types.Video
    -- ^ The video in which you want to detect faces. The video must be stored in an Amazon S3 bucket.
  , clientRequestToken :: Core.Maybe Types.ClientRequestToken
    -- ^ Idempotent token used to identify the start request. If you use the same token with multiple @StartFaceDetection@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once. 
  , faceAttributes :: Core.Maybe Types.FaceAttributes
    -- ^ The face attributes you want returned.
--
-- @DEFAULT@ - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks. 
-- @ALL@ - All facial attributes are returned.
  , jobTag :: Core.Maybe Types.JobTag
    -- ^ An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
  , notificationChannel :: Core.Maybe Types.NotificationChannel
    -- ^ The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the face detection operation.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartFaceDetection' value with any optional fields omitted.
mkStartFaceDetection
    :: Types.Video -- ^ 'video'
    -> StartFaceDetection
mkStartFaceDetection video
  = StartFaceDetection'{video, clientRequestToken = Core.Nothing,
                        faceAttributes = Core.Nothing, jobTag = Core.Nothing,
                        notificationChannel = Core.Nothing}

-- | The video in which you want to detect faces. The video must be stored in an Amazon S3 bucket.
--
-- /Note:/ Consider using 'video' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfdVideo :: Lens.Lens' StartFaceDetection Types.Video
sfdVideo = Lens.field @"video"
{-# INLINEABLE sfdVideo #-}
{-# DEPRECATED video "Use generic-lens or generic-optics with 'video' instead"  #-}

-- | Idempotent token used to identify the start request. If you use the same token with multiple @StartFaceDetection@ requests, the same @JobId@ is returned. Use @ClientRequestToken@ to prevent the same job from being accidently started more than once. 
--
-- /Note:/ Consider using 'clientRequestToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfdClientRequestToken :: Lens.Lens' StartFaceDetection (Core.Maybe Types.ClientRequestToken)
sfdClientRequestToken = Lens.field @"clientRequestToken"
{-# INLINEABLE sfdClientRequestToken #-}
{-# DEPRECATED clientRequestToken "Use generic-lens or generic-optics with 'clientRequestToken' instead"  #-}

-- | The face attributes you want returned.
--
-- @DEFAULT@ - The following subset of facial attributes are returned: BoundingBox, Confidence, Pose, Quality and Landmarks. 
-- @ALL@ - All facial attributes are returned.
--
-- /Note:/ Consider using 'faceAttributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfdFaceAttributes :: Lens.Lens' StartFaceDetection (Core.Maybe Types.FaceAttributes)
sfdFaceAttributes = Lens.field @"faceAttributes"
{-# INLINEABLE sfdFaceAttributes #-}
{-# DEPRECATED faceAttributes "Use generic-lens or generic-optics with 'faceAttributes' instead"  #-}

-- | An identifier you specify that's returned in the completion notification that's published to your Amazon Simple Notification Service topic. For example, you can use @JobTag@ to group related jobs and identify them in the completion notification.
--
-- /Note:/ Consider using 'jobTag' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfdJobTag :: Lens.Lens' StartFaceDetection (Core.Maybe Types.JobTag)
sfdJobTag = Lens.field @"jobTag"
{-# INLINEABLE sfdJobTag #-}
{-# DEPRECATED jobTag "Use generic-lens or generic-optics with 'jobTag' instead"  #-}

-- | The ARN of the Amazon SNS topic to which you want Amazon Rekognition Video to publish the completion status of the face detection operation.
--
-- /Note:/ Consider using 'notificationChannel' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfdNotificationChannel :: Lens.Lens' StartFaceDetection (Core.Maybe Types.NotificationChannel)
sfdNotificationChannel = Lens.field @"notificationChannel"
{-# INLINEABLE sfdNotificationChannel #-}
{-# DEPRECATED notificationChannel "Use generic-lens or generic-optics with 'notificationChannel' instead"  #-}

instance Core.ToQuery StartFaceDetection where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders StartFaceDetection where
        toHeaders StartFaceDetection{..}
          = Core.pure
              ("X-Amz-Target", "RekognitionService.StartFaceDetection")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON StartFaceDetection where
        toJSON StartFaceDetection{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("Video" Core..= video),
                  ("ClientRequestToken" Core..=) Core.<$> clientRequestToken,
                  ("FaceAttributes" Core..=) Core.<$> faceAttributes,
                  ("JobTag" Core..=) Core.<$> jobTag,
                  ("NotificationChannel" Core..=) Core.<$> notificationChannel])

instance Core.AWSRequest StartFaceDetection where
        type Rs StartFaceDetection = StartFaceDetectionResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 StartFaceDetectionResponse' Core.<$>
                   (x Core..:? "JobId") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkStartFaceDetectionResponse' smart constructor.
data StartFaceDetectionResponse = StartFaceDetectionResponse'
  { jobId :: Core.Maybe Types.JobId
    -- ^ The identifier for the face detection job. Use @JobId@ to identify the job in a subsequent call to @GetFaceDetection@ .
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'StartFaceDetectionResponse' value with any optional fields omitted.
mkStartFaceDetectionResponse
    :: Core.Int -- ^ 'responseStatus'
    -> StartFaceDetectionResponse
mkStartFaceDetectionResponse responseStatus
  = StartFaceDetectionResponse'{jobId = Core.Nothing, responseStatus}

-- | The identifier for the face detection job. Use @JobId@ to identify the job in a subsequent call to @GetFaceDetection@ .
--
-- /Note:/ Consider using 'jobId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfdrrsJobId :: Lens.Lens' StartFaceDetectionResponse (Core.Maybe Types.JobId)
sfdrrsJobId = Lens.field @"jobId"
{-# INLINEABLE sfdrrsJobId #-}
{-# DEPRECATED jobId "Use generic-lens or generic-optics with 'jobId' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
sfdrrsResponseStatus :: Lens.Lens' StartFaceDetectionResponse Core.Int
sfdrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE sfdrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
