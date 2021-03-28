{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.DisableDomainTransferLock
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation removes the transfer lock on the domain (specifically the @clientTransferProhibited@ status) to allow domain transfers. We recommend you refrain from performing this action unless you intend to transfer the domain to a different registrar. Successful submission returns an operation ID that you can use to track the progress and completion of the action. If the request is not completed successfully, the domain registrant will be notified by email.
module Network.AWS.Route53Domains.DisableDomainTransferLock
    (
    -- * Creating a request
      DisableDomainTransferLock (..)
    , mkDisableDomainTransferLock
    -- ** Request lenses
    , ddtlDomainName

    -- * Destructuring the response
    , DisableDomainTransferLockResponse (..)
    , mkDisableDomainTransferLockResponse
    -- ** Response lenses
    , ddtlrrsOperationId
    , ddtlrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Route53Domains.Types as Types

-- | The DisableDomainTransferLock request includes the following element.
--
-- /See:/ 'mkDisableDomainTransferLock' smart constructor.
newtype DisableDomainTransferLock = DisableDomainTransferLock'
  { domainName :: Types.DomainName
    -- ^ The name of the domain that you want to remove the transfer lock for.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DisableDomainTransferLock' value with any optional fields omitted.
mkDisableDomainTransferLock
    :: Types.DomainName -- ^ 'domainName'
    -> DisableDomainTransferLock
mkDisableDomainTransferLock domainName
  = DisableDomainTransferLock'{domainName}

-- | The name of the domain that you want to remove the transfer lock for.
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddtlDomainName :: Lens.Lens' DisableDomainTransferLock Types.DomainName
ddtlDomainName = Lens.field @"domainName"
{-# INLINEABLE ddtlDomainName #-}
{-# DEPRECATED domainName "Use generic-lens or generic-optics with 'domainName' instead"  #-}

instance Core.ToQuery DisableDomainTransferLock where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DisableDomainTransferLock where
        toHeaders DisableDomainTransferLock{..}
          = Core.pure
              ("X-Amz-Target",
               "Route53Domains_v20140515.DisableDomainTransferLock")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DisableDomainTransferLock where
        toJSON DisableDomainTransferLock{..}
          = Core.object
              (Core.catMaybes [Core.Just ("DomainName" Core..= domainName)])

instance Core.AWSRequest DisableDomainTransferLock where
        type Rs DisableDomainTransferLock =
             DisableDomainTransferLockResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DisableDomainTransferLockResponse' Core.<$>
                   (x Core..: "OperationId") Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | The DisableDomainTransferLock response includes the following element.
--
-- /See:/ 'mkDisableDomainTransferLockResponse' smart constructor.
data DisableDomainTransferLockResponse = DisableDomainTransferLockResponse'
  { operationId :: Types.OperationId
    -- ^ Identifier for tracking the progress of the request. To query the operation status, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> .
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DisableDomainTransferLockResponse' value with any optional fields omitted.
mkDisableDomainTransferLockResponse
    :: Types.OperationId -- ^ 'operationId'
    -> Core.Int -- ^ 'responseStatus'
    -> DisableDomainTransferLockResponse
mkDisableDomainTransferLockResponse operationId responseStatus
  = DisableDomainTransferLockResponse'{operationId, responseStatus}

-- | Identifier for tracking the progress of the request. To query the operation status, use <https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html GetOperationDetail> .
--
-- /Note:/ Consider using 'operationId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddtlrrsOperationId :: Lens.Lens' DisableDomainTransferLockResponse Types.OperationId
ddtlrrsOperationId = Lens.field @"operationId"
{-# INLINEABLE ddtlrrsOperationId #-}
{-# DEPRECATED operationId "Use generic-lens or generic-optics with 'operationId' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ddtlrrsResponseStatus :: Lens.Lens' DisableDomainTransferLockResponse Core.Int
ddtlrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ddtlrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
