{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-deprecations   #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApiGateway.CreateAuthorizer
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new 'Authorizer' resource to an existing 'RestApi' resource.
--
-- <https://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html AWS CLI> 
module Network.AWS.ApiGateway.CreateAuthorizer
    (
    -- * Creating a request
      CreateAuthorizer (..)
    , mkCreateAuthorizer
    -- ** Request lenses
    , caRestApiId
    , caName
    , caType
    , caAuthType
    , caAuthorizerCredentials
    , caAuthorizerResultTtlInSeconds
    , caAuthorizerUri
    , caIdentitySource
    , caIdentityValidationExpression
    , caProviderARNs

     -- * Destructuring the response
    , Types.Authorizer (..)
    , Types.mkAuthorizer
    -- ** Response lenses
    , Types.aAuthType
    , Types.aAuthorizerCredentials
    , Types.aAuthorizerResultTtlInSeconds
    , Types.aAuthorizerUri
    , Types.aId
    , Types.aIdentitySource
    , Types.aIdentityValidationExpression
    , Types.aName
    , Types.aProviderARNs
    , Types.aType
    ) where

import qualified Network.AWS.ApiGateway.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Request to add a new 'Authorizer' to an existing 'RestApi' resource.
--
-- /See:/ 'mkCreateAuthorizer' smart constructor.
data CreateAuthorizer = CreateAuthorizer'
  { restApiId :: Core.Text
    -- ^ [Required] The string identifier of the associated 'RestApi' .
  , name :: Core.Text
    -- ^ [Required] The name of the authorizer.
  , type' :: Types.AuthorizerType
    -- ^ [Required] The authorizer type. Valid values are @TOKEN@ for a Lambda function using a single authorization token submitted in a custom header, @REQUEST@ for a Lambda function using incoming request parameters, and @COGNITO_USER_POOLS@ for using an Amazon Cognito user pool.
  , authType :: Core.Maybe Core.Text
    -- ^ Optional customer-defined field, used in OpenAPI imports and exports without functional impact.
  , authorizerCredentials :: Core.Maybe Core.Text
    -- ^ Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.
  , authorizerResultTtlInSeconds :: Core.Maybe Core.Int
    -- ^ The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.
  , authorizerUri :: Core.Maybe Core.Text
    -- ^ Specifies the authorizer's Uniform Resource Identifier (URI). For @TOKEN@ or @REQUEST@ authorizers, this must be a well-formed Lambda function URI, for example, @arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations@ . In general, the URI has this form @arn:aws:apigateway:{region}:lambda:path/{service_api}@ , where @{region}@ is the same as the region hosting the Lambda function, @path@ indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial @/@ . For Lambda functions, this is usually of the form @/2015-03-31/functions/[FunctionARN]/invocations@ .
  , identitySource :: Core.Maybe Core.Text
    -- ^ The identity source for which authorization is requested. 
--
--     * For a @TOKEN@ or @COGNITO_USER_POOLS@ authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is @Auth@ , the header mapping expression is @method.request.header.Auth@ .
--
--     * For the @REQUEST@ authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an @Auth@ header, a @Name@ query string parameter are defined as identity sources, this value is @method.request.header.Auth, method.request.querystring.Name@ . These parameters will be used to derive the authorization caching key and to perform runtime validation of the @REQUEST@ authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.
--
--
  , identityValidationExpression :: Core.Maybe Core.Text
    -- ^ A validation expression for the incoming identity token. For @TOKEN@ authorizers, this value is a regular expression. For @COGNITO_USER_POOLS@ authorizers, API Gateway will match the @aud@ field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the @REQUEST@ authorizer.
  , providerARNs :: Core.Maybe [Types.ProviderARN]
    -- ^ A list of the Amazon Cognito user pool ARNs for the @COGNITO_USER_POOLS@ authorizer. Each element is of this format: @arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}@ . For a @TOKEN@ or @REQUEST@ authorizer, this is not defined.
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'CreateAuthorizer' value with any optional fields omitted.
mkCreateAuthorizer
    :: Core.Text -- ^ 'restApiId'
    -> Core.Text -- ^ 'name'
    -> Types.AuthorizerType -- ^ 'type\''
    -> CreateAuthorizer
mkCreateAuthorizer restApiId name type'
  = CreateAuthorizer'{restApiId, name, type',
                      authType = Core.Nothing, authorizerCredentials = Core.Nothing,
                      authorizerResultTtlInSeconds = Core.Nothing,
                      authorizerUri = Core.Nothing, identitySource = Core.Nothing,
                      identityValidationExpression = Core.Nothing,
                      providerARNs = Core.Nothing}

-- | [Required] The string identifier of the associated 'RestApi' .
--
-- /Note:/ Consider using 'restApiId' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caRestApiId :: Lens.Lens' CreateAuthorizer Core.Text
caRestApiId = Lens.field @"restApiId"
{-# INLINEABLE caRestApiId #-}
{-# DEPRECATED restApiId "Use generic-lens or generic-optics with 'restApiId' instead"  #-}

-- | [Required] The name of the authorizer.
--
-- /Note:/ Consider using 'name' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caName :: Lens.Lens' CreateAuthorizer Core.Text
caName = Lens.field @"name"
{-# INLINEABLE caName #-}
{-# DEPRECATED name "Use generic-lens or generic-optics with 'name' instead"  #-}

-- | [Required] The authorizer type. Valid values are @TOKEN@ for a Lambda function using a single authorization token submitted in a custom header, @REQUEST@ for a Lambda function using incoming request parameters, and @COGNITO_USER_POOLS@ for using an Amazon Cognito user pool.
--
-- /Note:/ Consider using 'type'' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caType :: Lens.Lens' CreateAuthorizer Types.AuthorizerType
caType = Lens.field @"type'"
{-# INLINEABLE caType #-}
{-# DEPRECATED type' "Use generic-lens or generic-optics with 'type'' instead"  #-}

-- | Optional customer-defined field, used in OpenAPI imports and exports without functional impact.
--
-- /Note:/ Consider using 'authType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caAuthType :: Lens.Lens' CreateAuthorizer (Core.Maybe Core.Text)
caAuthType = Lens.field @"authType"
{-# INLINEABLE caAuthType #-}
{-# DEPRECATED authType "Use generic-lens or generic-optics with 'authType' instead"  #-}

-- | Specifies the required credentials as an IAM role for API Gateway to invoke the authorizer. To specify an IAM role for API Gateway to assume, use the role's Amazon Resource Name (ARN). To use resource-based permissions on the Lambda function, specify null.
--
-- /Note:/ Consider using 'authorizerCredentials' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caAuthorizerCredentials :: Lens.Lens' CreateAuthorizer (Core.Maybe Core.Text)
caAuthorizerCredentials = Lens.field @"authorizerCredentials"
{-# INLINEABLE caAuthorizerCredentials #-}
{-# DEPRECATED authorizerCredentials "Use generic-lens or generic-optics with 'authorizerCredentials' instead"  #-}

-- | The TTL in seconds of cached authorizer results. If it equals 0, authorization caching is disabled. If it is greater than 0, API Gateway will cache authorizer responses. If this field is not set, the default value is 300. The maximum value is 3600, or 1 hour.
--
-- /Note:/ Consider using 'authorizerResultTtlInSeconds' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caAuthorizerResultTtlInSeconds :: Lens.Lens' CreateAuthorizer (Core.Maybe Core.Int)
caAuthorizerResultTtlInSeconds = Lens.field @"authorizerResultTtlInSeconds"
{-# INLINEABLE caAuthorizerResultTtlInSeconds #-}
{-# DEPRECATED authorizerResultTtlInSeconds "Use generic-lens or generic-optics with 'authorizerResultTtlInSeconds' instead"  #-}

-- | Specifies the authorizer's Uniform Resource Identifier (URI). For @TOKEN@ or @REQUEST@ authorizers, this must be a well-formed Lambda function URI, for example, @arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations@ . In general, the URI has this form @arn:aws:apigateway:{region}:lambda:path/{service_api}@ , where @{region}@ is the same as the region hosting the Lambda function, @path@ indicates that the remaining substring in the URI should be treated as the path to the resource, including the initial @/@ . For Lambda functions, this is usually of the form @/2015-03-31/functions/[FunctionARN]/invocations@ .
--
-- /Note:/ Consider using 'authorizerUri' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caAuthorizerUri :: Lens.Lens' CreateAuthorizer (Core.Maybe Core.Text)
caAuthorizerUri = Lens.field @"authorizerUri"
{-# INLINEABLE caAuthorizerUri #-}
{-# DEPRECATED authorizerUri "Use generic-lens or generic-optics with 'authorizerUri' instead"  #-}

-- | The identity source for which authorization is requested. 
--
--     * For a @TOKEN@ or @COGNITO_USER_POOLS@ authorizer, this is required and specifies the request header mapping expression for the custom header holding the authorization token submitted by the client. For example, if the token header name is @Auth@ , the header mapping expression is @method.request.header.Auth@ .
--
--     * For the @REQUEST@ authorizer, this is required when authorization caching is enabled. The value is a comma-separated string of one or more mapping expressions of the specified request parameters. For example, if an @Auth@ header, a @Name@ query string parameter are defined as identity sources, this value is @method.request.header.Auth, method.request.querystring.Name@ . These parameters will be used to derive the authorization caching key and to perform runtime validation of the @REQUEST@ authorizer by verifying all of the identity-related request parameters are present, not null and non-empty. Only when this is true does the authorizer invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized response without calling the Lambda function. The valid value is a string of comma-separated mapping expressions of the specified request parameters. When the authorization caching is not enabled, this property is optional.
--
--
--
-- /Note:/ Consider using 'identitySource' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caIdentitySource :: Lens.Lens' CreateAuthorizer (Core.Maybe Core.Text)
caIdentitySource = Lens.field @"identitySource"
{-# INLINEABLE caIdentitySource #-}
{-# DEPRECATED identitySource "Use generic-lens or generic-optics with 'identitySource' instead"  #-}

-- | A validation expression for the incoming identity token. For @TOKEN@ authorizers, this value is a regular expression. For @COGNITO_USER_POOLS@ authorizers, API Gateway will match the @aud@ field of the incoming token from the client against the specified regular expression. It will invoke the authorizer's Lambda function when there is a match. Otherwise, it will return a 401 Unauthorized response without calling the Lambda function. The validation expression does not apply to the @REQUEST@ authorizer.
--
-- /Note:/ Consider using 'identityValidationExpression' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caIdentityValidationExpression :: Lens.Lens' CreateAuthorizer (Core.Maybe Core.Text)
caIdentityValidationExpression = Lens.field @"identityValidationExpression"
{-# INLINEABLE caIdentityValidationExpression #-}
{-# DEPRECATED identityValidationExpression "Use generic-lens or generic-optics with 'identityValidationExpression' instead"  #-}

-- | A list of the Amazon Cognito user pool ARNs for the @COGNITO_USER_POOLS@ authorizer. Each element is of this format: @arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}@ . For a @TOKEN@ or @REQUEST@ authorizer, this is not defined.
--
-- /Note:/ Consider using 'providerARNs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
caProviderARNs :: Lens.Lens' CreateAuthorizer (Core.Maybe [Types.ProviderARN])
caProviderARNs = Lens.field @"providerARNs"
{-# INLINEABLE caProviderARNs #-}
{-# DEPRECATED providerARNs "Use generic-lens or generic-optics with 'providerARNs' instead"  #-}

instance Core.ToQuery CreateAuthorizer where
        toQuery _ = Core.pure Core.mempty

instance Core.ToHeaders CreateAuthorizer where
        toHeaders CreateAuthorizer{..}
          = Core.pure ("Accept", "application/json")

instance Core.FromJSON CreateAuthorizer where
        toJSON CreateAuthorizer{..}
          = Core.object
              (Core.catMaybes
                 [Core.Just ("name" Core..= name), Core.Just ("type" Core..= type'),
                  ("authType" Core..=) Core.<$> authType,
                  ("authorizerCredentials" Core..=) Core.<$> authorizerCredentials,
                  ("authorizerResultTtlInSeconds" Core..=) Core.<$>
                    authorizerResultTtlInSeconds,
                  ("authorizerUri" Core..=) Core.<$> authorizerUri,
                  ("identitySource" Core..=) Core.<$> identitySource,
                  ("identityValidationExpression" Core..=) Core.<$>
                    identityValidationExpression,
                  ("providerARNs" Core..=) Core.<$> providerARNs])

instance Core.AWSRequest CreateAuthorizer where
        type Rs CreateAuthorizer = Types.Authorizer
        toRequest x@Core.Request{..}
          = Core.Request{Core._rqService = Types.mkServiceConfig,
                         Core._rqMethod = Request.POST,
                         Core._rqPath =
                           "/restapis/" Core.<> Core.toText restApiId Core.<> "/authorizers",
                         Core._rqQuery = Core.toQuery x, Core._rqHeaders = Core.toHeaders x,
                         Core._rqBody = Core.toJSONBody x}
        
        {-# INLINE toRequest #-}
        parseResponse
          = Response.receiveJSON (\ s h x -> Core.eitherParseJSON x)
        
        {-# INLINE parseResponse #-}
