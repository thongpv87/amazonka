{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.UpdateAuthEventFeedback
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides the feedback for an authentication event whether it was from a valid user or not. This feedback is used for improving the risk evaluation decision for the user pool as part of Amazon Cognito advanced security.
module Network.AWS.CognitoIdentityProvider.UpdateAuthEventFeedback
    (
    -- * Creating a request
      UpdateAuthEventFeedback (..)
    , mkUpdateAuthEventFeedback
    -- ** Request lenses
    , uaefUserPoolId
    , uaefUsername
    , uaefEventId
    , uaefFeedbackToken
    , uaefFeedbackValue

    -- * Destructuring the response
    , UpdateAuthEventFeedbackResponse (..)
    , mkUpdateAuthEventFeedbackResponse
    -- ** Response lenses
    , uaefrrsResponseStatus
    ) where

import qualified Network.AWS.CognitoIdentityProvider.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateAuthEventFeedback' smart constructor.
data UpdateAuthEventFeedback = UpdateAuthEventFeedback'
  { userPoolId :: Types.UserPoolId
    -- ^ The user pool ID.
  , username :: Types.Username
    -- ^ The user pool username.
  , eventId :: Types.EventId
    -- ^ The event ID.
  , feedbackToken :: Types.FeedbackToken
    -- ^ The feedback token.
  , feedbackValue :: Types.FeedbackValueType
    -- ^ The authentication event feedback value.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateAuthEventFeedback' value with any optional fields omitted.
mkUpdateAuthEventFeedback
    :: Types.UserPoolId -- ^ 'userPoolId'
    -> Types.Username -- ^ 'username'
    -> Types.EventId -- ^ 'eventId'
    -> Types.FeedbackToken -- ^ 'feedbackToken'
    -> Types.FeedbackValueType -- ^ 'feedbackValue'
    -> UpdateAuthEventFeedback
mkUpdateAuthEventFeedback userPoolId username eventId feedbackToken
  feedbackValue
  = UpdateAuthEventFeedback'{userPoolId, username, eventId,
                             feedbackToken, feedbackValue}

-- | The user pool ID.
--
-- /Note:/ Consider using 'userPoolId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaefUserPoolId :: Lens.Lens' UpdateAuthEventFeedback Types.UserPoolId
uaefUserPoolId = Lens.field @"userPoolId"
{-# INLINEABLE uaefUserPoolId #-}
{-# DEPRECATED userPoolId "Use generic-lens or generic-optics with 'userPoolId' instead"  #-}

-- | The user pool username.
--
-- /Note:/ Consider using 'username' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaefUsername :: Lens.Lens' UpdateAuthEventFeedback Types.Username
uaefUsername = Lens.field @"username"
{-# INLINEABLE uaefUsername #-}
{-# DEPRECATED username "Use generic-lens or generic-optics with 'username' instead"  #-}

-- | The event ID.
--
-- /Note:/ Consider using 'eventId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaefEventId :: Lens.Lens' UpdateAuthEventFeedback Types.EventId
uaefEventId = Lens.field @"eventId"
{-# INLINEABLE uaefEventId #-}
{-# DEPRECATED eventId "Use generic-lens or generic-optics with 'eventId' instead"  #-}

-- | The feedback token.
--
-- /Note:/ Consider using 'feedbackToken' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaefFeedbackToken :: Lens.Lens' UpdateAuthEventFeedback Types.FeedbackToken
uaefFeedbackToken = Lens.field @"feedbackToken"
{-# INLINEABLE uaefFeedbackToken #-}
{-# DEPRECATED feedbackToken "Use generic-lens or generic-optics with 'feedbackToken' instead"  #-}

-- | The authentication event feedback value.
--
-- /Note:/ Consider using 'feedbackValue' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaefFeedbackValue :: Lens.Lens' UpdateAuthEventFeedback Types.FeedbackValueType
uaefFeedbackValue = Lens.field @"feedbackValue"
{-# INLINEABLE uaefFeedbackValue #-}
{-# DEPRECATED feedbackValue "Use generic-lens or generic-optics with 'feedbackValue' instead"  #-}

instance Core.ToQuery UpdateAuthEventFeedback where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateAuthEventFeedback where
        toHeaders UpdateAuthEventFeedback{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSCognitoIdentityProviderService.UpdateAuthEventFeedback")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateAuthEventFeedback where
        toJSON UpdateAuthEventFeedback{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("UserPoolId" Core..= userPoolId),
                  Core.Just ("Username" Core..= username),
                  Core.Just ("EventId" Core..= eventId),
                  Core.Just ("FeedbackToken" Core..= feedbackToken),
                  Core.Just ("FeedbackValue" Core..= feedbackValue)])

instance Core.AWSRequest UpdateAuthEventFeedback where
        type Rs UpdateAuthEventFeedback = UpdateAuthEventFeedbackResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 UpdateAuthEventFeedbackResponse' Core.<$>
                   (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateAuthEventFeedbackResponse' smart constructor.
newtype UpdateAuthEventFeedbackResponse = UpdateAuthEventFeedbackResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateAuthEventFeedbackResponse' value with any optional fields omitted.
mkUpdateAuthEventFeedbackResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateAuthEventFeedbackResponse
mkUpdateAuthEventFeedbackResponse responseStatus
  = UpdateAuthEventFeedbackResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uaefrrsResponseStatus :: Lens.Lens' UpdateAuthEventFeedbackResponse Core.Int
uaefrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE uaefrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
