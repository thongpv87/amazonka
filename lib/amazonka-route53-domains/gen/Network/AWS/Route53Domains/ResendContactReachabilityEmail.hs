{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.ResendContactReachabilityEmail
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact.
module Network.AWS.Route53Domains.ResendContactReachabilityEmail
    (
    -- * Creating a request
      ResendContactReachabilityEmail (..)
    , mkResendContactReachabilityEmail
    -- ** Request lenses
    , rcreDomainName

    -- * Destructuring the response
    , ResendContactReachabilityEmailResponse (..)
    , mkResendContactReachabilityEmailResponse
    -- ** Response lenses
    , rcrerrsDomainName
    , rcrerrsEmailAddress
    , rcrerrsIsAlreadyVerified
    , rcrerrsResponseStatus
    ) where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import qualified Network.AWS.Route53Domains.Types as Types

-- | /See:/ 'mkResendContactReachabilityEmail' smart constructor.
newtype ResendContactReachabilityEmail = ResendContactReachabilityEmail'
  { domainName :: Core.Maybe Types.DomainName
    -- ^ The name of the domain for which you want Route 53 to resend a confirmation email to the registrant contact.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'ResendContactReachabilityEmail' value with any optional fields omitted.
mkResendContactReachabilityEmail
    :: ResendContactReachabilityEmail
mkResendContactReachabilityEmail
  = ResendContactReachabilityEmail'{domainName = Core.Nothing}

-- | The name of the domain for which you want Route 53 to resend a confirmation email to the registrant contact.
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcreDomainName :: Lens.Lens' ResendContactReachabilityEmail (Core.Maybe Types.DomainName)
rcreDomainName = Lens.field @"domainName"
{-# INLINEABLE rcreDomainName #-}
{-# DEPRECATED domainName "Use generic-lens or generic-optics with 'domainName' instead"  #-}

instance Core.ToQuery ResendContactReachabilityEmail where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders ResendContactReachabilityEmail where
        toHeaders ResendContactReachabilityEmail{..}
          = Core.pure
              ("X-Amz-Target",
               "Route53Domains_v20140515.ResendContactReachabilityEmail")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON ResendContactReachabilityEmail where
        toJSON ResendContactReachabilityEmail{..}
          = Core.object
              (Core.catMaybes [("domainName" Core..=) Core.<$> domainName])

instance Core.AWSRequest ResendContactReachabilityEmail where
        type Rs ResendContactReachabilityEmail =
             ResendContactReachabilityEmailResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON
              (\ s h x ->
                 ResendContactReachabilityEmailResponse' Core.<$>
                   (x Core..:? "domainName") Core.<*> x Core..:? "emailAddress"
                     Core.<*> x Core..:? "isAlreadyVerified"
                     Core.<*> Core.pure (Core.fromEnum s))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkResendContactReachabilityEmailResponse' smart constructor.
data ResendContactReachabilityEmailResponse = ResendContactReachabilityEmailResponse'
  { domainName :: Core.Maybe Types.DomainName
    -- ^ The domain name for which you requested a confirmation email.
  , emailAddress :: Core.Maybe Types.Email
    -- ^ The email address for the registrant contact at the time that we sent the verification email.
  , isAlreadyVerified :: Core.Maybe Core.Bool
    -- ^ @True@ if the email address for the registrant contact has already been verified, and @false@ otherwise. If the email address has already been verified, we don't send another confirmation email.
  , responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'ResendContactReachabilityEmailResponse' value with any optional fields omitted.
mkResendContactReachabilityEmailResponse
    :: Core.Int -- ^ 'responseStatus'
    -> ResendContactReachabilityEmailResponse
mkResendContactReachabilityEmailResponse responseStatus
  = ResendContactReachabilityEmailResponse'{domainName =
                                              Core.Nothing,
                                            emailAddress = Core.Nothing,
                                            isAlreadyVerified = Core.Nothing, responseStatus}

-- | The domain name for which you requested a confirmation email.
--
-- /Note:/ Consider using 'domainName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcrerrsDomainName :: Lens.Lens' ResendContactReachabilityEmailResponse (Core.Maybe Types.DomainName)
rcrerrsDomainName = Lens.field @"domainName"
{-# INLINEABLE rcrerrsDomainName #-}
{-# DEPRECATED domainName "Use generic-lens or generic-optics with 'domainName' instead"  #-}

-- | The email address for the registrant contact at the time that we sent the verification email.
--
-- /Note:/ Consider using 'emailAddress' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcrerrsEmailAddress :: Lens.Lens' ResendContactReachabilityEmailResponse (Core.Maybe Types.Email)
rcrerrsEmailAddress = Lens.field @"emailAddress"
{-# INLINEABLE rcrerrsEmailAddress #-}
{-# DEPRECATED emailAddress "Use generic-lens or generic-optics with 'emailAddress' instead"  #-}

-- | @True@ if the email address for the registrant contact has already been verified, and @false@ otherwise. If the email address has already been verified, we don't send another confirmation email.
--
-- /Note:/ Consider using 'isAlreadyVerified' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcrerrsIsAlreadyVerified :: Lens.Lens' ResendContactReachabilityEmailResponse (Core.Maybe Core.Bool)
rcrerrsIsAlreadyVerified = Lens.field @"isAlreadyVerified"
{-# INLINEABLE rcrerrsIsAlreadyVerified #-}
{-# DEPRECATED isAlreadyVerified "Use generic-lens or generic-optics with 'isAlreadyVerified' instead"  #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
rcrerrsResponseStatus :: Lens.Lens' ResendContactReachabilityEmailResponse Core.Int
rcrerrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE rcrerrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
