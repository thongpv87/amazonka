{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeFpgaImages
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the Amazon FPGA Images (AFIs) available to you. These include public AFIs, private AFIs that you own, and AFIs owned by other AWS accounts for which you have load permissions.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeFpgaImages
    (
    -- * Creating a request
      DescribeFpgaImages (..)
    , mkDescribeFpgaImages
    -- ** Request lenses
    , dfifDryRun
    , dfifFilters
    , dfifFpgaImageIds
    , dfifMaxResults
    , dfifNextToken
    , dfifOwners

    -- * Destructuring the response
    , DescribeFpgaImagesResponse (..)
    , mkDescribeFpgaImagesResponse
    -- ** Response lenses
    , dfirgrsFpgaImages
    , dfirgrsNextToken
    , dfirgrsResponseStatus
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDescribeFpgaImages' smart constructor.
data DescribeFpgaImages = DescribeFpgaImages'
  { dryRun :: Core.Maybe Core.Bool
    -- ^ Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
  , filters :: Core.Maybe [Types.Filter]
    -- ^ The filters.
--
--
--     * @create-time@ - The creation time of the AFI.
--
--
--     * @fpga-image-id@ - The FPGA image identifier (AFI ID).
--
--
--     * @fpga-image-global-id@ - The global FPGA image identifier (AGFI ID).
--
--
--     * @name@ - The name of the AFI.
--
--
--     * @owner-id@ - The AWS account ID of the AFI owner.
--
--
--     * @product-code@ - The product code.
--
--
--     * @shell-version@ - The version of the AWS Shell that was used to create the bitstream.
--
--
--     * @state@ - The state of the AFI (@pending@ | @failed@ | @available@ | @unavailable@ ).
--
--
--     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.
--
--
--     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
--
--
--     * @update-time@ - The time of the most recent update.
--
--
  , fpgaImageIds :: Core.Maybe [Types.FpgaImageId]
    -- ^ The AFI IDs.
  , maxResults :: Core.Maybe Core.Natural
    -- ^ The maximum number of results to return in a single call.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token to retrieve the next page of results.
  , owners :: Core.Maybe [Core.Text]
    -- ^ Filters the AFI by owner. Specify an AWS account ID, @self@ (owner is the sender of the request), or an AWS owner alias (valid values are @amazon@ | @aws-marketplace@ ).
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeFpgaImages' value with any optional fields omitted.
mkDescribeFpgaImages
    :: DescribeFpgaImages
mkDescribeFpgaImages
  = DescribeFpgaImages'{dryRun = Core.Nothing,
                        filters = Core.Nothing, fpgaImageIds = Core.Nothing,
                        maxResults = Core.Nothing, nextToken = Core.Nothing,
                        owners = Core.Nothing}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfifDryRun :: Lens.Lens' DescribeFpgaImages (Core.Maybe Core.Bool)
dfifDryRun = Lens.field @"dryRun"
{-# INLINEABLE dfifDryRun #-}
{-# DEPRECATED dryRun "Use generic-lens or generic-optics with 'dryRun' instead"  #-}

-- | The filters.
--
--
--     * @create-time@ - The creation time of the AFI.
--
--
--     * @fpga-image-id@ - The FPGA image identifier (AFI ID).
--
--
--     * @fpga-image-global-id@ - The global FPGA image identifier (AGFI ID).
--
--
--     * @name@ - The name of the AFI.
--
--
--     * @owner-id@ - The AWS account ID of the AFI owner.
--
--
--     * @product-code@ - The product code.
--
--
--     * @shell-version@ - The version of the AWS Shell that was used to create the bitstream.
--
--
--     * @state@ - The state of the AFI (@pending@ | @failed@ | @available@ | @unavailable@ ).
--
--
--     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.
--
--
--     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
--
--
--     * @update-time@ - The time of the most recent update.
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfifFilters :: Lens.Lens' DescribeFpgaImages (Core.Maybe [Types.Filter])
dfifFilters = Lens.field @"filters"
{-# INLINEABLE dfifFilters #-}
{-# DEPRECATED filters "Use generic-lens or generic-optics with 'filters' instead"  #-}

-- | The AFI IDs.
--
-- /Note:/ Consider using 'fpgaImageIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfifFpgaImageIds :: Lens.Lens' DescribeFpgaImages (Core.Maybe [Types.FpgaImageId])
dfifFpgaImageIds = Lens.field @"fpgaImageIds"
{-# INLINEABLE dfifFpgaImageIds #-}
{-# DEPRECATED fpgaImageIds "Use generic-lens or generic-optics with 'fpgaImageIds' instead"  #-}

-- | The maximum number of results to return in a single call.
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfifMaxResults :: Lens.Lens' DescribeFpgaImages (Core.Maybe Core.Natural)
dfifMaxResults = Lens.field @"maxResults"
{-# INLINEABLE dfifMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The token to retrieve the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfifNextToken :: Lens.Lens' DescribeFpgaImages (Core.Maybe Types.NextToken)
dfifNextToken = Lens.field @"nextToken"
{-# INLINEABLE dfifNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | Filters the AFI by owner. Specify an AWS account ID, @self@ (owner is the sender of the request), or an AWS owner alias (valid values are @amazon@ | @aws-marketplace@ ).
--
-- /Note:/ Consider using 'owners' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfifOwners :: Lens.Lens' DescribeFpgaImages (Core.Maybe [Core.Text])
dfifOwners = Lens.field @"owners"
{-# INLINEABLE dfifOwners #-}
{-# DEPRECATED owners "Use generic-lens or generic-optics with 'owners' instead"  #-}

instance Core.ToQuery DescribeFpgaImages where
        toQuery DescribeFpgaImages{..}
          = Core.toQueryPair "Action" ("DescribeFpgaImages" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "DryRun") dryRun
              Core.<> Core.maybe Core.mempty (Core.toQueryList "Filter") filters
              Core.<>
              Core.maybe Core.mempty (Core.toQueryList "FpgaImageId")
                fpgaImageIds
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxResults") maxResults
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "NextToken") nextToken
              Core.<> Core.maybe Core.mempty (Core.toQueryList "Owner") owners

instance Core.ToHeaders DescribeFpgaImages where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeFpgaImages where
        type Rs DescribeFpgaImages = DescribeFpgaImagesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.mempty,
                         Core._rqHeaders =
                           Core.pure
                             ("Content-Type",
                              "application/x-www-form-urlencoded; charset=utf-8")
                             Core.<> Core.toHeaders x,
                         Core._rqBody = Core.toFormBody (Core.toQuery x)}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveXML
              (\ s h x ->
                 DescribeFpgaImagesResponse' Core.<$>
                   (x Core..@? "fpgaImageSet" Core..<@> Core.parseXMLList "item")
                     Core.<*> x Core..@? "nextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeFpgaImages where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"fpgaImages" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | /See:/ 'mkDescribeFpgaImagesResponse' smart constructor.
data DescribeFpgaImagesResponse = DescribeFpgaImagesResponse'
  { fpgaImages :: Core.Maybe [Types.FpgaImage]
    -- ^ Information about the FPGA images.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass Core.NFData

-- | Creates a 'DescribeFpgaImagesResponse' value with any optional fields omitted.
mkDescribeFpgaImagesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeFpgaImagesResponse
mkDescribeFpgaImagesResponse responseStatus
  = DescribeFpgaImagesResponse'{fpgaImages = Core.Nothing,
                                nextToken = Core.Nothing, responseStatus}

-- | Information about the FPGA images.
--
-- /Note:/ Consider using 'fpgaImages' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfirgrsFpgaImages :: Lens.Lens' DescribeFpgaImagesResponse (Core.Maybe [Types.FpgaImage])
dfirgrsFpgaImages = Lens.field @"fpgaImages"
{-# INLINEABLE dfirgrsFpgaImages #-}
{-# DEPRECATED fpgaImages "Use generic-lens or generic-optics with 'fpgaImages' instead"  #-}

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfirgrsNextToken :: Lens.Lens' DescribeFpgaImagesResponse (Core.Maybe Types.NextToken)
dfirgrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE dfirgrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dfirgrsResponseStatus :: Lens.Lens' DescribeFpgaImagesResponse Core.Int
dfirgrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dfirgrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
