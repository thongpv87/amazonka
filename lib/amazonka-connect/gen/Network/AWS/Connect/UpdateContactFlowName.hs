{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.UpdateContactFlowName
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The name of the contact flow.
--
-- You can also create and update contact flows using the <https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html Amazon Connect Flow language> .
module Network.AWS.Connect.UpdateContactFlowName
    (
    -- * Creating a request
      UpdateContactFlowName (..)
    , mkUpdateContactFlowName
    -- ** Request lenses
    , ucfnInstanceId
    , ucfnContactFlowId
    , ucfnDescription
    , ucfnName

    -- * Destructuring the response
    , UpdateContactFlowNameResponse (..)
    , mkUpdateContactFlowNameResponse
    ) where

import qualified Network.AWS.Connect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateContactFlowName' smart constructor.
data UpdateContactFlowName = UpdateContactFlowName'
  { instanceId :: Types.InstanceId
    -- ^ The identifier of the Amazon Connect instance.
  , contactFlowId :: Types.ContactFlowId
    -- ^ The identifier of the contact flow.
  , description :: Core.Maybe Types.ContactFlowDescription
    -- ^ The description of the contact flow.
  , name :: Core.Maybe Types.Name
    -- ^ The name of the contact flow.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateContactFlowName' value with any optional fields omitted.
mkUpdateContactFlowName
    :: Types.InstanceId -- ^ 'instanceId'
    -> Types.ContactFlowId -- ^ 'contactFlowId'
    -> UpdateContactFlowName
mkUpdateContactFlowName instanceId contactFlowId
  = UpdateContactFlowName'{instanceId, contactFlowId,
                           description = Core.Nothing, name = Core.Nothing}

-- | The identifier of the Amazon Connect instance.
--
-- /Note:/ Consider using 'instanceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucfnInstanceId :: Lens.Lens' UpdateContactFlowName Types.InstanceId
ucfnInstanceId = Lens.field @"instanceId"
{-# INLINEABLE ucfnInstanceId #-}
{-# DEPRECATED instanceId "Use generic-lens or generic-optics with 'instanceId' instead"  #-}

-- | The identifier of the contact flow.
--
-- /Note:/ Consider using 'contactFlowId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucfnContactFlowId :: Lens.Lens' UpdateContactFlowName Types.ContactFlowId
ucfnContactFlowId = Lens.field @"contactFlowId"
{-# INLINEABLE ucfnContactFlowId #-}
{-# DEPRECATED contactFlowId "Use generic-lens or generic-optics with 'contactFlowId' instead"  #-}

-- | The description of the contact flow.
--
-- /Note:/ Consider using 'description' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucfnDescription :: Lens.Lens' UpdateContactFlowName (Core.Maybe Types.ContactFlowDescription)
ucfnDescription = Lens.field @"description"
{-# INLINEABLE ucfnDescription #-}
{-# DEPRECATED description "Use generic-lens or generic-optics with 'description' instead"  #-}

-- | The name of the contact flow.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucfnName :: Lens.Lens' UpdateContactFlowName (Core.Maybe Types.Name)
ucfnName = Lens.field @"name"
{-# INLINEABLE ucfnName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.ToQuery UpdateContactFlowName where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateContactFlowName where
        toHeaders UpdateContactFlowName{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateContactFlowName where
        toJSON UpdateContactFlowName{..}
          = Core.object
              (Core.catMaybes
                 [("Description" Core..=) Core.<$> description,
                  ("Name" Core..=) Core.<$> name])

instance Core.AWSRequest UpdateContactFlowName where
        type Rs UpdateContactFlowName = UpdateContactFlowNameResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST,
                         Core._rqPath =
                           "/contact-flows/" Core.<> Core.toText instanceId Core.<> "/"
                             Core.<> Core.toText contactFlowId
                             Core.<> "/name",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse = Response.receiveNull UpdateContactFlowNameResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateContactFlowNameResponse' smart constructor.
data UpdateContactFlowNameResponse = UpdateContactFlowNameResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateContactFlowNameResponse' value with any optional fields omitted.
mkUpdateContactFlowNameResponse
    :: UpdateContactFlowNameResponse
mkUpdateContactFlowNameResponse = UpdateContactFlowNameResponse'
