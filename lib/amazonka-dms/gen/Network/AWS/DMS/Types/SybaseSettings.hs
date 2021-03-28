{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.SybaseSettings
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.DMS.Types.SybaseSettings
  ( SybaseSettings (..)
  -- * Smart constructor
  , mkSybaseSettings
  -- * Lenses
  , ssDatabaseName
  , ssPassword
  , ssPort
  , ssServerName
  , ssUsername
  ) where

import qualified Network.AWS.DMS.Types.Password as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Provides information that defines a SAP ASE endpoint.
--
-- /See:/ 'mkSybaseSettings' smart constructor.
data SybaseSettings = SybaseSettings'
  { databaseName :: Core.Maybe Core.Text
    -- ^ Database name for the endpoint.
  , password :: Core.Maybe Types.Password
    -- ^ Endpoint connection password.
  , port :: Core.Maybe Core.Int
    -- ^ Endpoint TCP port.
  , serverName :: Core.Maybe Core.Text
    -- ^ Fully qualified domain name of the endpoint.
  , username :: Core.Maybe Core.Text
    -- ^ Endpoint connection user name.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'SybaseSettings' value with any optional fields omitted.
mkSybaseSettings
    :: SybaseSettings
mkSybaseSettings
  = SybaseSettings'{databaseName = Core.Nothing,
                    password = Core.Nothing, port = Core.Nothing,
                    serverName = Core.Nothing, username = Core.Nothing}

-- | Database name for the endpoint.
--
-- /Note:/ Consider using 'databaseName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssDatabaseName :: Lens.Lens' SybaseSettings (Core.Maybe Core.Text)
ssDatabaseName = Lens.field @"databaseName"
{-# INLINEABLE ssDatabaseName #-}
{-# DEPRECATED databaseName "Use generic-lens or generic-optics with 'databaseName' instead"  #-}

-- | Endpoint connection password.
--
-- /Note:/ Consider using 'password' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssPassword :: Lens.Lens' SybaseSettings (Core.Maybe Types.Password)
ssPassword = Lens.field @"password"
{-# INLINEABLE ssPassword #-}
{-# DEPRECATED password "Use generic-lens or generic-optics with 'password' instead"  #-}

-- | Endpoint TCP port.
--
-- /Note:/ Consider using 'port' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssPort :: Lens.Lens' SybaseSettings (Core.Maybe Core.Int)
ssPort = Lens.field @"port"
{-# INLINEABLE ssPort #-}
{-# DEPRECATED port "Use generic-lens or generic-optics with 'port' instead"  #-}

-- | Fully qualified domain name of the endpoint.
--
-- /Note:/ Consider using 'serverName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssServerName :: Lens.Lens' SybaseSettings (Core.Maybe Core.Text)
ssServerName = Lens.field @"serverName"
{-# INLINEABLE ssServerName #-}
{-# DEPRECATED serverName "Use generic-lens or generic-optics with 'serverName' instead"  #-}

-- | Endpoint connection user name.
--
-- /Note:/ Consider using 'username' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ssUsername :: Lens.Lens' SybaseSettings (Core.Maybe Core.Text)
ssUsername = Lens.field @"username"
{-# INLINEABLE ssUsername #-}
{-# DEPRECATED username "Use generic-lens or generic-optics with 'username' instead"  #-}

instance Core.FromJSON SybaseSettings where
        toJSON SybaseSettings{..}
          = Core.object
              (Core.catMaybes
                 [("DatabaseName" Core..=) Core.<$> databaseName,
                  ("Password" Core..=) Core.<$> password,
                  ("Port" Core..=) Core.<$> port,
                  ("ServerName" Core..=) Core.<$> serverName,
                  ("Username" Core..=) Core.<$> username])

instance Core.FromJSON SybaseSettings where
        parseJSON
          = Core.withObject "SybaseSettings" Core.$
              \ x ->
                SybaseSettings' Core.<$>
                  (x Core..:? "DatabaseName") Core.<*> x Core..:? "Password" Core.<*>
                    x Core..:? "Port"
                    Core.<*> x Core..:? "ServerName"
                    Core.<*> x Core..:? "Username"
