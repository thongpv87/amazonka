{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.AttachObject
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches an existing object to another object. An object can be accessed in two ways:
--
--
--     * Using the path
--
--
--     * Using @ObjectIdentifier@ 
--
--
module Network.AWS.CloudDirectory.AttachObject
    (
    -- * Creating a request
      AttachObject (..)
    , mkAttachObject
    -- ** Request lenses
    , aoDirectoryArn
    , aoParentReference
    , aoChildReference
    , aoLinkName

    -- * Destructuring the response
    , AttachObjectResponse (..)
    , mkAttachObjectResponse
    -- ** Response lenses
    , aorrsAttachedObjectIdentifier
    , aorrsResponseStatus
    ) where

import qualified Network.AWS.CloudDirectory.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkAttachObject' smart constructor.
data AttachObject = AttachObject'
  { directoryArn :: Types.DirectoryArn
    -- ^ Amazon Resource Name (ARN) that is associated with the 'Directory' where both objects reside. For more information, see 'arns' .
  , parentReference :: Types.ObjectReference
    -- ^ The parent object reference.
  , childReference :: Types.ObjectReference
    -- ^ The child object reference to be attached to the object.
  , linkName :: Types.LinkName
    -- ^ The link name with which the child object is attached to the parent.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AttachObject' value with any optional fields omitted.
mkAttachObject
    :: Types.DirectoryArn -- ^ 'directoryArn'
    -> Types.ObjectReference -- ^ 'parentReference'
    -> Types.ObjectReference -- ^ 'childReference'
    -> Types.LinkName -- ^ 'linkName'
    -> AttachObject
mkAttachObject directoryArn parentReference childReference linkName
  = AttachObject'{directoryArn, parentReference, childReference,
                  linkName}

-- | Amazon Resource Name (ARN) that is associated with the 'Directory' where both objects reside. For more information, see 'arns' .
--
-- /Note:/ Consider using 'directoryArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aoDirectoryArn :: Lens.Lens' AttachObject Types.DirectoryArn
aoDirectoryArn = Lens.field @"directoryArn"
{-# INLINEABLE aoDirectoryArn #-}
{-# DEPRECATED directoryArn "Use generic-lens or generic-optics with 'directoryArn' instead"  #-}

-- | The parent object reference.
--
-- /Note:/ Consider using 'parentReference' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aoParentReference :: Lens.Lens' AttachObject Types.ObjectReference
aoParentReference = Lens.field @"parentReference"
{-# INLINEABLE aoParentReference #-}
{-# DEPRECATED parentReference "Use generic-lens or generic-optics with 'parentReference' instead"  #-}

-- | The child object reference to be attached to the object.
--
-- /Note:/ Consider using 'childReference' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aoChildReference :: Lens.Lens' AttachObject Types.ObjectReference
aoChildReference = Lens.field @"childReference"
{-# INLINEABLE aoChildReference #-}
{-# DEPRECATED childReference "Use generic-lens or generic-optics with 'childReference' instead"  #-}

-- | The link name with which the child object is attached to the parent.
--
-- /Note:/ Consider using 'linkName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aoLinkName :: Lens.Lens' AttachObject Types.LinkName
aoLinkName = Lens.field @"linkName"
{-# INLINEABLE aoLinkName #-}
{-# DEPRECATED linkName "Use generic-lens or generic-optics with 'linkName' instead"  #-}

instance Core.ToQuery AttachObject where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders AttachObject where
        toHeaders AttachObject{..}
          = Core.toHeaders "x-amz-data-partition" directoryArn

instance Core.FromJSON AttachObject where
        toJSON AttachObject{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("ParentReference" Core..= parentReference),
                  Core.Just ("ChildReference" Core..= childReference),
                  Core.Just ("LinkName" Core..= linkName)])

instance Core.AWSRequest AttachObject where
        type Rs AttachObject = AttachObjectResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.PUT,
                         Core._rqPath = "/amazonclouddirectory/2017-01-11/object/attach",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 AttachObjectResponse' Core.<$>
                   (x Core..:? "AttachedObjectIdentifier") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkAttachObjectResponse' smart constructor.
data AttachObjectResponse = AttachObjectResponse'
  { attachedObjectIdentifier :: Core.Maybe Types.ObjectIdentifier
    -- ^ The attached @ObjectIdentifier@ , which is the child @ObjectIdentifier@ .
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'AttachObjectResponse' value with any optional fields omitted.
mkAttachObjectResponse
    :: Core.Int -- ^ 'responseStatus'
    -> AttachObjectResponse
mkAttachObjectResponse responseStatus
  = AttachObjectResponse'{attachedObjectIdentifier = Core.Nothing,
                          responseStatus}

-- | The attached @ObjectIdentifier@ , which is the child @ObjectIdentifier@ .
--
-- /Note:/ Consider using 'attachedObjectIdentifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aorrsAttachedObjectIdentifier :: Lens.Lens' AttachObjectResponse (Core.Maybe Types.ObjectIdentifier)
aorrsAttachedObjectIdentifier = Lens.field @"attachedObjectIdentifier"
{-# INLINEABLE aorrsAttachedObjectIdentifier #-}
{-# DEPRECATED attachedObjectIdentifier "Use generic-lens or generic-optics with 'attachedObjectIdentifier' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
aorrsResponseStatus :: Lens.Lens' AttachObjectResponse Core.Int
aorrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE aorrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
