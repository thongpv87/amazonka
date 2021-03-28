{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.UpdateContact
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the contact details by the contact ARN.
module Network.AWS.AlexaBusiness.UpdateContact
    (
    -- * Creating a request
      UpdateContact (..)
    , mkUpdateContact
    -- ** Request lenses
    , ucContactArn
    , ucDisplayName
    , ucFirstName
    , ucLastName
    , ucPhoneNumber
    , ucPhoneNumbers
    , ucSipAddresses

    -- * Destructuring the response
    , UpdateContactResponse (..)
    , mkUpdateContactResponse
    -- ** Response lenses
    , ucrrsResponseStatus
    ) where

import qualified Network.AWS.AlexaBusiness.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'mkUpdateContact' smart constructor.
data UpdateContact = UpdateContact'
  { contactArn :: Types.Arn
    -- ^ The ARN of the contact to update.
  , displayName :: Core.Maybe Types.DisplayName
    -- ^ The updated display name of the contact.
  , firstName :: Core.Maybe Types.FirstName
    -- ^ The updated first name of the contact.
  , lastName :: Core.Maybe Types.LastName
    -- ^ The updated last name of the contact.
  , phoneNumber :: Core.Maybe Types.RawPhoneNumber
    -- ^ The updated phone number of the contact. The phone number type defaults to WORK. You can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.
  , phoneNumbers :: Core.Maybe [Types.PhoneNumber]
    -- ^ The list of phone numbers for the contact.
  , sipAddresses :: Core.Maybe [Types.SipAddress]
    -- ^ The list of SIP addresses for the contact.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateContact' value with any optional fields omitted.
mkUpdateContact
    :: Types.Arn -- ^ 'contactArn'
    -> UpdateContact
mkUpdateContact contactArn
  = UpdateContact'{contactArn, displayName = Core.Nothing,
                   firstName = Core.Nothing, lastName = Core.Nothing,
                   phoneNumber = Core.Nothing, phoneNumbers = Core.Nothing,
                   sipAddresses = Core.Nothing}

-- | The ARN of the contact to update.
--
-- /Note:/ Consider using 'contactArn' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucContactArn :: Lens.Lens' UpdateContact Types.Arn
ucContactArn = Lens.field @"contactArn"
{-# INLINEABLE ucContactArn #-}
{-# DEPRECATED contactArn "Use generic-lens or generic-optics with 'contactArn' instead"  #-}

-- | The updated display name of the contact.
--
-- /Note:/ Consider using 'displayName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucDisplayName :: Lens.Lens' UpdateContact (Core.Maybe Types.DisplayName)
ucDisplayName = Lens.field @"displayName"
{-# INLINEABLE ucDisplayName #-}
{-# DEPRECATED displayName "Use generic-lens or generic-optics with 'displayName' instead"  #-}

-- | The updated first name of the contact.
--
-- /Note:/ Consider using 'firstName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucFirstName :: Lens.Lens' UpdateContact (Core.Maybe Types.FirstName)
ucFirstName = Lens.field @"firstName"
{-# INLINEABLE ucFirstName #-}
{-# DEPRECATED firstName "Use generic-lens or generic-optics with 'firstName' instead"  #-}

-- | The updated last name of the contact.
--
-- /Note:/ Consider using 'lastName' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucLastName :: Lens.Lens' UpdateContact (Core.Maybe Types.LastName)
ucLastName = Lens.field @"lastName"
{-# INLINEABLE ucLastName #-}
{-# DEPRECATED lastName "Use generic-lens or generic-optics with 'lastName' instead"  #-}

-- | The updated phone number of the contact. The phone number type defaults to WORK. You can either specify PhoneNumber or PhoneNumbers. We recommend that you use PhoneNumbers, which lets you specify the phone number type and multiple numbers.
--
-- /Note:/ Consider using 'phoneNumber' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucPhoneNumber :: Lens.Lens' UpdateContact (Core.Maybe Types.RawPhoneNumber)
ucPhoneNumber = Lens.field @"phoneNumber"
{-# INLINEABLE ucPhoneNumber #-}
{-# DEPRECATED phoneNumber "Use generic-lens or generic-optics with 'phoneNumber' instead"  #-}

-- | The list of phone numbers for the contact.
--
-- /Note:/ Consider using 'phoneNumbers' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucPhoneNumbers :: Lens.Lens' UpdateContact (Core.Maybe [Types.PhoneNumber])
ucPhoneNumbers = Lens.field @"phoneNumbers"
{-# INLINEABLE ucPhoneNumbers #-}
{-# DEPRECATED phoneNumbers "Use generic-lens or generic-optics with 'phoneNumbers' instead"  #-}

-- | The list of SIP addresses for the contact.
--
-- /Note:/ Consider using 'sipAddresses' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucSipAddresses :: Lens.Lens' UpdateContact (Core.Maybe [Types.SipAddress])
ucSipAddresses = Lens.field @"sipAddresses"
{-# INLINEABLE ucSipAddresses #-}
{-# DEPRECATED sipAddresses "Use generic-lens or generic-optics with 'sipAddresses' instead"  #-}

instance Core.ToQuery UpdateContact where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateContact where
        toHeaders UpdateContact{..}
          = Core.pure ("X-Amz-Target", "AlexaForBusiness.UpdateContact")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateContact where
        toJSON UpdateContact{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("ContactArn" Core..= contactArn),
                  ("DisplayName" Core..=) Core.<$> displayName,
                  ("FirstName" Core..=) Core.<$> firstName,
                  ("LastName" Core..=) Core.<$> lastName,
                  ("PhoneNumber" Core..=) Core.<$> phoneNumber,
                  ("PhoneNumbers" Core..=) Core.<$> phoneNumbers,
                  ("SipAddresses" Core..=) Core.<$> sipAddresses])

instance Core.AWSRequest UpdateContact where
        type Rs UpdateContact = UpdateContactResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 UpdateContactResponse' Core.<$> (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | /See:/ 'mkUpdateContactResponse' smart constructor.
newtype UpdateContactResponse = UpdateContactResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateContactResponse' value with any optional fields omitted.
mkUpdateContactResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateContactResponse
mkUpdateContactResponse responseStatus
  = UpdateContactResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
ucrrsResponseStatus :: Lens.Lens' UpdateContactResponse Core.Int
ucrrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE ucrrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
