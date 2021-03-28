{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.UpdateRoutingProfileQueues
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the properties associated with a set of queues for a routing profile.
module Network.AWS.Connect.UpdateRoutingProfileQueues
    (
    -- * Creating a request
      UpdateRoutingProfileQueues (..)
    , mkUpdateRoutingProfileQueues
    -- ** Request lenses
    , urpqInstanceId
    , urpqRoutingProfileId
    , urpqQueueConfigs

    -- * Destructuring the response
    , UpdateRoutingProfileQueuesResponse (..)
    , mkUpdateRoutingProfileQueuesResponse
    ) where

import qualified Network.AWS.Connect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateRoutingProfileQueues' smart constructor.
data UpdateRoutingProfileQueues = UpdateRoutingProfileQueues'
  { instanceId :: Types.InstanceId
    -- ^ The identifier of the Amazon Connect instance.
  , routingProfileId :: Types.RoutingProfileId
    -- ^ The identifier of the routing profile.
  , queueConfigs :: Core.NonEmpty Types.RoutingProfileQueueConfig
    -- ^ The queues to be updated for this routing profile.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateRoutingProfileQueues' value with any optional fields omitted.
mkUpdateRoutingProfileQueues
    :: Types.InstanceId -- ^ 'instanceId'
    -> Types.RoutingProfileId -- ^ 'routingProfileId'
    -> Core.NonEmpty Types.RoutingProfileQueueConfig -- ^ 'queueConfigs'
    -> UpdateRoutingProfileQueues
mkUpdateRoutingProfileQueues instanceId routingProfileId
  queueConfigs
  = UpdateRoutingProfileQueues'{instanceId, routingProfileId,
                                queueConfigs}

-- | The identifier of the Amazon Connect instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urpqInstanceId :: Lens.Lens' UpdateRoutingProfileQueues Types.InstanceId
urpqInstanceId = Lens.field @"instanceId"
{-# INLINEABLE urpqInstanceId #-}
{-# DEPRECATED instanceId "Use generic-lens or generic-optics with 'instanceId' instead"  #-}

-- | The identifier of the routing profile.
--
-- /Note:/ Consider using 'routingProfileId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urpqRoutingProfileId :: Lens.Lens' UpdateRoutingProfileQueues Types.RoutingProfileId
urpqRoutingProfileId = Lens.field @"routingProfileId"
{-# INLINEABLE urpqRoutingProfileId #-}
{-# DEPRECATED routingProfileId "Use generic-lens or generic-optics with 'routingProfileId' instead"  #-}

-- | The queues to be updated for this routing profile.
--
-- /Note:/ Consider using 'queueConfigs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
urpqQueueConfigs :: Lens.Lens' UpdateRoutingProfileQueues (Core.NonEmpty Types.RoutingProfileQueueConfig)
urpqQueueConfigs = Lens.field @"queueConfigs"
{-# INLINEABLE urpqQueueConfigs #-}
{-# DEPRECATED queueConfigs "Use generic-lens or generic-optics with 'queueConfigs' instead"  #-}

instance Core.ToQuery UpdateRoutingProfileQueues where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateRoutingProfileQueues where
        toHeaders UpdateRoutingProfileQueues{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateRoutingProfileQueues where
        toJSON UpdateRoutingProfileQueues{..}
          = Core.object
              (Core.catMaybes [Core.Just ("QueueConfigs" Core..= queueConfigs)])

instance Core.AWSRequest UpdateRoutingProfileQueues where
        type Rs UpdateRoutingProfileQueues =
             UpdateRoutingProfileQueuesResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST,
                         Core._rqPath =
                           "/routing-profiles/" Core.<> Core.toText instanceId Core.<> "/"
                             Core.<> Core.toText routingProfileId
                             Core.<> "/queues",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveNull UpdateRoutingProfileQueuesResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateRoutingProfileQueuesResponse' smart constructor.
data UpdateRoutingProfileQueuesResponse = UpdateRoutingProfileQueuesResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateRoutingProfileQueuesResponse' value with any optional fields omitted.
mkUpdateRoutingProfileQueuesResponse
    :: UpdateRoutingProfileQueuesResponse
mkUpdateRoutingProfileQueuesResponse
  = UpdateRoutingProfileQueuesResponse'
