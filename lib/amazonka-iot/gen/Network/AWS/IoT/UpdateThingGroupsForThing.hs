{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.UpdateThingGroupsForThing
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the groups to which the thing belongs.
module Network.AWS.IoT.UpdateThingGroupsForThing
    (
    -- * Creating a request
      UpdateThingGroupsForThing (..)
    , mkUpdateThingGroupsForThing
    -- ** Request lenses
    , utgftOverrideDynamicGroups
    , utgftThingGroupsToAdd
    , utgftThingGroupsToRemove
    , utgftThingName

    -- * Destructuring the response
    , UpdateThingGroupsForThingResponse (..)
    , mkUpdateThingGroupsForThingResponse
    -- ** Response lenses
    , utgftrrsResponseStatus
    ) where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateThingGroupsForThing' smart constructor.
data UpdateThingGroupsForThing = UpdateThingGroupsForThing'
  { overrideDynamicGroups :: Core.Maybe Core.Bool
    -- ^ Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
  , thingGroupsToAdd :: Core.Maybe [Types.ThingGroupName]
    -- ^ The groups to which the thing will be added.
  , thingGroupsToRemove :: Core.Maybe [Types.ThingGroupName]
    -- ^ The groups from which the thing will be removed.
  , thingName :: Core.Maybe Types.ThingName
    -- ^ The thing whose group memberships will be updated.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateThingGroupsForThing' value with any optional fields omitted.
mkUpdateThingGroupsForThing
    :: UpdateThingGroupsForThing
mkUpdateThingGroupsForThing
  = UpdateThingGroupsForThing'{overrideDynamicGroups = Core.Nothing,
                               thingGroupsToAdd = Core.Nothing,
                               thingGroupsToRemove = Core.Nothing, thingName = Core.Nothing}

-- | Override dynamic thing groups with static thing groups when 10-group limit is reached. If a thing belongs to 10 thing groups, and one or more of those groups are dynamic thing groups, adding a thing to a static group removes the thing from the last dynamic group.
--
-- /Note:/ Consider using 'overrideDynamicGroups' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgftOverrideDynamicGroups :: Lens.Lens' UpdateThingGroupsForThing (Core.Maybe Core.Bool)
utgftOverrideDynamicGroups = Lens.field @"overrideDynamicGroups"
{-# INLINEABLE utgftOverrideDynamicGroups #-}
{-# DEPRECATED overrideDynamicGroups "Use generic-lens or generic-optics with 'overrideDynamicGroups' instead"  #-}

-- | The groups to which the thing will be added.
--
-- /Note:/ Consider using 'thingGroupsToAdd' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgftThingGroupsToAdd :: Lens.Lens' UpdateThingGroupsForThing (Core.Maybe [Types.ThingGroupName])
utgftThingGroupsToAdd = Lens.field @"thingGroupsToAdd"
{-# INLINEABLE utgftThingGroupsToAdd #-}
{-# DEPRECATED thingGroupsToAdd "Use generic-lens or generic-optics with 'thingGroupsToAdd' instead"  #-}

-- | The groups from which the thing will be removed.
--
-- /Note:/ Consider using 'thingGroupsToRemove' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgftThingGroupsToRemove :: Lens.Lens' UpdateThingGroupsForThing (Core.Maybe [Types.ThingGroupName])
utgftThingGroupsToRemove = Lens.field @"thingGroupsToRemove"
{-# INLINEABLE utgftThingGroupsToRemove #-}
{-# DEPRECATED thingGroupsToRemove "Use generic-lens or generic-optics with 'thingGroupsToRemove' instead"  #-}

-- | The thing whose group memberships will be updated.
--
-- /Note:/ Consider using 'thingName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgftThingName :: Lens.Lens' UpdateThingGroupsForThing (Core.Maybe Types.ThingName)
utgftThingName = Lens.field @"thingName"
{-# INLINEABLE utgftThingName #-}
{-# DEPRECATED thingName "Use generic-lens or generic-optics with 'thingName' instead"  #-}

instance Core.ToQuery UpdateThingGroupsForThing where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateThingGroupsForThing where
        toHeaders _ = Core.pure Core.mempty

instance Core.FromJSON UpdateThingGroupsForThing where
        toJSON UpdateThingGroupsForThing{..}
          = Core.object
              (Core.catMaybes
                 [("overrideDynamicGroups" Core..=) Core.<$> overrideDynamicGroups,
                  ("thingGroupsToAdd" Core..=) Core.<$> thingGroupsToAdd,
                  ("thingGroupsToRemove" Core..=) Core.<$> thingGroupsToRemove,
                  ("thingName" Core..=) Core.<$> thingName])

instance Core.AWSRequest UpdateThingGroupsForThing where
        type Rs UpdateThingGroupsForThing =
             UpdateThingGroupsForThingResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PUT,
                         Core._rqPath = "/thing-groups/updateThingGroupsForThing",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 UpdateThingGroupsForThingResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateThingGroupsForThingResponse' smart constructor.
newtype UpdateThingGroupsForThingResponse = UpdateThingGroupsForThingResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateThingGroupsForThingResponse' value with any optional fields omitted.
mkUpdateThingGroupsForThingResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateThingGroupsForThingResponse
mkUpdateThingGroupsForThingResponse responseStatus
  = UpdateThingGroupsForThingResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
utgftrrsResponseStatus :: Lens.Lens' UpdateThingGroupsForThingResponse Core.Int
utgftrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE utgftrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
