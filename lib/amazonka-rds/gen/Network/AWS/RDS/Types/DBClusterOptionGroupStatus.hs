{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.DBClusterOptionGroupStatus
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.RDS.Types.DBClusterOptionGroupStatus
  ( DBClusterOptionGroupStatus (..)
  -- * Smart constructor
  , mkDBClusterOptionGroupStatus
  -- * Lenses
  , dbcogsDBClusterOptionGroupName
  , dbcogsStatus
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | Contains status information for a DB cluster option group.
--
-- /See:/ 'mkDBClusterOptionGroupStatus' smart constructor.
data DBClusterOptionGroupStatus = DBClusterOptionGroupStatus'
  { dBClusterOptionGroupName :: Core.Maybe Core.Text
    -- ^ Specifies the name of the DB cluster option group.
  , status :: Core.Maybe Core.Text
    -- ^ Specifies the status of the DB cluster option group.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'DBClusterOptionGroupStatus' value with any optional fields omitted.
mkDBClusterOptionGroupStatus
    :: DBClusterOptionGroupStatus
mkDBClusterOptionGroupStatus
  = DBClusterOptionGroupStatus'{dBClusterOptionGroupName =
                                  Core.Nothing,
                                status = Core.Nothing}

-- | Specifies the name of the DB cluster option group.
--
-- /Note:/ Consider using 'dBClusterOptionGroupName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbcogsDBClusterOptionGroupName :: Lens.Lens' DBClusterOptionGroupStatus (Core.Maybe Core.Text)
dbcogsDBClusterOptionGroupName = Lens.field @"dBClusterOptionGroupName"
{-# INLINEABLE dbcogsDBClusterOptionGroupName #-}
{-# DEPRECATED dBClusterOptionGroupName "Use generic-lens or generic-optics with 'dBClusterOptionGroupName' instead"  #-}

-- | Specifies the status of the DB cluster option group.
--
-- /Note:/ Consider using 'status' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dbcogsStatus :: Lens.Lens' DBClusterOptionGroupStatus (Core.Maybe Core.Text)
dbcogsStatus = Lens.field @"status"
{-# INLINEABLE dbcogsStatus #-}
{-# DEPRECATED status "Use generic-lens or generic-optics with 'status' instead"  #-}

instance Core.FromXML DBClusterOptionGroupStatus where
        parseXML x
          = DBClusterOptionGroupStatus' Core.<$>
              (x Core..@? "DBClusterOptionGroupName") Core.<*>
                x Core..@? "Status"
