{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.DeleteSlotType
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all versions of the slot type, including the @> LATEST@ version. To delete a specific version of the slot type, use the 'DeleteSlotTypeVersion' operation.
--
-- You can delete a version of a slot type only if it is not referenced. To delete a slot type that is referred to in one or more intents, you must remove those references first. 
-- This operation requires permission for the @lex:DeleteSlotType@ action.
module Network.AWS.LexModels.DeleteSlotType
    (
    -- * Creating a request
      DeleteSlotType (..)
    , mkDeleteSlotType
    -- ** Request lenses
    , dstName

    -- * Destructuring the response
    , DeleteSlotTypeResponse (..)
    , mkDeleteSlotTypeResponse
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.LexModels.Types as Types
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteSlotType' smart constructor.
newtype DeleteSlotType = DeleteSlotType'
  { name :: Types.SlotTypeName
    -- ^ The name of the slot type. The name is case sensitive. 
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteSlotType' value with any optional fields omitted.
mkDeleteSlotType
    :: Types.SlotTypeName -- ^ 'name'
    -> DeleteSlotType
mkDeleteSlotType name = DeleteSlotType'{name}

-- | The name of the slot type. The name is case sensitive. 
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dstName :: Lens.Lens' DeleteSlotType Types.SlotTypeName
dstName = Lens.field @"name"
{-# INLINEABLE dstName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

instance Core.ToQuery DeleteSlotType where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteSlotType where
        toHeaders DeleteSlotType{..}
          = Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.AWSRequest DeleteSlotType where
        type Rs DeleteSlotType = DeleteSlotTypeResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.DELETE,
                         Core._rqPath = "/slottypes/" Core.<> Core.toText name,
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse = Response.receiveNull DeleteSlotTypeResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDeleteSlotTypeResponse' smart constructor.
data DeleteSlotTypeResponse = DeleteSlotTypeResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteSlotTypeResponse' value with any optional fields omitted.
mkDeleteSlotTypeResponse
    :: DeleteSlotTypeResponse
mkDeleteSlotTypeResponse = DeleteSlotTypeResponse'
