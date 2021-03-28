{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.UpdateUserPool
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified user pool with the specified attributes. You can get a list of the current user pool settings using <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPool.html DescribeUserPool> .
--
-- /Important:/ If you don't provide a value for an attribute, it will be set to the default value.
module Network.AWS.CognitoIdentityProvider.UpdateUserPool
    (
    -- * Creating a request
      UpdateUserPool (..)
    , mkUpdateUserPool
    -- ** Request lenses
    , uupUserPoolId
    , uupAccountRecoverySetting
    , uupAdminCreateUserConfig
    , uupAutoVerifiedAttributes
    , uupDeviceConfiguration
    , uupEmailConfiguration
    , uupEmailVerificationMessage
    , uupEmailVerificationSubject
    , uupLambdaConfig
    , uupMfaConfiguration
    , uupPolicies
    , uupSmsAuthenticationMessage
    , uupSmsConfiguration
    , uupSmsVerificationMessage
    , uupUserPoolAddOns
    , uupUserPoolTags
    , uupVerificationMessageTemplate

    -- * Destructuring the response
    , UpdateUserPoolResponse (..)
    , mkUpdateUserPoolResponse
    -- ** Response lenses
    , uuprrsResponseStatus
    ) where

import qualified Network.AWS.CognitoIdentityProvider.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to update the user pool.
--
-- /See:/ 'mkUpdateUserPool' smart constructor.
data UpdateUserPool = UpdateUserPool'
  { userPoolId :: Types.UserPoolId
    -- ^ The user pool ID for the user pool you want to update.
  , accountRecoverySetting :: Core.Maybe Types.AccountRecoverySettingType
    -- ^ Use this setting to define which verified available method a user can use to recover their password when they call @ForgotPassword@ . It allows you to define a preferred method when a user has more than one method available. With this setting, SMS does not qualify for a valid password recovery mechanism if the user also has SMS MFA enabled. In the absence of this setting, Cognito uses the legacy behavior to determine the recovery method where SMS is preferred over email.
  , adminCreateUserConfig :: Core.Maybe Types.AdminCreateUserConfigType
    -- ^ The configuration for @AdminCreateUser@ requests.
  , autoVerifiedAttributes :: Core.Maybe [Types.VerifiedAttributeType]
    -- ^ The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.
  , deviceConfiguration :: Core.Maybe Types.DeviceConfigurationType
    -- ^ Device configuration.
  , emailConfiguration :: Core.Maybe Types.EmailConfigurationType
    -- ^ Email configuration.
  , emailVerificationMessage :: Core.Maybe Types.EmailVerificationMessage
    -- ^ The contents of the email verification message.
  , emailVerificationSubject :: Core.Maybe Types.EmailVerificationSubject
    -- ^ The subject of the email verification message.
  , lambdaConfig :: Core.Maybe Types.LambdaConfigType
    -- ^ The AWS Lambda configuration information from the request to update the user pool.
  , mfaConfiguration :: Core.Maybe Types.UserPoolMfaType
    -- ^ Can be one of the following values:
--
--
--     * @OFF@ - MFA tokens are not required and cannot be specified during user registration.
--
--
--     * @ON@ - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.
--
--
--     * @OPTIONAL@ - Users have the option when registering to create an MFA token.
--
--
  , policies :: Core.Maybe Types.UserPoolPolicyType
    -- ^ A container with the policies you wish to update in a user pool.
  , smsAuthenticationMessage :: Core.Maybe Types.SmsVerificationMessageType
    -- ^ The contents of the SMS authentication message.
  , smsConfiguration :: Core.Maybe Types.SmsConfigurationType
    -- ^ SMS configuration.
  , smsVerificationMessage :: Core.Maybe Types.SmsVerificationMessageType
    -- ^ A container with information about the SMS verification message.
  , userPoolAddOns :: Core.Maybe Types.UserPoolAddOnsType
    -- ^ Used to enable advanced security risk detection. Set the key @AdvancedSecurityMode@ to the value "AUDIT".
  , userPoolTags :: Core.Maybe (Core.HashMap Types.TagKeysType Types.TagValueType)
    -- ^ The tag keys and values to assign to the user pool. A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria.
  , verificationMessageTemplate :: Core.Maybe Types.VerificationMessageTemplateType
    -- ^ The template for verification messages.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateUserPool' value with any optional fields omitted.
mkUpdateUserPool
    :: Types.UserPoolId -- ^ 'userPoolId'
    -> UpdateUserPool
mkUpdateUserPool userPoolId
  = UpdateUserPool'{userPoolId,
                    accountRecoverySetting = Core.Nothing,
                    adminCreateUserConfig = Core.Nothing,
                    autoVerifiedAttributes = Core.Nothing,
                    deviceConfiguration = Core.Nothing,
                    emailConfiguration = Core.Nothing,
                    emailVerificationMessage = Core.Nothing,
                    emailVerificationSubject = Core.Nothing,
                    lambdaConfig = Core.Nothing, mfaConfiguration = Core.Nothing,
                    policies = Core.Nothing, smsAuthenticationMessage = Core.Nothing,
                    smsConfiguration = Core.Nothing,
                    smsVerificationMessage = Core.Nothing,
                    userPoolAddOns = Core.Nothing, userPoolTags = Core.Nothing,
                    verificationMessageTemplate = Core.Nothing}

-- | The user pool ID for the user pool you want to update.
--
-- /Note:/ Consider using 'userPoolId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupUserPoolId :: Lens.Lens' UpdateUserPool Types.UserPoolId
uupUserPoolId = Lens.field @"userPoolId"
{-# INLINEABLE uupUserPoolId #-}
{-# DEPRECATED userPoolId "Use generic-lens or generic-optics with 'userPoolId' instead"  #-}

-- | Use this setting to define which verified available method a user can use to recover their password when they call @ForgotPassword@ . It allows you to define a preferred method when a user has more than one method available. With this setting, SMS does not qualify for a valid password recovery mechanism if the user also has SMS MFA enabled. In the absence of this setting, Cognito uses the legacy behavior to determine the recovery method where SMS is preferred over email.
--
-- /Note:/ Consider using 'accountRecoverySetting' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupAccountRecoverySetting :: Lens.Lens' UpdateUserPool (Core.Maybe Types.AccountRecoverySettingType)
uupAccountRecoverySetting = Lens.field @"accountRecoverySetting"
{-# INLINEABLE uupAccountRecoverySetting #-}
{-# DEPRECATED accountRecoverySetting "Use generic-lens or generic-optics with 'accountRecoverySetting' instead"  #-}

-- | The configuration for @AdminCreateUser@ requests.
--
-- /Note:/ Consider using 'adminCreateUserConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupAdminCreateUserConfig :: Lens.Lens' UpdateUserPool (Core.Maybe Types.AdminCreateUserConfigType)
uupAdminCreateUserConfig = Lens.field @"adminCreateUserConfig"
{-# INLINEABLE uupAdminCreateUserConfig #-}
{-# DEPRECATED adminCreateUserConfig "Use generic-lens or generic-optics with 'adminCreateUserConfig' instead"  #-}

-- | The attributes that are automatically verified when the Amazon Cognito service makes a request to update user pools.
--
-- /Note:/ Consider using 'autoVerifiedAttributes' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupAutoVerifiedAttributes :: Lens.Lens' UpdateUserPool (Core.Maybe [Types.VerifiedAttributeType])
uupAutoVerifiedAttributes = Lens.field @"autoVerifiedAttributes"
{-# INLINEABLE uupAutoVerifiedAttributes #-}
{-# DEPRECATED autoVerifiedAttributes "Use generic-lens or generic-optics with 'autoVerifiedAttributes' instead"  #-}

-- | Device configuration.
--
-- /Note:/ Consider using 'deviceConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupDeviceConfiguration :: Lens.Lens' UpdateUserPool (Core.Maybe Types.DeviceConfigurationType)
uupDeviceConfiguration = Lens.field @"deviceConfiguration"
{-# INLINEABLE uupDeviceConfiguration #-}
{-# DEPRECATED deviceConfiguration "Use generic-lens or generic-optics with 'deviceConfiguration' instead"  #-}

-- | Email configuration.
--
-- /Note:/ Consider using 'emailConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupEmailConfiguration :: Lens.Lens' UpdateUserPool (Core.Maybe Types.EmailConfigurationType)
uupEmailConfiguration = Lens.field @"emailConfiguration"
{-# INLINEABLE uupEmailConfiguration #-}
{-# DEPRECATED emailConfiguration "Use generic-lens or generic-optics with 'emailConfiguration' instead"  #-}

-- | The contents of the email verification message.
--
-- /Note:/ Consider using 'emailVerificationMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupEmailVerificationMessage :: Lens.Lens' UpdateUserPool (Core.Maybe Types.EmailVerificationMessage)
uupEmailVerificationMessage = Lens.field @"emailVerificationMessage"
{-# INLINEABLE uupEmailVerificationMessage #-}
{-# DEPRECATED emailVerificationMessage "Use generic-lens or generic-optics with 'emailVerificationMessage' instead"  #-}

-- | The subject of the email verification message.
--
-- /Note:/ Consider using 'emailVerificationSubject' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupEmailVerificationSubject :: Lens.Lens' UpdateUserPool (Core.Maybe Types.EmailVerificationSubject)
uupEmailVerificationSubject = Lens.field @"emailVerificationSubject"
{-# INLINEABLE uupEmailVerificationSubject #-}
{-# DEPRECATED emailVerificationSubject "Use generic-lens or generic-optics with 'emailVerificationSubject' instead"  #-}

-- | The AWS Lambda configuration information from the request to update the user pool.
--
-- /Note:/ Consider using 'lambdaConfig' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupLambdaConfig :: Lens.Lens' UpdateUserPool (Core.Maybe Types.LambdaConfigType)
uupLambdaConfig = Lens.field @"lambdaConfig"
{-# INLINEABLE uupLambdaConfig #-}
{-# DEPRECATED lambdaConfig "Use generic-lens or generic-optics with 'lambdaConfig' instead"  #-}

-- | Can be one of the following values:
--
--
--     * @OFF@ - MFA tokens are not required and cannot be specified during user registration.
--
--
--     * @ON@ - MFA tokens are required for all user registrations. You can only specify required when you are initially creating a user pool.
--
--
--     * @OPTIONAL@ - Users have the option when registering to create an MFA token.
--
--
--
-- /Note:/ Consider using 'mfaConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupMfaConfiguration :: Lens.Lens' UpdateUserPool (Core.Maybe Types.UserPoolMfaType)
uupMfaConfiguration = Lens.field @"mfaConfiguration"
{-# INLINEABLE uupMfaConfiguration #-}
{-# DEPRECATED mfaConfiguration "Use generic-lens or generic-optics with 'mfaConfiguration' instead"  #-}

-- | A container with the policies you wish to update in a user pool.
--
-- /Note:/ Consider using 'policies' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupPolicies :: Lens.Lens' UpdateUserPool (Core.Maybe Types.UserPoolPolicyType)
uupPolicies = Lens.field @"policies"
{-# INLINEABLE uupPolicies #-}
{-# DEPRECATED policies "Use generic-lens or generic-optics with 'policies' instead"  #-}

-- | The contents of the SMS authentication message.
--
-- /Note:/ Consider using 'smsAuthenticationMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupSmsAuthenticationMessage :: Lens.Lens' UpdateUserPool (Core.Maybe Types.SmsVerificationMessageType)
uupSmsAuthenticationMessage = Lens.field @"smsAuthenticationMessage"
{-# INLINEABLE uupSmsAuthenticationMessage #-}
{-# DEPRECATED smsAuthenticationMessage "Use generic-lens or generic-optics with 'smsAuthenticationMessage' instead"  #-}

-- | SMS configuration.
--
-- /Note:/ Consider using 'smsConfiguration' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupSmsConfiguration :: Lens.Lens' UpdateUserPool (Core.Maybe Types.SmsConfigurationType)
uupSmsConfiguration = Lens.field @"smsConfiguration"
{-# INLINEABLE uupSmsConfiguration #-}
{-# DEPRECATED smsConfiguration "Use generic-lens or generic-optics with 'smsConfiguration' instead"  #-}

-- | A container with information about the SMS verification message.
--
-- /Note:/ Consider using 'smsVerificationMessage' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupSmsVerificationMessage :: Lens.Lens' UpdateUserPool (Core.Maybe Types.SmsVerificationMessageType)
uupSmsVerificationMessage = Lens.field @"smsVerificationMessage"
{-# INLINEABLE uupSmsVerificationMessage #-}
{-# DEPRECATED smsVerificationMessage "Use generic-lens or generic-optics with 'smsVerificationMessage' instead"  #-}

-- | Used to enable advanced security risk detection. Set the key @AdvancedSecurityMode@ to the value "AUDIT".
--
-- /Note:/ Consider using 'userPoolAddOns' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupUserPoolAddOns :: Lens.Lens' UpdateUserPool (Core.Maybe Types.UserPoolAddOnsType)
uupUserPoolAddOns = Lens.field @"userPoolAddOns"
{-# INLINEABLE uupUserPoolAddOns #-}
{-# DEPRECATED userPoolAddOns "Use generic-lens or generic-optics with 'userPoolAddOns' instead"  #-}

-- | The tag keys and values to assign to the user pool. A tag is a label that you can use to categorize and manage user pools in different ways, such as by purpose, owner, environment, or other criteria.
--
-- /Note:/ Consider using 'userPoolTags' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupUserPoolTags :: Lens.Lens' UpdateUserPool (Core.Maybe (Core.HashMap Types.TagKeysType Types.TagValueType))
uupUserPoolTags = Lens.field @"userPoolTags"
{-# INLINEABLE uupUserPoolTags #-}
{-# DEPRECATED userPoolTags "Use generic-lens or generic-optics with 'userPoolTags' instead"  #-}

-- | The template for verification messages.
--
-- /Note:/ Consider using 'verificationMessageTemplate' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uupVerificationMessageTemplate :: Lens.Lens' UpdateUserPool (Core.Maybe Types.VerificationMessageTemplateType)
uupVerificationMessageTemplate = Lens.field @"verificationMessageTemplate"
{-# INLINEABLE uupVerificationMessageTemplate #-}
{-# DEPRECATED verificationMessageTemplate "Use generic-lens or generic-optics with 'verificationMessageTemplate' instead"  #-}

instance Core.ToQuery UpdateUserPool where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders UpdateUserPool where
        toHeaders UpdateUserPool{..}
          = Core.pure
              ("X-Amz-Target",
               "AWSCognitoIdentityProviderService.UpdateUserPool")
              Core.<> Core.pure ("Content-Type", "application/x-amz-json-1.1")

instance Core.FromJSON UpdateUserPool where
        toJSON UpdateUserPool{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("UserPoolId" Core..= userPoolId),
                  ("AccountRecoverySetting" Core..=) Core.<$> accountRecoverySetting,
                  ("AdminCreateUserConfig" Core..=) Core.<$> adminCreateUserConfig,
                  ("AutoVerifiedAttributes" Core..=) Core.<$> autoVerifiedAttributes,
                  ("DeviceConfiguration" Core..=) Core.<$> deviceConfiguration,
                  ("EmailConfiguration" Core..=) Core.<$> emailConfiguration,
                  ("EmailVerificationMessage" Core..=) Core.<$>
                    emailVerificationMessage,
                  ("EmailVerificationSubject" Core..=) Core.<$>
                    emailVerificationSubject,
                  ("LambdaConfig" Core..=) Core.<$> lambdaConfig,
                  ("MfaConfiguration" Core..=) Core.<$> mfaConfiguration,
                  ("Policies" Core..=) Core.<$> policies,
                  ("SmsAuthenticationMessage" Core..=) Core.<$>
                    smsAuthenticationMessage,
                  ("SmsConfiguration" Core..=) Core.<$> smsConfiguration,
                  ("SmsVerificationMessage" Core..=) Core.<$> smsVerificationMessage,
                  ("UserPoolAddOns" Core..=) Core.<$> userPoolAddOns,
                  ("UserPoolTags" Core..=) Core.<$> userPoolTags,
                  ("VerificationMessageTemplate" Core..=) Core.<$>
                    verificationMessageTemplate])

instance Core.AWSRequest UpdateUserPool where
        type Rs UpdateUserPool = UpdateUserPoolResponse
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST, Core._rqPath = "/",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveEmpty
              (\ s h x ->
                 UpdateUserPoolResponse' Core.<$> (Core.pure (Core.fromEnum s)))
        
        {-# INLINE parseResponse #-}

-- | Represents the response from the server when you make a request to update the user pool.
--
-- /See:/ 'mkUpdateUserPoolResponse' smart constructor.
newtype UpdateUserPoolResponse = UpdateUserPoolResponse'
  { responseStatus :: Core.Int
    -- ^ The response status code.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving newtype (Core.Hashable, Core.NFData)

-- | Creates a 'UpdateUserPoolResponse' value with any optional fields omitted.
mkUpdateUserPoolResponse
    :: Core.Int -- ^ 'responseStatus'
    -> UpdateUserPoolResponse
mkUpdateUserPoolResponse responseStatus
  = UpdateUserPoolResponse'{responseStatus}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
uuprrsResponseStatus :: Lens.Lens' UpdateUserPoolResponse Core.Int
uuprrsResponseStatus = Lens.field @"responseStatus"
{-# INLINEABLE uuprrsResponseStatus #-}
{-# DEPRECATED responseStatus "Use generic-lens or generic-optics with 'responseStatus' instead"  #-}
