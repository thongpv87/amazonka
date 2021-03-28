{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.UpdateGameSessionQueue
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates settings for a game session queue, which determines how new game session requests in the queue are processed. To update settings, specify the queue name to be updated and provide the new settings. When updating destinations, provide a complete list of destinations. 
--
-- __Learn more__ 
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html Using Multi-Region Queues> 
-- __Related operations__ 
--
--     * 'CreateGameSessionQueue' 
--
--
--     * 'DescribeGameSessionQueues' 
--
--
--     * 'UpdateGameSessionQueue' 
--
--
--     * 'DeleteGameSessionQueue' 
--
--
module Network.AWS.GameLift.UpdateGameSessionQueue
    (
    -- * Creating a request
      UpdateGameSessionQueue (..)
    , mkUpdateGameSessionQueue
    -- ** Request lenses
    , ugsqName
    , ugsqDestinations
    , ugsqPlayerLatencyPolicies
    , ugsqTimeoutInSeconds

    -- * Destructuring the response
    , UpdateGameSessionQueueResponse (..)
    , mkUpdateGameSessionQueueResponse
    -- ** Response lenses
    , ugsqrrsGameSessionQueue
    , ugsqrrsResponseStatus
    ) where

import qualified Network.AWS.GameLift.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input for a request operation.
--
-- /See:/ 'mkUpdateGameSessionQueue' smart constructor.
data UpdateGameSessionQueue = UpdateGameSessionQueue'
  { name :: Types.Name
    -- ^ A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. 
  , destinations :: Core.Maybe [Types.GameSessionQueueDestination]
    -- ^ A list of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order. When updating this list, provide a complete list of destinations.
  , playerLatencyPolicies :: Core.Maybe [Types.PlayerLatencyPolicy]
    -- ^ A collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, the policy is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. When updating policies, provide a complete collection of policies.
  , timeoutInSeconds :: Core.Maybe Core.Natural
    -- ^ The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a @TIMED_OUT@ status.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateGameSessionQueue' value with any optional fields omitted.
mkUpdateGameSessionQueue
    :: Types.Name -- ^ 'name'
    -> UpdateGameSessionQueue
mkUpdateGameSessionQueue name
  = UpdateGameSessionQueue'{name, destinations = Core.Nothing,
                            playerLatencyPolicies = Core.Nothing,
                            timeoutInSeconds = Core.Nothing}

-- | A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. 
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ugsqName :: Lens.Lens' UpdateGameSessionQueue Types.Name
ugsqName = Lens.field @"name"
{-# INLINEABLE ugsqName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | A list of fleets that can be used to fulfill game session placement requests in the queue. Fleets are identified by either a fleet ARN or a fleet alias ARN. Destinations are listed in default preference order. When updating this list, provide a complete list of destinations.
--
-- /Note:/ Consider using 'destinations' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ugsqDestinations :: Lens.Lens' UpdateGameSessionQueue (Core.Maybe [Types.GameSessionQueueDestination])
ugsqDestinations = Lens.field @"destinations"
{-# INLINEABLE ugsqDestinations #-}
{-# DEPRECATED destinations "Use generic-lens or generic-optics with 'destinations' instead"  #-}

-- | A collection of latency policies to apply when processing game sessions placement requests with player latency information. Multiple policies are evaluated in order of the maximum latency value, starting with the lowest latency values. With just one policy, the policy is enforced at the start of the game session placement for the duration period. With multiple policies, each policy is enforced consecutively for its duration period. For example, a queue might enforce a 60-second policy followed by a 120-second policy, and then no policy for the remainder of the placement. When updating policies, provide a complete collection of policies.
--
-- /Note:/ Consider using 'playerLatencyPolicies' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ugsqPlayerLatencyPolicies :: Lens.Lens' UpdateGameSessionQueue (Core.Maybe [Types.PlayerLatencyPolicy])
ugsqPlayerLatencyPolicies = Lens.field @"playerLatencyPolicies"
{-# INLINEABLE ugsqPlayerLatencyPolicies #-}
{-# DEPRECATED playerLatencyPolicies "Use generic-lens or generic-optics with 'playerLatencyPolicies' instead"  #-}

-- | The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a @TIMED_OUT@ status.
--
-- /Note:/ Consider using 'timeoutInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ugsqTimeoutInSeconds :: Lens.Lens' UpdateGameSessionQueue (Core.Maybe Core.Natural)
ugsqTimeoutInSeconds = Lens.field @"timeoutInSeconds"
{-# INLINEABLE ugsqTimeoutInSeconds #-}
{-# DEPRECATED timeoutInSeconds "Use generic-lens or generic-optics with 'timeoutInSeconds' instead"  #-}

instance Core.ToQuery UpdateGameSessionQueue where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateGameSessionQueue where
        toHeaders UpdateGameSessionQueue{..}
          = Core.pure ("X-Amz-Target", "GameLift.UpdateGameSessionQueue")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateGameSessionQueue where
        toJSON UpdateGameSessionQueue{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("Name" Core..= name),
                  ("Destinations" Core..=) Core.<$> destinations,
                  ("PlayerLatencyPolicies" Core..=) Core.<$> playerLatencyPolicies,
                  ("TimeoutInSeconds" Core..=) Core.<$> timeoutInSeconds])

instance Core.AWSRequest UpdateGameSessionQueue where
        type Rs UpdateGameSessionQueue = UpdateGameSessionQueueResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 UpdateGameSessionQueueResponse' Core.<$>
                   (x Core..:? "GameSessionQueue") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | Represents the returned data in response to a request operation.
--
-- /See:/ 'mkUpdateGameSessionQueueResponse' smart constructor.
data UpdateGameSessionQueueResponse = UpdateGameSessionQueueResponse'
  { gameSessionQueue :: Core.Maybe Types.GameSessionQueue
    -- ^ An object that describes the newly updated game session queue.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateGameSessionQueueResponse' value with any optional fields omitted.
mkUpdateGameSessionQueueResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateGameSessionQueueResponse
mkUpdateGameSessionQueueResponse responseStatus
  = UpdateGameSessionQueueResponse'{gameSessionQueue = Core.Nothing,
                                    responseStatus}

-- | An object that describes the newly updated game session queue.
--
-- /Note:/ Consider using 'gameSessionQueue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ugsqrrsGameSessionQueue :: Lens.Lens' UpdateGameSessionQueueResponse (Core.Maybe Types.GameSessionQueue)
ugsqrrsGameSessionQueue = Lens.field @"gameSessionQueue"
{-# INLINEABLE ugsqrrsGameSessionQueue #-}
{-# DEPRECATED gameSessionQueue "Use generic-lens or generic-optics with 'gameSessionQueue' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ugsqrrsResponseStatus :: Lens.Lens' UpdateGameSessionQueueResponse Core.Int
ugsqrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ugsqrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
