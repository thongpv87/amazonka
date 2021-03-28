{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.ListOnPremisesInstances
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of names for one or more on-premises instances.
--
-- Unless otherwise specified, both registered and deregistered on-premises instance names are listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.
--
-- This operation returns paginated results.
module Network.AWS.CodeDeploy.ListOnPremisesInstances
    (
    -- * Creating a request
      ListOnPremisesInstances (..)
    , mkListOnPremisesInstances
    -- ** Request lenses
    , lopiNextToken
    , lopiRegistrationStatus
    , lopiTagFilters

    -- * Destructuring the response
    , ListOnPremisesInstancesResponse (..)
    , mkListOnPremisesInstancesResponse
    -- ** Response lenses
    , lopirrsInstanceNames
    , lopirrsNextToken
    , lopirrsResponseStatus
    ) where

import qualified Network.AWS.CodeDeploy.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @ListOnPremisesInstances@ operation.
--
-- /See:/ 'mkListOnPremisesInstances' smart constructor.
data ListOnPremisesInstances = ListOnPremisesInstances'
  { nextToken :: Core.Maybe Types.NextToken
    -- ^ An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.
  , registrationStatus :: Core.Maybe Types.RegistrationStatus
    -- ^ The registration status of the on-premises instances:
--
--
--     * @Deregistered@ : Include deregistered on-premises instances in the resulting list.
--
--
--     * @Registered@ : Include registered on-premises instances in the resulting list.
--
--
  , tagFilters :: Core.Maybe [Types.TagFilter]
    -- ^ The on-premises instance tags that are used to restrict the on-premises instance names returned.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListOnPremisesInstances' value with any optional fields omitted.
mkListOnPremisesInstances
    :: ListOnPremisesInstances
mkListOnPremisesInstances
  = ListOnPremisesInstances'{nextToken = Core.Nothing,
                             registrationStatus = Core.Nothing, tagFilters = Core.Nothing}

-- | An identifier returned from the previous list on-premises instances call. It can be used to return the next set of on-premises instances in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lopiNextToken :: Lens.Lens' ListOnPremisesInstances (Core.Maybe Types.NextToken)
lopiNextToken = Lens.field @"nextToken"
{-# INLINEABLE lopiNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The registration status of the on-premises instances:
--
--
--     * @Deregistered@ : Include deregistered on-premises instances in the resulting list.
--
--
--     * @Registered@ : Include registered on-premises instances in the resulting list.
--
--
--
-- /Note:/ Consider using 'registrationStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lopiRegistrationStatus :: Lens.Lens' ListOnPremisesInstances (Core.Maybe Types.RegistrationStatus)
lopiRegistrationStatus = Lens.field @"registrationStatus"
{-# INLINEABLE lopiRegistrationStatus #-}
{-# DEPRECATED registrationStatus "Use generic-lens or generic-optics with 'registrationStatus' instead"  #-}

-- | The on-premises instance tags that are used to restrict the on-premises instance names returned.
--
-- /Note:/ Consider using 'tagFilters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lopiTagFilters :: Lens.Lens' ListOnPremisesInstances (Core.Maybe [Types.TagFilter])
lopiTagFilters = Lens.field @"tagFilters"
{-# INLINEABLE lopiTagFilters #-}
{-# DEPRECATED tagFilters "Use generic-lens or generic-optics with 'tagFilters' instead"  #-}

instance Core.ToQuery ListOnPremisesInstances where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ListOnPremisesInstances where
        toHeaders ListOnPremisesInstances{..}
          = Core.pure
              ("X-Amz-Target", "CodeDeploy_20141006.ListOnPremisesInstances")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ListOnPremisesInstances where
        toJSON ListOnPremisesInstances{..}
          = Core.object
              (Core.catMaybes
                 [("nextToken" Core..=) Core.<$> nextToken,
                  ("registrationStatus" Core..=) Core.<$> registrationStatus,
                  ("tagFilters" Core..=) Core.<$> tagFilters])

instance Core.AWSRequest ListOnPremisesInstances where
        type Rs ListOnPremisesInstances = ListOnPremisesInstancesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ListOnPremisesInstancesResponse' Core.<$>
                   (x Core..:? "instanceNames") Core.<*> x Core..:? "nextToken"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

instance Pager.AWSPager ListOnPremisesInstances where
        page rq rs
          | Pager.stop (rs Lens.^. Lens.field @"nextToken") = Core.Nothing
          | Pager.stop
              (rs Lens.^? Lens.field @"instanceNames" Core.. Lens._Just)
            = Core.Nothing
          | Core.otherwise =
            Core.Just
              (rq Core.&
                 Lens.field @"nextToken" Lens..~ rs Lens.^. Lens.field @"nextToken")

-- | Represents the output of the list on-premises instances operation.
--
-- /See:/ 'mkListOnPremisesInstancesResponse' smart constructor.
data ListOnPremisesInstancesResponse = ListOnPremisesInstancesResponse'
  { instanceNames :: Core.Maybe [Types.InstanceName]
    -- ^ The list of matching on-premises instance names.
  , nextToken :: Core.Maybe Types.NextToken
    -- ^ If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list on-premises instances call to return the next set of on-premises instances in the list.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ListOnPremisesInstancesResponse' value with any optional fields omitted.
mkListOnPremisesInstancesResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ListOnPremisesInstancesResponse
mkListOnPremisesInstancesResponse responseStatus
  = ListOnPremisesInstancesResponse'{instanceNames = Core.Nothing,
                                     nextToken = Core.Nothing, responseStatus}

-- | The list of matching on-premises instance names.
--
-- /Note:/ Consider using 'instanceNames' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lopirrsInstanceNames :: Lens.Lens' ListOnPremisesInstancesResponse (Core.Maybe [Types.InstanceName])
lopirrsInstanceNames = Lens.field @"instanceNames"
{-# INLINEABLE lopirrsInstanceNames #-}
{-# DEPRECATED instanceNames "Use generic-lens or generic-optics with 'instanceNames' instead"  #-}

-- | If a large amount of information is returned, an identifier is also returned. It can be used in a subsequent list on-premises instances call to return the next set of on-premises instances in the list.
--
-- /Note:/ Consider using 'nextToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lopirrsNextToken :: Lens.Lens' ListOnPremisesInstancesResponse (Core.Maybe Types.NextToken)
lopirrsNextToken = Lens.field @"nextToken"
{-# INLINEABLE lopirrsNextToken #-}
{-# DEPRECATED nextToken "Use generic-lens or generic-optics with 'nextToken' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
lopirrsResponseStatus :: Lens.Lens' ListOnPremisesInstancesResponse Core.Int
lopirrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE lopirrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
