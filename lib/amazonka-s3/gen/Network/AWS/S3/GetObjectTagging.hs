{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.GetObjectTagging
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the tag-set of an object. You send the GET request against the tagging subresource associated with the object.
--
-- To use this operation, you must have permission to perform the @s3:GetObjectTagging@ action. By default, the GET operation returns information about current version of an object. For a versioned bucket, you can have multiple versions of an object in your bucket. To retrieve tags of any other version, use the versionId query parameter. You also need permission for the @s3:GetObjectVersionTagging@ action.
-- By default, the bucket owner has this permission and can grant this permission to others.
-- For information about the Amazon S3 object tagging feature, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/object-tagging.html Object Tagging> .
-- The following operation is related to @GetObjectTagging@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectTagging.html PutObjectTagging> 
--
--
module Network.AWS.S3.GetObjectTagging
    (
    -- * Creating a request
      GetObjectTagging (..)
    , mkGetObjectTagging
    -- ** Request lenses
    , gotfBucket
    , gotfKey
    , gotfExpectedBucketOwner
    , gotfVersionId

    -- * Destructuring the response
    , GetObjectTaggingResponse (..)
    , mkGetObjectTaggingResponse
    -- ** Response lenses
    , gotrfrsTagSet
    , gotrfrsVersionId
    , gotrfrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.S3.Types as Types

-- | /See:/ 'mkGetObjectTagging' smart constructor.
data GetObjectTagging = GetObjectTagging'
  { bucket :: Types.BucketName
    -- ^ The bucket name containing the object for which to get the tagging information. 
--
-- When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ .
-- When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
  , key :: Types.Key
    -- ^ Object key for which to get the tagging information.
  , expectedBucketOwner :: Core.Maybe Types.AccountId
    -- ^ The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
  , versionId :: Core.Maybe Types.ObjectVersionId
    -- ^ The versionId of the object for which to get the tagging information.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetObjectTagging' value with any optional fields omitted.
mkGetObjectTagging
    :: Types.BucketName -- ^ 'bucket'
    -> Types.Key -- ^ 'key'
    -> GetObjectTagging
mkGetObjectTagging bucket key
  = GetObjectTagging'{bucket, key,
                      expectedBucketOwner = Core.Nothing, versionId = Core.Nothing}

-- | The bucket name containing the object for which to get the tagging information. 
--
-- When using this API with an access point, you must direct requests to the access point hostname. The access point hostname takes the form /AccessPointName/ -/AccountId/ .s3-accesspoint./Region/ .amazonaws.com. When using this operation with an access point through the AWS SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html Using Access Points> in the /Amazon Simple Storage Service Developer Guide/ .
-- When using this API with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form /AccessPointName/ -/AccountId/ ./outpostID/ .s3-outposts./Region/ .amazonaws.com. When using this operation using S3 on Outposts through the AWS SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html Using S3 on Outposts> in the /Amazon Simple Storage Service Developer Guide/ .
--
-- /Note:/ Consider using 'bucket' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotfBucket :: Lens.Lens' GetObjectTagging Types.BucketName
gotfBucket = Lens.field @"bucket"
{-# INLINEABLE gotfBucket #-}
{-# DEPRECATED bucket "Use generic-lens or generic-optics with 'bucket' instead"  #-}

-- | Object key for which to get the tagging information.
--
-- /Note:/ Consider using 'key' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotfKey :: Lens.Lens' GetObjectTagging Types.Key
gotfKey = Lens.field @"key"
{-# INLINEABLE gotfKey #-}
{-# DEPRECATED key "Use generic-lens or generic-optics with 'key' instead"  #-}

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- /Note:/ Consider using 'expectedBucketOwner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotfExpectedBucketOwner :: Lens.Lens' GetObjectTagging (Core.Maybe Types.AccountId)
gotfExpectedBucketOwner = Lens.field @"expectedBucketOwner"
{-# INLINEABLE gotfExpectedBucketOwner #-}
{-# DEPRECATED expectedBucketOwner "Use generic-lens or generic-optics with 'expectedBucketOwner' instead"  #-}

-- | The versionId of the object for which to get the tagging information.
--
-- /Note:/ Consider using 'versionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotfVersionId :: Lens.Lens' GetObjectTagging (Core.Maybe Types.ObjectVersionId)
gotfVersionId = Lens.field @"versionId"
{-# INLINEABLE gotfVersionId #-}
{-# DEPRECATED versionId "Use generic-lens or generic-optics with 'versionId' instead"  #-}

instance Core.ToQuery GetObjectTagging where
        toQuery GetObjectTagging{..}
          = Core.maybe Core.mempty (Core.toQueryPair "versionId") versionId
              Core.<> Core.toQueryPair "tagging" ("" :: Core.Text)

instance Core.ToHeaders GetObjectTagging where
        toHeaders GetObjectTagging{..}
          = Core.toHeaders "x-amz-expected-bucket-owner" expectedBucketOwner

instance Core.AWSRequest GetObjectTagging where
        type Rs GetObjectTagging = GetObjectTaggingResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath =
                           "/" Core.<> Core.toText bucket Core.<> "/" Core.<> Core.toText key,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXML
              (\ s h x ->
                 GetObjectTaggingResponse' Core.<$>
                   (x Core..@ "TagSet" Core..@! Core.mempty Core..<@>
                      Core.parseXMLList "Tag")
                     Core.<*> Core.parseHeaderMaybe "x-amz-version-id" h
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkGetObjectTaggingResponse' smart constructor.
data GetObjectTaggingResponse = GetObjectTaggingResponse'
  { tagSet :: [Types.Tag]
    -- ^ Contains the tag set.
  , versionId :: Core.Maybe Types.ObjectVersionId
    -- ^ The versionId of the object for which you got the tagging information.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetObjectTaggingResponse' value with any optional fields omitted.
mkGetObjectTaggingResponse
    :: Core.Int -- ^ 'responseStatus'
    -> GetObjectTaggingResponse
mkGetObjectTaggingResponse responseStatus
  = GetObjectTaggingResponse'{tagSet = Core.mempty,
                              versionId = Core.Nothing, responseStatus}

-- | Contains the tag set.
--
-- /Note:/ Consider using 'tagSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotrfrsTagSet :: Lens.Lens' GetObjectTaggingResponse [Types.Tag]
gotrfrsTagSet = Lens.field @"tagSet"
{-# INLINEABLE gotrfrsTagSet #-}
{-# DEPRECATED tagSet "Use generic-lens or generic-optics with 'tagSet' instead"  #-}

-- | The versionId of the object for which you got the tagging information.
--
-- /Note:/ Consider using 'versionId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotrfrsVersionId :: Lens.Lens' GetObjectTaggingResponse (Core.Maybe Types.ObjectVersionId)
gotrfrsVersionId = Lens.field @"versionId"
{-# INLINEABLE gotrfrsVersionId #-}
{-# DEPRECATED versionId "Use generic-lens or generic-optics with 'versionId' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
gotrfrsResponseStatus :: Lens.Lens' GetObjectTaggingResponse Core.Int
gotrfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE gotrfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
