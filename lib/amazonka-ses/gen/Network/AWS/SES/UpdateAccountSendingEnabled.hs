{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.UpdateAccountSendingEnabled
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables or disables email sending across your entire Amazon SES account in the current AWS Region. You can use this operation in conjunction with Amazon CloudWatch alarms to temporarily pause email sending across your Amazon SES account in a given AWS Region when reputation metrics (such as your bounce or complaint rates) reach certain thresholds.
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.UpdateAccountSendingEnabled
    (
    -- * Creating a request
      UpdateAccountSendingEnabled (..)
    , mkUpdateAccountSendingEnabled
    -- ** Request lenses
    , uaseEnabled

    -- * Destructuring the response
    , UpdateAccountSendingEnabledResponse (..)
    , mkUpdateAccountSendingEnabledResponse
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.SES.Types as Types

-- | Represents a request to enable or disable the email sending capabilities for your entire Amazon SES account.
--
-- /See:/ 'mkUpdateAccountSendingEnabled' smart constructor.
newtype UpdateAccountSendingEnabled = UpdateAccountSendingEnabled'
  { enabled :: Core.Maybe Core.Bool
    -- ^ Describes whether email sending is enabled or disabled for your Amazon SES account in the current AWS Region.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateAccountSendingEnabled' value with any optional fields omitted.
mkUpdateAccountSendingEnabled
    :: UpdateAccountSendingEnabled
mkUpdateAccountSendingEnabled
  = UpdateAccountSendingEnabled'{enabled = Core.Nothing}

-- | Describes whether email sending is enabled or disabled for your Amazon SES account in the current AWS Region.
--
-- /Note:/ Consider using 'enabled' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaseEnabled :: Lens.Lens' UpdateAccountSendingEnabled (Core.Maybe Core.Bool)
uaseEnabled = Lens.field @"enabled"
{-# INLINEABLE uaseEnabled #-}
{-# DEPRECATED enabled "Use generic-lens or generic-optics with 'enabled' instead"  #-}

instance Core.ToQuery UpdateAccountSendingEnabled where
        toQuery UpdateAccountSendingEnabled{..}
          = Core.toQueryPair "Action"
              ("UpdateAccountSendingEnabled" :: Core.Text)
              Core.<> Core.toQueryPair "Version" ("2010-12-01" :: Core.Text)
              Core.<> Core.maybe Core.mempty (Core.toQueryPair "Enabled") enabled

instance Core.ToHeaders UpdateAccountSendingEnabled where
        toHeaders _ = Core.pure Core.mempty

instance Core.AWSRequest UpdateAccountSendingEnabled where
        type Rs UpdateAccountSendingEnabled =
             UpdateAccountSendingEnabledResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.mempty,
                         Core._rqHeaders =
                           Core.pure
                             ("Content-Type",
                              "application/x-www-form-urlencoded; charset=utf-8")
                             Core.<> Core.toHeaders x,
                         Core._rqBody = Core.toFormBody (Core.toQuery x)}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveNull UpdateAccountSendingEnabledResponse'
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateAccountSendingEnabledResponse' smart constructor.
data UpdateAccountSendingEnabledResponse = UpdateAccountSendingEnabledResponse'
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateAccountSendingEnabledResponse' value with any optional fields omitted.
mkUpdateAccountSendingEnabledResponse
    :: UpdateAccountSendingEnabledResponse
mkUpdateAccountSendingEnabledResponse
  = UpdateAccountSendingEnabledResponse'
