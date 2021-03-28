{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.Destination
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SES.Types.Destination
  ( Destination (..)
  -- * Smart constructor
  , mkDestination
  -- * Lenses
  , dBccAddresses
  , dCcAddresses
  , dToAddresses
  ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.SES.Types.Address as Types

-- | Represents the destination of the message, consisting of To:, CC:, and BCC: fields.
--
-- /See:/ 'mkDestination' smart constructor.
data Destination = Destination'
  { bccAddresses :: Core.Maybe [Types.Address]
    -- ^ The recipients to place on the BCC: line of the message.
  , ccAddresses :: Core.Maybe [Types.Address]
    -- ^ The recipients to place on the CC: line of the message.
  , toAddresses :: Core.Maybe [Types.Address]
    -- ^ The recipients to place on the To: line of the message.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'Destination' value with any optional fields omitted.
mkDestination
    :: Destination
mkDestination
  = Destination'{bccAddresses = Core.Nothing,
                 ccAddresses = Core.Nothing, toAddresses = Core.Nothing}

-- | The recipients to place on the BCC: line of the message.
--
-- /Note:/ Consider using 'bccAddresses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dBccAddresses :: Lens.Lens' Destination (Core.Maybe [Types.Address])
dBccAddresses = Lens.field @"bccAddresses"
{-# INLINEABLE dBccAddresses #-}
{-# DEPRECATED bccAddresses "Use generic-lens or generic-optics with 'bccAddresses' instead"  #-}

-- | The recipients to place on the CC: line of the message.
--
-- /Note:/ Consider using 'ccAddresses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dCcAddresses :: Lens.Lens' Destination (Core.Maybe [Types.Address])
dCcAddresses = Lens.field @"ccAddresses"
{-# INLINEABLE dCcAddresses #-}
{-# DEPRECATED ccAddresses "Use generic-lens or generic-optics with 'ccAddresses' instead"  #-}

-- | The recipients to place on the To: line of the message.
--
-- /Note:/ Consider using 'toAddresses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
dToAddresses :: Lens.Lens' Destination (Core.Maybe [Types.Address])
dToAddresses = Lens.field @"toAddresses"
{-# INLINEABLE dToAddresses #-}
{-# DEPRECATED toAddresses "Use generic-lens or generic-optics with 'toAddresses' instead"  #-}

instance Core.ToQuery Destination where
        toQuery Destination{..}
          = Core.toQueryPair "BccAddresses"
              (Core.maybe Core.mempty (Core.toQueryList "member") bccAddresses)
              Core.<>
              Core.toQueryPair "CcAddresses"
                (Core.maybe Core.mempty (Core.toQueryList "member") ccAddresses)
              Core.<>
              Core.toQueryPair "ToAddresses"
                (Core.maybe Core.mempty (Core.toQueryList "member") toAddresses)
