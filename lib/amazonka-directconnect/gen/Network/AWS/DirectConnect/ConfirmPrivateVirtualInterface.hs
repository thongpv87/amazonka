{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.ConfirmPrivateVirtualInterface
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts ownership of a private virtual interface created by another AWS account.
--
-- After the virtual interface owner makes this call, the virtual interface is created and attached to the specified virtual private gateway or Direct Connect gateway, and is made available to handle traffic.
module Network.AWS.DirectConnect.ConfirmPrivateVirtualInterface
    (
    -- * Creating a request
      ConfirmPrivateVirtualInterface (..)
    , mkConfirmPrivateVirtualInterface
    -- ** Request lenses
    , cpviVirtualInterfaceId
    , cpviDirectConnectGatewayId
    , cpviVirtualGatewayId

    -- * Destructuring the response
    , ConfirmPrivateVirtualInterfaceResponse (..)
    , mkConfirmPrivateVirtualInterfaceResponse
    -- ** Response lenses
    , cpvirrsVirtualInterfaceState
    , cpvirrsResponseStatus
    ) where

import qualified Network.AWS.DirectConnect.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkConfirmPrivateVirtualInterface' smart constructor.
data ConfirmPrivateVirtualInterface = ConfirmPrivateVirtualInterface'
  { virtualInterfaceId :: Types.VirtualInterfaceId
    -- ^ The ID of the virtual interface.
  , directConnectGatewayId :: Core.Maybe Types.DirectConnectGatewayId
    -- ^ The ID of the Direct Connect gateway.
  , virtualGatewayId :: Core.Maybe Types.VirtualGatewayId
    -- ^ The ID of the virtual private gateway.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ConfirmPrivateVirtualInterface' value with any optional fields omitted.
mkConfirmPrivateVirtualInterface
    :: Types.VirtualInterfaceId -- ^ 'virtualInterfaceId'
    -> ConfirmPrivateVirtualInterface
mkConfirmPrivateVirtualInterface virtualInterfaceId
  = ConfirmPrivateVirtualInterface'{virtualInterfaceId,
                                    directConnectGatewayId = Core.Nothing,
                                    virtualGatewayId = Core.Nothing}

-- | The ID of the virtual interface.
--
-- /Note:/ Consider using 'virtualInterfaceId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpviVirtualInterfaceId :: Lens.Lens' ConfirmPrivateVirtualInterface Types.VirtualInterfaceId
cpviVirtualInterfaceId = Lens.field @"virtualInterfaceId"
{-# INLINEABLE cpviVirtualInterfaceId #-}
{-# DEPRECATED virtualInterfaceId "Use generic-lens or generic-optics with 'virtualInterfaceId' instead"  #-}

-- | The ID of the Direct Connect gateway.
--
-- /Note:/ Consider using 'directConnectGatewayId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpviDirectConnectGatewayId :: Lens.Lens' ConfirmPrivateVirtualInterface (Core.Maybe Types.DirectConnectGatewayId)
cpviDirectConnectGatewayId = Lens.field @"directConnectGatewayId"
{-# INLINEABLE cpviDirectConnectGatewayId #-}
{-# DEPRECATED directConnectGatewayId "Use generic-lens or generic-optics with 'directConnectGatewayId' instead"  #-}

-- | The ID of the virtual private gateway.
--
-- /Note:/ Consider using 'virtualGatewayId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpviVirtualGatewayId :: Lens.Lens' ConfirmPrivateVirtualInterface (Core.Maybe Types.VirtualGatewayId)
cpviVirtualGatewayId = Lens.field @"virtualGatewayId"
{-# INLINEABLE cpviVirtualGatewayId #-}
{-# DEPRECATED virtualGatewayId "Use generic-lens or generic-optics with 'virtualGatewayId' instead"  #-}

instance Core.ToQuery ConfirmPrivateVirtualInterface where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ConfirmPrivateVirtualInterface where
        toHeaders ConfirmPrivateVirtualInterface{..}
          = Core.pure
              ("X-Amz-Target", "OvertureService.ConfirmPrivateVirtualInterface")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ConfirmPrivateVirtualInterface where
        toJSON ConfirmPrivateVirtualInterface{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("virtualInterfaceId" Core..= virtualInterfaceId),
                  ("directConnectGatewayId" Core..=) Core.<$> directConnectGatewayId,
                  ("virtualGatewayId" Core..=) Core.<$> virtualGatewayId])

instance Core.AWSRequest ConfirmPrivateVirtualInterface where
        type Rs ConfirmPrivateVirtualInterface =
             ConfirmPrivateVirtualInterfaceResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ConfirmPrivateVirtualInterfaceResponse' Core.<$>
                   (x Core..:? "virtualInterfaceState") Core.<*>
                     Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkConfirmPrivateVirtualInterfaceResponse' smart constructor.
data ConfirmPrivateVirtualInterfaceResponse = ConfirmPrivateVirtualInterfaceResponse'
  { virtualInterfaceState :: Core.Maybe Types.VirtualInterfaceState
    -- ^ The state of the virtual interface. The following are the possible values:
--
--
--     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.
--
--
--     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.
--
--
--     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.
--
--
--     * @available@ : A virtual interface that is able to forward traffic.
--
--
--     * @down@ : A virtual interface that is BGP down.
--
--
--     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.
--
--
--     * @deleted@ : A virtual interface that cannot forward traffic.
--
--
--     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.
--
--
--     * @unknown@ : The state of the virtual interface is not available.
--
--
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ConfirmPrivateVirtualInterfaceResponse' value with any optional fields omitted.
mkConfirmPrivateVirtualInterfaceResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ConfirmPrivateVirtualInterfaceResponse
mkConfirmPrivateVirtualInterfaceResponse responseStatus
  = ConfirmPrivateVirtualInterfaceResponse'{virtualInterfaceState =
                                              Core.Nothing,
                                            responseStatus}

-- | The state of the virtual interface. The following are the possible values:
--
--
--     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.
--
--
--     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.
--
--
--     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.
--
--
--     * @available@ : A virtual interface that is able to forward traffic.
--
--
--     * @down@ : A virtual interface that is BGP down.
--
--
--     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.
--
--
--     * @deleted@ : A virtual interface that cannot forward traffic.
--
--
--     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.
--
--
--     * @unknown@ : The state of the virtual interface is not available.
--
--
--
-- /Note:/ Consider using 'virtualInterfaceState' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpvirrsVirtualInterfaceState :: Lens.Lens' ConfirmPrivateVirtualInterfaceResponse (Core.Maybe Types.VirtualInterfaceState)
cpvirrsVirtualInterfaceState = Lens.field @"virtualInterfaceState"
{-# INLINEABLE cpvirrsVirtualInterfaceState #-}
{-# DEPRECATED virtualInterfaceState "Use generic-lens or generic-optics with 'virtualInterfaceState' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
cpvirrsResponseStatus :: Lens.Lens' ConfirmPrivateVirtualInterfaceResponse Core.Int
cpvirrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE cpvirrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
