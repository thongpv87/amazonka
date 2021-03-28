{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.DeleteStudioSessionMapping
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a user or group from an Amazon EMR Studio.
module Network.AWS.EMR.DeleteStudioSessionMapping
    (
    -- * Creating a request
      DeleteStudioSessionMapping (..)
    , mkDeleteStudioSessionMapping
    -- ** Request lenses
    , dssmStudioId
    , dssmIdentityType
    , dssmIdentityId
    , dssmIdentityName

    -- * Destructuring the response
    , DeleteStudioSessionMappingResponse (..)
    , mkDeleteStudioSessionMappingResponse
    ) where

import qualified Network.AWS.EMR.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDeleteStudioSessionMapping' smart constructor.
data DeleteStudioSessionMapping = DeleteStudioSessionMapping'
  { studioId :: Types.XmlStringMaxLen256
    -- ^ The ID of the Amazon EMR Studio.
  , identityType :: Types.IdentityType
    -- ^ Specifies whether the identity to delete from the Studio is a user or a group.
  , identityId :: Core.Maybe Types.XmlStringMaxLen256
    -- ^ The globally unique identifier (GUID) of the user or group to remove from the Amazon EMR Studio. For more information, see <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId UserId> and <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId GroupId> in the /AWS SSO Identity Store API Reference/ . Either @IdentityName@ or @IdentityId@ must be specified.
  , identityName :: Core.Maybe Types.XmlStringMaxLen256
    -- ^ The name of the user name or group to remove from the Studio. For more information, see <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId UserName> and <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName DisplayName> in the /AWS SSO Identity Store API Reference/ . Either @IdentityName@ or @IdentityId@ must be specified.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteStudioSessionMapping' value with any optional fields omitted.
mkDeleteStudioSessionMapping
    :: Types.XmlStringMaxLen256 -- ^ 'studioId'
    -> Types.IdentityType -- ^ 'identityType'
    -> DeleteStudioSessionMapping
mkDeleteStudioSessionMapping studioId identityType
  = DeleteStudioSessionMapping'{studioId, identityType,
                                identityId = Core.Nothing, identityName = Core.Nothing}

-- | The ID of the Amazon EMR Studio.
--
-- /Note:/ Consider using 'studioId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dssmStudioId :: Lens.Lens' DeleteStudioSessionMapping Types.XmlStringMaxLen256
dssmStudioId = Lens.field @"studioId"
{-# INLINEABLE dssmStudioId #-}
{-# DEPRECATED studioId "Use generic-lens or generic-optics with 'studioId' instead"  #-}

-- | Specifies whether the identity to delete from the Studio is a user or a group.
--
-- /Note:/ Consider using 'identityType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dssmIdentityType :: Lens.Lens' DeleteStudioSessionMapping Types.IdentityType
dssmIdentityType = Lens.field @"identityType"
{-# INLINEABLE dssmIdentityType #-}
{-# DEPRECATED identityType "Use generic-lens or generic-optics with 'identityType' instead"  #-}

-- | The globally unique identifier (GUID) of the user or group to remove from the Amazon EMR Studio. For more information, see <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId UserId> and <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId GroupId> in the /AWS SSO Identity Store API Reference/ . Either @IdentityName@ or @IdentityId@ must be specified.
--
-- /Note:/ Consider using 'identityId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dssmIdentityId :: Lens.Lens' DeleteStudioSessionMapping (Core.Maybe Types.XmlStringMaxLen256)
dssmIdentityId = Lens.field @"identityId"
{-# INLINEABLE dssmIdentityId #-}
{-# DEPRECATED identityId "Use generic-lens or generic-optics with 'identityId' instead"  #-}

-- | The name of the user name or group to remove from the Studio. For more information, see <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId UserName> and <https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName DisplayName> in the /AWS SSO Identity Store API Reference/ . Either @IdentityName@ or @IdentityId@ must be specified.
--
-- /Note:/ Consider using 'identityName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dssmIdentityName :: Lens.Lens' DeleteStudioSessionMapping (Core.Maybe Types.XmlStringMaxLen256)
dssmIdentityName = Lens.field @"identityName"
{-# INLINEABLE dssmIdentityName #-}
{-# DEPRECATED identityName "Use generic-lens or generic-optics with 'identityName' instead"  #-}

instance Core.ToQuery DeleteStudioSessionMapping where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteStudioSessionMapping where
        toHeaders DeleteStudioSessionMapping{..}
          = Core.pure
              ("X-Amz-Target", "ElasticMapReduce.DeleteStudioSessionMapping")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DeleteStudioSessionMapping where
        toJSON DeleteStudioSessionMapping{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("StudioId" Core..= studioId),
                  Core.Just ("IdentityType" Core..= identityType),
                  ("IdentityId" Core..=) Core.<$> identityId,
                  ("IdentityName" Core..=) Core.<$> identityName])

instance Core.AWSRequest DeleteStudioSessionMapping where
        type Rs DeleteStudioSessionMapping =
             DeleteStudioSessionMappingResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveNull DeleteStudioSessionMappingResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDeleteStudioSessionMappingResponse' smart constructor.
data DeleteStudioSessionMappingResponse = DeleteStudioSessionMappingResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteStudioSessionMappingResponse' value with any optional fields omitted.
mkDeleteStudioSessionMappingResponse
    :: DeleteStudioSessionMappingResponse
mkDeleteStudioSessionMappingResponse
  = DeleteStudioSessionMappingResponse'
