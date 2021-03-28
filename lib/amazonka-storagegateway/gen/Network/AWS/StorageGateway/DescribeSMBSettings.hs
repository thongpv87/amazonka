{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.DescribeSMBSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a description of a Server Message Block (SMB) file share settings from a file gateway. This operation is only supported for file gateways.
module Network.AWS.StorageGateway.DescribeSMBSettings
    (
    -- * Creating a request
      DescribeSMBSettings (..)
    , mkDescribeSMBSettings
    -- ** Request lenses
    , dsmbsGatewayARN

    -- * Destructuring the response
    , DescribeSMBSettingsResponse (..)
    , mkDescribeSMBSettingsResponse
    -- ** Response lenses
    , dsmbsrrsActiveDirectoryStatus
    , dsmbsrrsDomainName
    , dsmbsrrsFileSharesVisible
    , dsmbsrrsGatewayARN
    , dsmbsrrsSMBGuestPasswordSet
    , dsmbsrrsSMBSecurityStrategy
    , dsmbsrrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.StorageGateway.Types as Types

-- | /See:/ 'mkDescribeSMBSettings' smart constructor.
newtype DescribeSMBSettings = DescribeSMBSettings'
  { gatewayARN :: Types.GatewayARN
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeSMBSettings' value with any optional fields omitted.
mkDescribeSMBSettings
    :: Types.GatewayARN -- ^ 'gatewayARN'
    -> DescribeSMBSettings
mkDescribeSMBSettings gatewayARN = DescribeSMBSettings'{gatewayARN}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsmbsGatewayARN :: Lens.Lens' DescribeSMBSettings Types.GatewayARN
dsmbsGatewayARN = Lens.field @"gatewayARN"
{-# INLINEABLE dsmbsGatewayARN #-}
{-# DEPRECATED gatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead"  #-}

instance Core.ToQuery DescribeSMBSettings where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders DescribeSMBSettings where
        toHeaders DescribeSMBSettings{..}
          = Core.pure
              ("X-Amz-Target", "StorageGateway_20130630.DescribeSMBSettings")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON DescribeSMBSettings where
        toJSON DescribeSMBSettings{..}
          = Core.object
              (Core.catMaybes [Core.Just ("GatewayARN" Core..= gatewayARN)])

instance Core.AWSRequest DescribeSMBSettings where
        type Rs DescribeSMBSettings = DescribeSMBSettingsResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 DescribeSMBSettingsResponse' Core.<$>
                   (x Core..:? "ActiveDirectoryStatus") Core.<*>
                     x Core..:? "DomainName"
                     Core.<*> x Core..:? "FileSharesVisible"
                     Core.<*> x Core..:? "GatewayARN"
                     Core.<*> x Core..:? "SMBGuestPasswordSet"
                     Core.<*> x Core..:? "SMBSecurityStrategy"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkDescribeSMBSettingsResponse' smart constructor.
data DescribeSMBSettingsResponse = DescribeSMBSettingsResponse'
  { activeDirectoryStatus :: Core.Maybe Types.ActiveDirectoryStatus
    -- ^ Indicates the status of a gateway that is a member of the Active Directory domain.
--
--
--     * @ACCESS_DENIED@ : Indicates that the @JoinDomain@ operation failed due to an authentication error.
--
--
--     * @DETACHED@ : Indicates that gateway is not joined to a domain.
--
--
--     * @JOINED@ : Indicates that the gateway has successfully joined a domain.
--
--
--     * @JOINING@ : Indicates that a @JoinDomain@ operation is in progress.
--
--
--     * @NETWORK_ERROR@ : Indicates that @JoinDomain@ operation failed due to a network or connectivity error.
--
--
--     * @TIMEOUT@ : Indicates that the @JoinDomain@ operation failed because the operation didn't complete within the allotted time.
--
--
--     * @UNKNOWN_ERROR@ : Indicates that the @JoinDomain@ operation failed due to another type of error.
--
--
  , domainName :: Core.Maybe Types.DomainName
    -- ^ The name of the domain that the gateway is joined to.
  , fileSharesVisible :: Core.Maybe Core.Bool
    -- ^ The shares on this gateway appear when listing shares.
  , gatewayARN :: Core.Maybe Types.GatewayARN
  , sMBGuestPasswordSet :: Core.Maybe Core.Bool
    -- ^ This value is @true@ if a password for the guest user @smbguest@ is set, otherwise @false@ .
--
-- Valid Values: @true@ | @false@ 
  , sMBSecurityStrategy :: Core.Maybe Types.SMBSecurityStrategy
    -- ^ The type of security strategy that was specified for file gateway.
--
--
--     * @ClientSpecified@ : If you use this option, requests are established based on what is negotiated by the client. This option is recommended when you want to maximize compatibility across different clients in your environment.
--
--
--     * @MandatorySigning@ : If you use this option, file gateway only allows connections from SMBv2 or SMBv3 clients that have signing enabled. This option works with SMB clients on Microsoft Windows Vista, Windows Server 2008 or newer.
--
--
--     * @MandatoryEncryption@ : If you use this option, file gateway only allows connections from SMBv3 clients that have encryption enabled. This option is highly recommended for environments that handle sensitive data. This option works with SMB clients on Microsoft Windows 8, Windows Server 2012 or newer.
--
--
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DescribeSMBSettingsResponse' value with any optional fields omitted.
mkDescribeSMBSettingsResponse
    :: Core.Int -- ^ 'responseStatus'
    -> DescribeSMBSettingsResponse
mkDescribeSMBSettingsResponse responseStatus
  = DescribeSMBSettingsResponse'{activeDirectoryStatus =
                                   Core.Nothing,
                                 domainName = Core.Nothing, fileSharesVisible = Core.Nothing,
                                 gatewayARN = Core.Nothing, sMBGuestPasswordSet = Core.Nothing,
                                 sMBSecurityStrategy = Core.Nothing, responseStatus}

-- | Indicates the status of a gateway that is a member of the Active Directory domain.
--
--
--     * @ACCESS_DENIED@ : Indicates that the @JoinDomain@ operation failed due to an authentication error.
--
--
--     * @DETACHED@ : Indicates that gateway is not joined to a domain.
--
--
--     * @JOINED@ : Indicates that the gateway has successfully joined a domain.
--
--
--     * @JOINING@ : Indicates that a @JoinDomain@ operation is in progress.
--
--
--     * @NETWORK_ERROR@ : Indicates that @JoinDomain@ operation failed due to a network or connectivity error.
--
--
--     * @TIMEOUT@ : Indicates that the @JoinDomain@ operation failed because the operation didn't complete within the allotted time.
--
--
--     * @UNKNOWN_ERROR@ : Indicates that the @JoinDomain@ operation failed due to another type of error.
--
--
--
-- /Note:/ Consider using 'activeDirectoryStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsmbsrrsActiveDirectoryStatus :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Types.ActiveDirectoryStatus)
dsmbsrrsActiveDirectoryStatus = Lens.field @"activeDirectoryStatus"
{-# INLINEABLE dsmbsrrsActiveDirectoryStatus #-}
{-# DEPRECATED activeDirectoryStatus "Use generic-lens or generic-optics with 'activeDirectoryStatus' instead"  #-}

-- | The name of the domain that the gateway is joined to.
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsmbsrrsDomainName :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Types.DomainName)
dsmbsrrsDomainName = Lens.field @"domainName"
{-# INLINEABLE dsmbsrrsDomainName #-}
{-# DEPRECATED domainName "Use generic-lens or generic-optics with 'domainName' instead"  #-}

-- | The shares on this gateway appear when listing shares.
--
-- /Note:/ Consider using 'fileSharesVisible' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsmbsrrsFileSharesVisible :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Core.Bool)
dsmbsrrsFileSharesVisible = Lens.field @"fileSharesVisible"
{-# INLINEABLE dsmbsrrsFileSharesVisible #-}
{-# DEPRECATED fileSharesVisible "Use generic-lens or generic-optics with 'fileSharesVisible' instead"  #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'gatewayARN' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsmbsrrsGatewayARN :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Types.GatewayARN)
dsmbsrrsGatewayARN = Lens.field @"gatewayARN"
{-# INLINEABLE dsmbsrrsGatewayARN #-}
{-# DEPRECATED gatewayARN "Use generic-lens or generic-optics with 'gatewayARN' instead"  #-}

-- | This value is @true@ if a password for the guest user @smbguest@ is set, otherwise @false@ .
--
-- Valid Values: @true@ | @false@ 
--
-- /Note:/ Consider using 'sMBGuestPasswordSet' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsmbsrrsSMBGuestPasswordSet :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Core.Bool)
dsmbsrrsSMBGuestPasswordSet = Lens.field @"sMBGuestPasswordSet"
{-# INLINEABLE dsmbsrrsSMBGuestPasswordSet #-}
{-# DEPRECATED sMBGuestPasswordSet "Use generic-lens or generic-optics with 'sMBGuestPasswordSet' instead"  #-}

-- | The type of security strategy that was specified for file gateway.
--
--
--     * @ClientSpecified@ : If you use this option, requests are established based on what is negotiated by the client. This option is recommended when you want to maximize compatibility across different clients in your environment.
--
--
--     * @MandatorySigning@ : If you use this option, file gateway only allows connections from SMBv2 or SMBv3 clients that have signing enabled. This option works with SMB clients on Microsoft Windows Vista, Windows Server 2008 or newer.
--
--
--     * @MandatoryEncryption@ : If you use this option, file gateway only allows connections from SMBv3 clients that have encryption enabled. This option is highly recommended for environments that handle sensitive data. This option works with SMB clients on Microsoft Windows 8, Windows Server 2012 or newer.
--
--
--
-- /Note:/ Consider using 'sMBSecurityStrategy' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsmbsrrsSMBSecurityStrategy :: Lens.Lens' DescribeSMBSettingsResponse (Core.Maybe Types.SMBSecurityStrategy)
dsmbsrrsSMBSecurityStrategy = Lens.field @"sMBSecurityStrategy"
{-# INLINEABLE dsmbsrrsSMBSecurityStrategy #-}
{-# DEPRECATED sMBSecurityStrategy "Use generic-lens or generic-optics with 'sMBSecurityStrategy' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dsmbsrrsResponseStatus :: Lens.Lens' DescribeSMBSettingsResponse Core.Int
dsmbsrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE dsmbsrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
