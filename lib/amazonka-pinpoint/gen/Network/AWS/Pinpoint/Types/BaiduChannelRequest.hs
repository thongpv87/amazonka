{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.BaiduChannelRequest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Pinpoint.Types.BaiduChannelRequest
  ( BaiduChannelRequest (..)
  -- * Smart constructor
  , mkBaiduChannelRequest
  -- * Lenses
  , bSecretKey
  , bApiKey
  , bEnabled
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Specifies the status and settings of the Baidu (Baidu Cloud Push) channel for an application.
--
-- /See:/ 'mkBaiduChannelRequest' smart constructor.
data BaiduChannelRequest = BaiduChannelRequest'
  { secretKey :: Core.Text
    -- ^ The secret key that you received from the Baidu Cloud Push service to communicate with the service.
  , apiKey :: Core.Text
    -- ^ The API key that you received from the Baidu Cloud Push service to communicate with the service.
  , enabled :: Core.Maybe Core.Bool
    -- ^ Specifies whether to enable the Baidu channel for the application.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'BaiduChannelRequest' value with any optional fields omitted.
mkBaiduChannelRequest
    :: Core.Text -- ^ 'secretKey'
    -> Core.Text -- ^ 'apiKey'
    -> BaiduChannelRequest
mkBaiduChannelRequest secretKey apiKey
  = BaiduChannelRequest'{secretKey, apiKey, enabled = Core.Nothing}

-- | The secret key that you received from the Baidu Cloud Push service to communicate with the service.
--
-- /Note:/ Consider using 'secretKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bSecretKey :: Lens.Lens' BaiduChannelRequest Core.Text
bSecretKey = Lens.field @"secretKey"
{-# INLINEABLE bSecretKey #-}
{-# DEPRECATED secretKey "Use generic-lens or generic-optics with 'secretKey' instead"  #-}

-- | The API key that you received from the Baidu Cloud Push service to communicate with the service.
--
-- /Note:/ Consider using 'apiKey' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bApiKey :: Lens.Lens' BaiduChannelRequest Core.Text
bApiKey = Lens.field @"apiKey"
{-# INLINEABLE bApiKey #-}
{-# DEPRECATED apiKey "Use generic-lens or generic-optics with 'apiKey' instead"  #-}

-- | Specifies whether to enable the Baidu channel for the application.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
bEnabled :: Lens.Lens' BaiduChannelRequest (Core.Maybe Core.Bool)
bEnabled = Lens.field @"enabled"
{-# INLINEABLE bEnabled #-}
{-# DEPRECATED enabled "Use generic-lens or generic-optics with 'enabled' instead"  #-}

instance Core.FromJSON BaiduChannelRequest where
        toJSON BaiduChannelRequest{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("SecretKey" Core..= secretKey),
                  Core.Just ("ApiKey" Core..= apiKey),
                  ("Enabled" Core..=) Core.<$> enabled])
