{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DeleteRegistrationCode
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a CA certificate registration code.
module Network.AWS.IoT.DeleteRegistrationCode
    (
    -- * Creating a request
      DeleteRegistrationCode (..)
    , mkDeleteRegistrationCode

    -- * Destructuring the response
    , DeleteRegistrationCodeResponse (..)
    , mkDeleteRegistrationCodeResponse
    -- ** Response lenses
    , drcrrsResponseStatus
    ) where

import qualified Network.AWS.IoT.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for the DeleteRegistrationCode operation.
--
-- /See:/ 'mkDeleteRegistrationCode' smart constructor.
data DeleteRegistrationCode = DeleteRegistrationCode'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteRegistrationCode' value with any optional fields omitted.
mkDeleteRegistrationCode
    :: DeleteRegistrationCode
mkDeleteRegistrationCode = DeleteRegistrationCode'

instance Core.ToQuery DeleteRegistrationCode where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DeleteRegistrationCode where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest DeleteRegistrationCode where
        type Rs DeleteRegistrationCode = DeleteRegistrationCodeResponse
        toRequest x@_
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.DELETE,
                         Core._rqPath = "/registrationcode", Core._rqQuery = Core.toQuery x,
                         Core._rqHeaders = Core.toHeaders x, Core._rqBody = ""}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 DeleteRegistrationCodeResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | The output for the DeleteRegistrationCode operation.
--
-- /See:/ 'mkDeleteRegistrationCodeResponse' smart constructor.
newtype DeleteRegistrationCodeResponse = DeleteRegistrationCodeResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DeleteRegistrationCodeResponse' value with any optional fields omitted.
mkDeleteRegistrationCodeResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DeleteRegistrationCodeResponse
mkDeleteRegistrationCodeResponse responseStatus
  = DeleteRegistrationCodeResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
drcrrsResponseStatus :: Lens.Lens' DeleteRegistrationCodeResponse Core.Int
drcrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE drcrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
