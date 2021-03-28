{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.ListBucketAnalyticsConfigurations
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the analytics configurations for the bucket. You can have up to 1,000 analytics configurations per bucket.
--
-- This operation supports list pagination and does not return more than 100 configurations at a time. You should always check the @IsTruncated@ element in the response. If there are no more configurations to list, @IsTruncated@ is set to false. If there are more configurations to list, @IsTruncated@ is set to true, and there will be a value in @NextContinuationToken@ . You use the @NextContinuationToken@ value to continue the pagination of the list by passing the value in continuation-token in the request to @GET@ the next page.
-- To use this operation, you must have permissions to perform the @s3:GetAnalyticsConfiguration@ action. The bucket owner has this permission by default. The bucket owner can grant this permission to others. For more information about permissions, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources Permissions Related to Bucket Subresource Operations> and <https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html Managing Access Permissions to Your Amazon S3 Resources> .
-- For information about Amazon S3 analytics feature, see <https://docs.aws.amazon.com/AmazonS3/latest/dev/analytics-storage-class.html Amazon S3 Analytics – Storage Class Analysis> . 
-- The following operations are related to @ListBucketAnalyticsConfigurations@ :
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketAnalyticsConfiguration.html GetBucketAnalyticsConfiguration> 
--
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketAnalyticsConfiguration.html DeleteBucketAnalyticsConfiguration> 
--
--
--     * <https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketAnalyticsConfiguration.html PutBucketAnalyticsConfiguration> 
--
--
module Network.AWS.S3.ListBucketAnalyticsConfigurations
    (
    -- * Creating a request
      ListBucketAnalyticsConfigurations (..)
    , mkListBucketAnalyticsConfigurations
    -- ** Request lenses
    , lbacBucket
    , lbacContinuationToken
    , lbacExpectedBucketOwner

    -- * Destructuring the response
    , ListBucketAnalyticsConfigurationsResponse (..)
    , mkListBucketAnalyticsConfigurationsResponse
    -- ** Response lenses
    , lbacrrsAnalyticsConfigurationList
    , lbacrrsContinuationToken
    , lbacrrsIsTruncated
    , lbacrrsNextContinuationToken
    , lbacrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.S3.Types as Types

-- | /See:/ 'mkListBucketAnalyticsConfigurations' smart constructor.
data ListBucketAnalyticsConfigurations = ListBucketAnalyticsConfigurations'
  { bucket :: Types.BucketName
    -- ^ The name of the bucket from which analytics configurations are retrieved.
  , continuationToken :: Core.Maybe Types.ContinuationToken
    -- ^ The ContinuationToken that represents a placeholder from where this request should begin.
  , expectedBucketOwner :: Core.Maybe Types.ExpectedBucketOwner
    -- ^ The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListBucketAnalyticsConfigurations' value with any optional fields omitted.
mkListBucketAnalyticsConfigurations
    :: Types.BucketName -- ^ 'bucket'
    -> ListBucketAnalyticsConfigurations
mkListBucketAnalyticsConfigurations bucket
  = ListBucketAnalyticsConfigurations'{bucket,
                                       continuationToken = Core.Nothing,
                                       expectedBucketOwner = Core.Nothing}

-- | The name of the bucket from which analytics configurations are retrieved.
--
-- /Note:/ Consider using 'bucket' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbacBucket :: Lens.Lens' ListBucketAnalyticsConfigurations Types.BucketName
lbacBucket = Lens.field @"bucket"
{-# INLINEABLE lbacBucket #-}
{-# DEPRECATED bucket "Use generic-lens or generic-optics with 'bucket' instead"  #-}

-- | The ContinuationToken that represents a placeholder from where this request should begin.
--
-- /Note:/ Consider using 'continuationToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbacContinuationToken :: Lens.Lens' ListBucketAnalyticsConfigurations (Core.Maybe Types.ContinuationToken)
lbacContinuationToken = Lens.field @"continuationToken"
{-# INLINEABLE lbacContinuationToken #-}
{-# DEPRECATED continuationToken "Use generic-lens or generic-optics with 'continuationToken' instead"  #-}

-- | The account id of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP @403 (Access Denied)@ error.
--
-- /Note:/ Consider using 'expectedBucketOwner' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbacExpectedBucketOwner :: Lens.Lens' ListBucketAnalyticsConfigurations (Core.Maybe Types.ExpectedBucketOwner)
lbacExpectedBucketOwner = Lens.field @"expectedBucketOwner"
{-# INLINEABLE lbacExpectedBucketOwner #-}
{-# DEPRECATED expectedBucketOwner "Use generic-lens or generic-optics with 'expectedBucketOwner' instead"  #-}

instance Core.ToQuery ListBucketAnalyticsConfigurations where
        toQuery ListBucketAnalyticsConfigurations{..}
          = Core.maybe Core.mempty (Core.toQueryPair "continuation-token")
              continuationToken
              Core.<> Core.toQueryPair "analytics" ("" :: Core.Text)

instance Core.ToHeaders ListBucketAnalyticsConfigurations where
        toHeaders ListBucketAnalyticsConfigurations{..}
          = Core.toHeaders "x-amz-expected-bucket-owner" expectedBucketOwner

instance Core.AWSRequest ListBucketAnalyticsConfigurations where
        type Rs ListBucketAnalyticsConfigurations =
             ListBucketAnalyticsConfigurationsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.GET,
                         Core._rqPath = "/" Core.<> Core.toText bucket,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXML
              (\ s h x ->
                 ListBucketAnalyticsConfigurationsResponse' Core.<$>
                   (x Core..@? "AnalyticsConfiguration") Core.<*>
                     x Core..@? "ContinuationToken"
                     Core.<*> x Core..@? "IsTruncated"
                     Core.<*> x Core..@? "NextContinuationToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkListBucketAnalyticsConfigurationsResponse' smart constructor.
data ListBucketAnalyticsConfigurationsResponse = ListBucketAnalyticsConfigurationsResponse'
  { analyticsConfigurationList :: Core.Maybe [Types.AnalyticsConfiguration]
    -- ^ The list of analytics configurations for a bucket.
  , continuationToken :: Core.Maybe Types.Token
    -- ^ The marker that is used as a starting point for this analytics configuration list response. This value is present if it was sent in the request.
  , isTruncated :: Core.Maybe Core.Bool
    -- ^ Indicates whether the returned list of analytics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
  , nextContinuationToken :: Core.Maybe Types.NextContinuationToken
    -- ^ @NextContinuationToken@ is sent when @isTruncated@ is true, which indicates that there are more analytics configurations to list. The next request must include this @NextContinuationToken@ . The token is obfuscated and is not a usable value.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListBucketAnalyticsConfigurationsResponse' value with any optional fields omitted.
mkListBucketAnalyticsConfigurationsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListBucketAnalyticsConfigurationsResponse
mkListBucketAnalyticsConfigurationsResponse responseStatus
  = ListBucketAnalyticsConfigurationsResponse'{analyticsConfigurationList
                                                 = Core.Nothing,
                                               continuationToken = Core.Nothing,
                                               isTruncated = Core.Nothing,
                                               nextContinuationToken = Core.Nothing, responseStatus}

-- | The list of analytics configurations for a bucket.
--
-- /Note:/ Consider using 'analyticsConfigurationList' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbacrrsAnalyticsConfigurationList :: Lens.Lens' ListBucketAnalyticsConfigurationsResponse (Core.Maybe [Types.AnalyticsConfiguration])
lbacrrsAnalyticsConfigurationList = Lens.field @"analyticsConfigurationList"
{-# INLINEABLE lbacrrsAnalyticsConfigurationList #-}
{-# DEPRECATED analyticsConfigurationList "Use generic-lens or generic-optics with 'analyticsConfigurationList' instead"  #-}

-- | The marker that is used as a starting point for this analytics configuration list response. This value is present if it was sent in the request.
--
-- /Note:/ Consider using 'continuationToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbacrrsContinuationToken :: Lens.Lens' ListBucketAnalyticsConfigurationsResponse (Core.Maybe Types.Token)
lbacrrsContinuationToken = Lens.field @"continuationToken"
{-# INLINEABLE lbacrrsContinuationToken #-}
{-# DEPRECATED continuationToken "Use generic-lens or generic-optics with 'continuationToken' instead"  #-}

-- | Indicates whether the returned list of analytics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
--
-- /Note:/ Consider using 'isTruncated' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbacrrsIsTruncated :: Lens.Lens' ListBucketAnalyticsConfigurationsResponse (Core.Maybe Core.Bool)
lbacrrsIsTruncated = Lens.field @"isTruncated"
{-# INLINEABLE lbacrrsIsTruncated #-}
{-# DEPRECATED isTruncated "Use generic-lens or generic-optics with 'isTruncated' instead"  #-}

-- | @NextContinuationToken@ is sent when @isTruncated@ is true, which indicates that there are more analytics configurations to list. The next request must include this @NextContinuationToken@ . The token is obfuscated and is not a usable value.
--
-- /Note:/ Consider using 'nextContinuationToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbacrrsNextContinuationToken :: Lens.Lens' ListBucketAnalyticsConfigurationsResponse (Core.Maybe Types.NextContinuationToken)
lbacrrsNextContinuationToken = Lens.field @"nextContinuationToken"
{-# INLINEABLE lbacrrsNextContinuationToken #-}
{-# DEPRECATED nextContinuationToken "Use generic-lens or generic-optics with 'nextContinuationToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lbacrrsResponseStatus :: Lens.Lens' ListBucketAnalyticsConfigurationsResponse Core.Int
lbacrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lbacrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
