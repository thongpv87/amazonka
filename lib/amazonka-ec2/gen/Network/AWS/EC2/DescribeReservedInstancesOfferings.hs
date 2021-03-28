{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeReservedInstancesOfferings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes Reserved Instance offerings that are available for purchase. With Reserved Instances, you purchase the right to launch instances for a period of time. During that time period, you do not receive insufficient capacity errors, and you pay a lower usage rate than the rate charged for On-Demand instances for the actual time used.
--
-- If you have listed your own Reserved Instances for sale in the Reserved Instance Marketplace, they will be excluded from these results. This is to ensure that you do not purchase your own Reserved Instances.
-- For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html Reserved Instance Marketplace> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeReservedInstancesOfferings
    (
    -- * Creating a request
      DescribeReservedInstancesOfferings (..)
    , mkDescribeReservedInstancesOfferings
    -- ** Request lenses
    , drioAvailabilityZone
    , drioDryRun
    , drioFilters
    , drioIncludeMarketplace
    , drioInstanceTenancy
    , drioInstanceType
    , drioMaxDuration
    , drioMaxInstanceCount
    , drioMaxResults
    , drioMinDuration
    , drioNextToken
    , drioOfferingClass
    , drioOfferingType
    , drioProductDescription
    , drioReservedInstancesOfferingIds

    -- * Destructuring the response
    , DescribeReservedInstancesOfferingsResponse (..)
    , mkDescribeReservedInstancesOfferingsResponse
    -- ** Response lenses
    , driorrsNextToken
    , driorrsReservedInstancesOfferings
    , driorrsResponseStatus
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for DescribeReservedInstancesOfferings.
--
-- /See:/ 'mkDescribeReservedInstancesOfferings' smart constructor.
data DescribeReservedInstancesOfferings = DescribeReservedInstancesOfferings'
  { availabilityZone :: Core.Maybe Core.Text
    -- ^ The Availability Zone in which the Reserved Instance can be used.
  , dryRun :: Core.Maybe Core.Bool
    -- ^ Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
  , filters :: Core.Maybe [Types.Filter]
    -- ^ One or more filters.
--
--
--     * @availability-zone@ - The Availability Zone where the Reserved Instance can be used.
--
--
--     * @duration@ - The duration of the Reserved Instance (for example, one year or three years), in seconds (@31536000@ | @94608000@ ).
--
--
--     * @fixed-price@ - The purchase price of the Reserved Instance (for example, 9800.0).
--
--
--     * @instance-type@ - The instance type that is covered by the reservation.
--
--
--     * @marketplace@ - Set to @true@ to show only Reserved Instance Marketplace offerings. When this filter is not used, which is the default behavior, all offerings from both AWS and the Reserved Instance Marketplace are listed.
--
--
--     * @product-description@ - The Reserved Instance product platform description. Instances that include @(Amazon VPC)@ in the product platform description will only be displayed to EC2-Classic account holders and are for use with Amazon VPC. (@Linux/UNIX@ | @Linux/UNIX (Amazon VPC)@ | @SUSE Linux@ | @SUSE Linux (Amazon VPC)@ | @Red Hat Enterprise Linux@ | @Red Hat Enterprise Linux (Amazon VPC)@ | @Windows@ | @Windows (Amazon VPC)@ | @Windows with SQL Server Standard@ | @Windows with SQL Server Standard (Amazon VPC)@ | @Windows with SQL Server Web@ | @Windows with SQL Server Web (Amazon VPC)@ | @Windows with SQL Server Enterprise@ | @Windows with SQL Server Enterprise (Amazon VPC)@ ) 
--
--
--     * @reserved-instances-offering-id@ - The Reserved Instances offering ID.
--
--
--     * @scope@ - The scope of the Reserved Instance (@Availability Zone@ or @Region@ ).
--
--
--     * @usage-price@ - The usage price of the Reserved Instance, per hour (for example, 0.84).
--
--
  , includeMarketplace :: Core.Maybe Core.Bool
    -- ^ Include Reserved Instance Marketplace offerings in the response.
  , instanceTenancy :: Core.Maybe Types.Tenancy
    -- ^ The tenancy of the instances covered by the reservation. A Reserved Instance with a tenancy of @dedicated@ is applied to instances that run in a VPC on single-tenant hardware (i.e., Dedicated Instances).
--
-- __Important:__ The @host@ value cannot be used with this parameter. Use the @default@ or @dedicated@ values only.
-- Default: @default@ 
  , instanceType :: Core.Maybe Types.InstanceType
    -- ^ The instance type that the reservation will cover (for example, @m1.small@ ). For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance Types> in the /Amazon Elastic Compute Cloud User Guide/ .
  , maxDuration :: Core.Maybe Core.Integer
    -- ^ The maximum duration (in seconds) to filter when searching for offerings.
--
-- Default: 94608000 (3 years)
  , maxInstanceCount :: Core.Maybe Core.Int
    -- ^ The maximum number of instances to filter when searching for offerings.
--
-- Default: 20
  , maxResults :: Core.Maybe Core.Int
    -- ^ The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned @NextToken@ value. The maximum is 100.
--
-- Default: 100
  , minDuration :: Core.Maybe Core.Integer
    -- ^ The minimum duration (in seconds) to filter when searching for offerings.
--
-- Default: 2592000 (1 month)
  , nextToken :: Core.Maybe Core.Text
    -- ^ The token to retrieve the next page of results.
  , offeringClass :: Core.Maybe Types.OfferingClassType
    -- ^ The offering class of the Reserved Instance. Can be @standard@ or @convertible@ .
  , offeringType :: Core.Maybe Types.OfferingTypeValues
    -- ^ The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the @Medium Utilization@ Reserved Instance offering type. 
  , productDescription :: Core.Maybe Types.RIProductDescription
    -- ^ The Reserved Instance product platform description. Instances that include @(Amazon VPC)@ in the description are for use with Amazon VPC.
  , reservedInstancesOfferingIds :: Core.Maybe [Types.ReservedInstancesOfferingId]
    -- ^ One or more Reserved Instances offering IDs.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReservedInstancesOfferings' value with any optional fields omitted.
mkDescribeReservedInstancesOfferings
    :: DescribeReservedInstancesOfferings
mkDescribeReservedInstancesOfferings
  = DescribeReservedInstancesOfferings'{availabilityZone =
                                          Core.Nothing,
                                        dryRun = Core.Nothing, filters = Core.Nothing,
                                        includeMarketplace = Core.Nothing,
                                        instanceTenancy = Core.Nothing, instanceType = Core.Nothing,
                                        maxDuration = Core.Nothing, maxInstanceCount = Core.Nothing,
                                        maxResults = Core.Nothing, minDuration = Core.Nothing,
                                        nextToken = Core.Nothing, offeringClass = Core.Nothing,
                                        offeringType = Core.Nothing,
                                        productDescription = Core.Nothing,
                                        reservedInstancesOfferingIds = Core.Nothing}

-- | The Availability Zone in which the Reserved Instance can be used.
--
-- /Note:/ Consider using 'availabilityZone' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioAvailabilityZone :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Core.Text)
drioAvailabilityZone = Lens.field @"availabilityZone"
{-# INLINEABLE drioAvailabilityZone #-}
{-# DEPRECATED availabilityZone "Use generic-lens or generic-optics with 'availabilityZone' instead"  #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioDryRun :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Core.Bool)
drioDryRun = Lens.field @"dryRun"
{-# INLINEABLE drioDryRun #-}
{-# DEPRECATED dryRun "Use generic-lens or generic-optics with 'dryRun' instead"  #-}

-- | One or more filters.
--
--
--     * @availability-zone@ - The Availability Zone where the Reserved Instance can be used.
--
--
--     * @duration@ - The duration of the Reserved Instance (for example, one year or three years), in seconds (@31536000@ | @94608000@ ).
--
--
--     * @fixed-price@ - The purchase price of the Reserved Instance (for example, 9800.0).
--
--
--     * @instance-type@ - The instance type that is covered by the reservation.
--
--
--     * @marketplace@ - Set to @true@ to show only Reserved Instance Marketplace offerings. When this filter is not used, which is the default behavior, all offerings from both AWS and the Reserved Instance Marketplace are listed.
--
--
--     * @product-description@ - The Reserved Instance product platform description. Instances that include @(Amazon VPC)@ in the product platform description will only be displayed to EC2-Classic account holders and are for use with Amazon VPC. (@Linux/UNIX@ | @Linux/UNIX (Amazon VPC)@ | @SUSE Linux@ | @SUSE Linux (Amazon VPC)@ | @Red Hat Enterprise Linux@ | @Red Hat Enterprise Linux (Amazon VPC)@ | @Windows@ | @Windows (Amazon VPC)@ | @Windows with SQL Server Standard@ | @Windows with SQL Server Standard (Amazon VPC)@ | @Windows with SQL Server Web@ | @Windows with SQL Server Web (Amazon VPC)@ | @Windows with SQL Server Enterprise@ | @Windows with SQL Server Enterprise (Amazon VPC)@ ) 
--
--
--     * @reserved-instances-offering-id@ - The Reserved Instances offering ID.
--
--
--     * @scope@ - The scope of the Reserved Instance (@Availability Zone@ or @Region@ ).
--
--
--     * @usage-price@ - The usage price of the Reserved Instance, per hour (for example, 0.84).
--
--
--
-- /Note:/ Consider using 'filters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioFilters :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe [Types.Filter])
drioFilters = Lens.field @"filters"
{-# INLINEABLE drioFilters #-}
{-# DEPRECATED filters "Use generic-lens or generic-optics with 'filters' instead"  #-}

-- | Include Reserved Instance Marketplace offerings in the response.
--
-- /Note:/ Consider using 'includeMarketplace' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioIncludeMarketplace :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Core.Bool)
drioIncludeMarketplace = Lens.field @"includeMarketplace"
{-# INLINEABLE drioIncludeMarketplace #-}
{-# DEPRECATED includeMarketplace "Use generic-lens or generic-optics with 'includeMarketplace' instead"  #-}

-- | The tenancy of the instances covered by the reservation. A Reserved Instance with a tenancy of @dedicated@ is applied to instances that run in a VPC on single-tenant hardware (i.e., Dedicated Instances).
--
-- __Important:__ The @host@ value cannot be used with this parameter. Use the @default@ or @dedicated@ values only.
-- Default: @default@ 
--
-- /Note:/ Consider using 'instanceTenancy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioInstanceTenancy :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Types.Tenancy)
drioInstanceTenancy = Lens.field @"instanceTenancy"
{-# INLINEABLE drioInstanceTenancy #-}
{-# DEPRECATED instanceTenancy "Use generic-lens or generic-optics with 'instanceTenancy' instead"  #-}

-- | The instance type that the reservation will cover (for example, @m1.small@ ). For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html Instance Types> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- /Note:/ Consider using 'instanceType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioInstanceType :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Types.InstanceType)
drioInstanceType = Lens.field @"instanceType"
{-# INLINEABLE drioInstanceType #-}
{-# DEPRECATED instanceType "Use generic-lens or generic-optics with 'instanceType' instead"  #-}

-- | The maximum duration (in seconds) to filter when searching for offerings.
--
-- Default: 94608000 (3 years)
--
-- /Note:/ Consider using 'maxDuration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioMaxDuration :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Core.Integer)
drioMaxDuration = Lens.field @"maxDuration"
{-# INLINEABLE drioMaxDuration #-}
{-# DEPRECATED maxDuration "Use generic-lens or generic-optics with 'maxDuration' instead"  #-}

-- | The maximum number of instances to filter when searching for offerings.
--
-- Default: 20
--
-- /Note:/ Consider using 'maxInstanceCount' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioMaxInstanceCount :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Core.Int)
drioMaxInstanceCount = Lens.field @"maxInstanceCount"
{-# INLINEABLE drioMaxInstanceCount #-}
{-# DEPRECATED maxInstanceCount "Use generic-lens or generic-optics with 'maxInstanceCount' instead"  #-}

-- | The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned @NextToken@ value. The maximum is 100.
--
-- Default: 100
--
-- /Note:/ Consider using 'maxResults' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioMaxResults :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Core.Int)
drioMaxResults = Lens.field @"maxResults"
{-# INLINEABLE drioMaxResults #-}
{-# DEPRECATED maxResults "Use generic-lens or generic-optics with 'maxResults' instead"  #-}

-- | The minimum duration (in seconds) to filter when searching for offerings.
--
-- Default: 2592000 (1 month)
--
-- /Note:/ Consider using 'minDuration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioMinDuration :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Core.Integer)
drioMinDuration = Lens.field @"minDuration"
{-# INLINEABLE drioMinDuration #-}
{-# DEPRECATED minDuration "Use generic-lens or generic-optics with 'minDuration' instead"  #-}

-- | The token to retrieve the next page of results.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioNextToken :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Core.Text)
drioNextToken = Lens.field @"nextToken"
{-# INLINEABLE drioNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The offering class of the Reserved Instance. Can be @standard@ or @convertible@ .
--
-- /Note:/ Consider using 'offeringClass' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioOfferingClass :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Types.OfferingClassType)
drioOfferingClass = Lens.field @"offeringClass"
{-# INLINEABLE drioOfferingClass #-}
{-# DEPRECATED offeringClass "Use generic-lens or generic-optics with 'offeringClass' instead"  #-}

-- | The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the @Medium Utilization@ Reserved Instance offering type. 
--
-- /Note:/ Consider using 'offeringType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioOfferingType :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Types.OfferingTypeValues)
drioOfferingType = Lens.field @"offeringType"
{-# INLINEABLE drioOfferingType #-}
{-# DEPRECATED offeringType "Use generic-lens or generic-optics with 'offeringType' instead"  #-}

-- | The Reserved Instance product platform description. Instances that include @(Amazon VPC)@ in the description are for use with Amazon VPC.
--
-- /Note:/ Consider using 'productDescription' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioProductDescription :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe Types.RIProductDescription)
drioProductDescription = Lens.field @"productDescription"
{-# INLINEABLE drioProductDescription #-}
{-# DEPRECATED productDescription "Use generic-lens or generic-optics with 'productDescription' instead"  #-}

-- | One or more Reserved Instances offering IDs.
--
-- /Note:/ Consider using 'reservedInstancesOfferingIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drioReservedInstancesOfferingIds :: Lens.Lens' DescribeReservedInstancesOfferings (Core.Maybe [Types.ReservedInstancesOfferingId])
drioReservedInstancesOfferingIds = Lens.field @"reservedInstancesOfferingIds"
{-# INLINEABLE drioReservedInstancesOfferingIds #-}
{-# DEPRECATED reservedInstancesOfferingIds "Use generic-lens or generic-optics with 'reservedInstancesOfferingIds' instead"  #-}

instance Core.ToQuery DescribeReservedInstancesOfferings where
        toQuery DescribeReservedInstancesOfferings{..}
          = Core.toQueryPair "Action"
              ("DescribeReservedInstancesOfferings" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "AvailabilityZone")
                availabilityZone
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "DryRun") dryRun
              Core.<> Core.maybe Core.mempty (Core.toQueryList "Filter") filters
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "IncludeMarketplace")
                includeMarketplace
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "InstanceTenancy")
                instanceTenancy
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "InstanceType")
                instanceType
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxDuration") maxDuration
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxInstanceCount")
                maxInstanceCount
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MaxResults") maxResults
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "MinDuration") minDuration
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "NextToken") nextToken
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "OfferingClass")
                offeringClass
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "OfferingType")
                offeringType
              Core.<>
              Core.maybe Core.mempty (Core.toQueryPair "ProductDescription")
                productDescription
              Core.<>
              Core.maybe Core.mempty
                (Core.toQueryList "ReservedInstancesOfferingId")
                reservedInstancesOfferingIds

instance Core.ToHeaders DescribeReservedInstancesOfferings where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DescribeReservedInstancesOfferings where
        type Rs DescribeReservedInstancesOfferings =
             DescribeReservedInstancesOfferingsResponse
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
                 DescribeReservedInstancesOfferingsResponse' Core.<$>
                   (x Core..@? "nextToken") Core.<*>
                     x Core..@? "reservedInstancesOfferingsSet" Core..<@>
                       Core.parseXMLList "item"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager DescribeReservedInstancesOfferings where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^?
                 Lens.field @"reservedInstancesOfferings" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | Contains the output of DescribeReservedInstancesOfferings.
--
-- /See:/ 'mkDescribeReservedInstancesOfferingsResponse' smart constructor.
data DescribeReservedInstancesOfferingsResponse = DescribeReservedInstancesOfferingsResponse'
  { nextToken :: Core.Maybe Core.Text
    -- ^ The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
  , reservedInstancesOfferings :: Core.Maybe [Types.ReservedInstancesOffering]
    -- ^ A list of Reserved Instances offerings.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeReservedInstancesOfferingsResponse' value with any optional fields omitted.
mkDescribeReservedInstancesOfferingsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeReservedInstancesOfferingsResponse
mkDescribeReservedInstancesOfferingsResponse responseStatus
  = DescribeReservedInstancesOfferingsResponse'{nextToken =
                                                  Core.Nothing,
                                                reservedInstancesOfferings = Core.Nothing,
                                                responseStatus}

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
driorrsNextToken :: Lens.Lens' DescribeReservedInstancesOfferingsResponse (Core.Maybe Core.Text)
driorrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE driorrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | A list of Reserved Instances offerings.
--
-- /Note:/ Consider using 'reservedInstancesOfferings' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
driorrsReservedInstancesOfferings :: Lens.Lens' DescribeReservedInstancesOfferingsResponse (Core.Maybe [Types.ReservedInstancesOffering])
driorrsReservedInstancesOfferings = Lens.field @"reservedInstancesOfferings"
{-# INLINEABLE driorrsReservedInstancesOfferings #-}
{-# DEPRECATED reservedInstancesOfferings "Use generic-lens or generic-optics with 'reservedInstancesOfferings' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
driorrsResponseStatus :: Lens.Lens' DescribeReservedInstancesOfferingsResponse Core.Int
driorrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE driorrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
