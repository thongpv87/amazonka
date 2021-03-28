{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.CreateRouteTable
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet.
--
-- For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html Route Tables> in the /Amazon Virtual Private Cloud User Guide/ .
module Network.AWS.EC2.CreateRouteTable
    (
    -- * Creating a request
      CreateRouteTable (..)
    , mkCreateRouteTable
    -- ** Request lenses
    , crtVpcId
    , crtDryRun
    , crtTagSpecifications

    -- * Destructuring the response
    , CreateRouteTableResponse (..)
    , mkCreateRouteTableResponse
    -- ** Response lenses
    , crtrrsRouteTable
    , crtrrsResponseStatus
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkCreateRouteTable' smart constructor.
data CreateRouteTable = CreateRouteTable'
  { vpcId :: Types.VpcId
    -- ^ The ID of the VPC.
  , dryRun :: Core.Maybe Core.Bool
    -- ^ Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
  , tagSpecifications :: Core.Maybe [Types.TagSpecification]
    -- ^ The tags to assign to the route table.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateRouteTable' value with any optional fields omitted.
mkCreateRouteTable
    :: Types.VpcId -- ^ 'vpcId'
    -> CreateRouteTable
mkCreateRouteTable vpcId
  = CreateRouteTable'{vpcId, dryRun = Core.Nothing,
                      tagSpecifications = Core.Nothing}

-- | The ID of the VPC.
--
-- /Note:/ Consider using 'vpcId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtVpcId :: Lens.Lens' CreateRouteTable Types.VpcId
crtVpcId = Lens.field @"vpcId"
{-# INLINEABLE crtVpcId #-}
{-# DEPRECATED vpcId "Use generic-lens or generic-optics with 'vpcId' instead"  #-}

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- /Note:/ Consider using 'dryRun' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtDryRun :: Lens.Lens' CreateRouteTable (Core.Maybe Core.Bool)
crtDryRun = Lens.field @"dryRun"
{-# INLINEABLE crtDryRun #-}
{-# DEPRECATED dryRun "Use generic-lens or generic-optics with 'dryRun' instead"  #-}

-- | The tags to assign to the route table.
--
-- /Note:/ Consider using 'tagSpecifications' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtTagSpecifications :: Lens.Lens' CreateRouteTable (Core.Maybe [Types.TagSpecification])
crtTagSpecifications = Lens.field @"tagSpecifications"
{-# INLINEABLE crtTagSpecifications #-}
{-# DEPRECATED tagSpecifications "Use generic-lens or generic-optics with 'tagSpecifications' instead"  #-}

instance Core.ToQuery CreateRouteTable where
        toQuery CreateRouteTable{..}
          = Core.toQueryPair "Action" ("CreateRouteTable" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<> Core.toQueryPair "VpcId" vpcId
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "DryRun") dryRun
              Core.<>
              Core.maybe Core.mempty (Core.toQueryList "TagSpecification")
                tagSpecifications

instance Core.ToHeaders CreateRouteTable where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest CreateRouteTable where
        type Rs CreateRouteTable = CreateRouteTableResponse
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
                 CreateRouteTableResponse' Core.<$>
                   (x Core..@? "routeTable") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkCreateRouteTableResponse' smart constructor.
data CreateRouteTableResponse = CreateRouteTableResponse'
  { routeTable :: Core.Maybe Types.RouteTable
    -- ^ Information about the route table.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateRouteTableResponse' value with any optional fields omitted.
mkCreateRouteTableResponse
    :: Core.Int -- ^ 'responseStatus'
    -> CreateRouteTableResponse
mkCreateRouteTableResponse responseStatus
  = CreateRouteTableResponse'{routeTable = Core.Nothing,
                              responseStatus}

-- | Information about the route table.
--
-- /Note:/ Consider using 'routeTable' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtrrsRouteTable :: Lens.Lens' CreateRouteTableResponse (Core.Maybe Types.RouteTable)
crtrrsRouteTable = Lens.field @"routeTable"
{-# INLINEABLE crtrrsRouteTable #-}
{-# DEPRECATED routeTable "Use generic-lens or generic-optics with 'routeTable' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
crtrrsResponseStatus :: Lens.Lens' CreateRouteTableResponse Core.Int
crtrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE crtrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
