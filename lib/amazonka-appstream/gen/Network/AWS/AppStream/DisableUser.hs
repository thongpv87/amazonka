{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.DisableUser
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the specified user in the user pool. Users can't sign in to AppStream 2.0 until they are re-enabled. This action does not delete the user. 
module Network.AWS.AppStream.DisableUser
    (
    -- * Creating a request
      DisableUser (..)
    , mkDisableUser
    -- ** Request lenses
    , dUserName
    , dAuthenticationType

    -- * Destructuring the response
    , DisableUserResponse (..)
    , mkDisableUserResponse
    -- ** Response lenses
    , durfrsResponseStatus
    ) where

import qualified Network.AWS.AppStream.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkDisableUser' smart constructor.
data DisableUser = DisableUser'
  { userName :: Types.Username
    -- ^ The email address of the user.
  , authenticationType :: Types.AuthenticationType
    -- ^ The authentication type for the user. You must specify USERPOOL.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DisableUser' value with any optional fields omitted.
mkDisableUser
    :: Types.Username -- ^ 'userName'
    -> Types.AuthenticationType -- ^ 'authenticationType'
    -> DisableUser
mkDisableUser userName authenticationType
  = DisableUser'{userName, authenticationType}

-- | The email address of the user.
--
-- /Note:/ Consider using 'userName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dUserName :: Lens.Lens' DisableUser Types.Username
dUserName = Lens.field @"userName"
{-# INLINEABLE dUserName #-}
{-# DEPRECATED userName "Use generic-lens or generic-optics with 'userName' instead"  #-}

-- | The authentication type for the user. You must specify USERPOOL.
--
-- /Note:/ Consider using 'authenticationType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dAuthenticationType :: Lens.Lens' DisableUser Types.AuthenticationType
dAuthenticationType = Lens.field @"authenticationType"
{-# INLINEABLE dAuthenticationType #-}
{-# DEPRECATED authenticationType "Use generic-lens or generic-optics with 'authenticationType' instead"  #-}

instance Core.ToQuery DisableUser where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DisableUser where
        toHeaders DisableUser{..}
          = Core.pure ("X-Amz-Target", "PhotonAdminProxyService.DisableUser")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DisableUser where
        toJSON DisableUser{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("UserName" Core..= userName),
                  Core.Just ("AuthenticationType" Core..= authenticationType)])

instance Core.AWSRequest DisableUser where
        type Rs DisableUser = DisableUserResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 DisableUserResponse' Core.<$> (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDisableUserResponse' smart constructor.
newtype DisableUserResponse = DisableUserResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DisableUserResponse' value with any optional fields omitted.
mkDisableUserResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DisableUserResponse
mkDisableUserResponse responseStatus
  = DisableUserResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
durfrsResponseStatus :: Lens.Lens' DisableUserResponse Core.Int
durfrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE durfrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
