{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.ReleaseHosts
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- When you no longer want to use an On-Demand Dedicated Host it can be released. On-Demand billing is stopped and the host goes into @released@ state. The host ID of Dedicated Hosts that have been released can no longer be specified in another request, for example, to modify the host. You must stop or terminate all instances on a host before it can be released.
--
-- When Dedicated Hosts are released, it may take some time for them to stop counting toward your limit and you may receive capacity errors when trying to allocate new Dedicated Hosts. Wait a few minutes and then try again.
-- Released hosts still appear in a 'DescribeHosts' response.
module Network.AWS.EC2.ReleaseHosts
    (
    -- * Creating a request
      ReleaseHosts (..)
    , mkReleaseHosts
    -- ** Request lenses
    , rhHostIds

    -- * Destructuring the response
    , ReleaseHostsResponse (..)
    , mkReleaseHostsResponse
    -- ** Response lenses
    , rhrrsSuccessful
    , rhrrsUnsuccessful
    , rhrrsResponseStatus
    ) where

import qualified Network.AWS.EC2.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkReleaseHosts' smart constructor.
newtype ReleaseHosts = ReleaseHosts'
  { hostIds :: [Types.DedicatedHostId]
    -- ^ The IDs of the Dedicated Hosts to release.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'ReleaseHosts' value with any optional fields omitted.
mkReleaseHosts
    :: ReleaseHosts
mkReleaseHosts = ReleaseHosts'{hostIds = Core.mempty}

-- | The IDs of the Dedicated Hosts to release.
--
-- /Note:/ Consider using 'hostIds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rhHostIds :: Lens.Lens' ReleaseHosts [Types.DedicatedHostId]
rhHostIds = Lens.field @"hostIds"
{-# INLINEABLE rhHostIds #-}
{-# DEPRECATED hostIds "Use generic-lens or generic-optics with 'hostIds' instead"  #-}

instance Core.ToQuery ReleaseHosts where
        toQuery ReleaseHosts{..}
          = Core.toQueryPair "Action" ("ReleaseHosts" :: Core.Text) Core.<>
              Core.toQueryPair "Version" ("2016-11-15" :: Core.Text)
              Core.<> Core.toQueryList "HostId" hostIds

instance Core.ToHeaders ReleaseHosts where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest ReleaseHosts where
        type Rs ReleaseHosts = ReleaseHostsResponse
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
                 ReleaseHostsResponse' Core.<$>
                   (x Core..@? "successful" Core..<@> Core.parseXMLList "item")
                     Core.<*>
                     x Core..@? "unsuccessful" Core..<@> Core.parseXMLList "item"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkReleaseHostsResponse' smart constructor.
data ReleaseHostsResponse = ReleaseHostsResponse'
  { successful :: Core.Maybe [Core.Text]
    -- ^ The IDs of the Dedicated Hosts that were successfully released.
  , unsuccessful :: Core.Maybe [Types.UnsuccessfulItem]
    -- ^ The IDs of the Dedicated Hosts that could not be released, including an error message.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ReleaseHostsResponse' value with any optional fields omitted.
mkReleaseHostsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ReleaseHostsResponse
mkReleaseHostsResponse responseStatus
  = ReleaseHostsResponse'{successful = Core.Nothing,
                          unsuccessful = Core.Nothing, responseStatus}

-- | The IDs of the Dedicated Hosts that were successfully released.
--
-- /Note:/ Consider using 'successful' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rhrrsSuccessful :: Lens.Lens' ReleaseHostsResponse (Core.Maybe [Core.Text])
rhrrsSuccessful = Lens.field @"successful"
{-# INLINEABLE rhrrsSuccessful #-}
{-# DEPRECATED successful "Use generic-lens or generic-optics with 'successful' instead"  #-}

-- | The IDs of the Dedicated Hosts that could not be released, including an error message.
--
-- /Note:/ Consider using 'unsuccessful' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rhrrsUnsuccessful :: Lens.Lens' ReleaseHostsResponse (Core.Maybe [Types.UnsuccessfulItem])
rhrrsUnsuccessful = Lens.field @"unsuccessful"
{-# INLINEABLE rhrrsUnsuccessful #-}
{-# DEPRECATED unsuccessful "Use generic-lens or generic-optics with 'unsuccessful' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rhrrsResponseStatus :: Lens.Lens' ReleaseHostsResponse Core.Int
rhrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE rhrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
