{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceNetworkSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaLive.Types.InputDeviceNetworkSettings
  ( InputDeviceNetworkSettings (..)
  -- * Smart constructor
  , mkInputDeviceNetworkSettings
  -- * Lenses
  , idnsDnsAddresses
  , idnsGateway
  , idnsIpAddress
  , idnsIpScheme
  , idnsSubnetMask
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.MediaLive.Types.InputDeviceIpScheme as Types
import qualified Network.AWS.Prelude as Core

-- | The network settings for the input device.
--
-- /See:/ 'mkInputDeviceNetworkSettings' smart constructor.
data InputDeviceNetworkSettings = InputDeviceNetworkSettings'
  { dnsAddresses :: Core.Maybe [Core.Text]
    -- ^ The DNS addresses of the input device.
  , gateway :: Core.Maybe Core.Text
    -- ^ The network gateway IP address.
  , ipAddress :: Core.Maybe Core.Text
    -- ^ The IP address of the input device.
  , ipScheme :: Core.Maybe Types.InputDeviceIpScheme
    -- ^ Specifies whether the input device has been configured (outside of MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP address.
  , subnetMask :: Core.Maybe Core.Text
    -- ^ The subnet mask of the input device.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'InputDeviceNetworkSettings' value with any optional fields omitted.
mkInputDeviceNetworkSettings
    :: InputDeviceNetworkSettings
mkInputDeviceNetworkSettings
  = InputDeviceNetworkSettings'{dnsAddresses = Core.Nothing,
                                gateway = Core.Nothing, ipAddress = Core.Nothing,
                                ipScheme = Core.Nothing, subnetMask = Core.Nothing}

-- | The DNS addresses of the input device.
--
-- /Note:/ Consider using 'dnsAddresses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idnsDnsAddresses :: Lens.Lens' InputDeviceNetworkSettings (Core.Maybe [Core.Text])
idnsDnsAddresses = Lens.field @"dnsAddresses"
{-# INLINEABLE idnsDnsAddresses #-}
{-# DEPRECATED dnsAddresses "Use generic-lens or generic-optics with 'dnsAddresses' instead"  #-}

-- | The network gateway IP address.
--
-- /Note:/ Consider using 'gateway' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idnsGateway :: Lens.Lens' InputDeviceNetworkSettings (Core.Maybe Core.Text)
idnsGateway = Lens.field @"gateway"
{-# INLINEABLE idnsGateway #-}
{-# DEPRECATED gateway "Use generic-lens or generic-optics with 'gateway' instead"  #-}

-- | The IP address of the input device.
--
-- /Note:/ Consider using 'ipAddress' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idnsIpAddress :: Lens.Lens' InputDeviceNetworkSettings (Core.Maybe Core.Text)
idnsIpAddress = Lens.field @"ipAddress"
{-# INLINEABLE idnsIpAddress #-}
{-# DEPRECATED ipAddress "Use generic-lens or generic-optics with 'ipAddress' instead"  #-}

-- | Specifies whether the input device has been configured (outside of MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP address.
--
-- /Note:/ Consider using 'ipScheme' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idnsIpScheme :: Lens.Lens' InputDeviceNetworkSettings (Core.Maybe Types.InputDeviceIpScheme)
idnsIpScheme = Lens.field @"ipScheme"
{-# INLINEABLE idnsIpScheme #-}
{-# DEPRECATED ipScheme "Use generic-lens or generic-optics with 'ipScheme' instead"  #-}

-- | The subnet mask of the input device.
--
-- /Note:/ Consider using 'subnetMask' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
idnsSubnetMask :: Lens.Lens' InputDeviceNetworkSettings (Core.Maybe Core.Text)
idnsSubnetMask = Lens.field @"subnetMask"
{-# INLINEABLE idnsSubnetMask #-}
{-# DEPRECATED subnetMask "Use generic-lens or generic-optics with 'subnetMask' instead"  #-}

instance Core.FromJSON InputDeviceNetworkSettings where
        parseJSON
          = Core.withObject "InputDeviceNetworkSettings" Core.$
              \ x ->
                InputDeviceNetworkSettings' Core.<$>
                  (x Core..:? "dnsAddresses") Core.<*> x Core..:? "gateway" Core.<*>
                    x Core..:? "ipAddress"
                    Core.<*> x Core..:? "ipScheme"
                    Core.<*> x Core..:? "subnetMask"
