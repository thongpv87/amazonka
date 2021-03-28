{-# OPTIONS_GHC -fno-warn-unused-matches #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApiGateway.Types.GatewayResponse
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ApiGateway.Types.GatewayResponse
  ( GatewayResponse (..)
  -- * Smart constructor
  , mkGatewayResponse
  -- * Lenses
  , grDefaultResponse
  , grResponseParameters
  , grResponseTemplates
  , grResponseType
  , grStatusCode
  ) where

import qualified Network.AWS.ApiGateway.Types.GatewayResponseType as Types
import qualified Network.AWS.ApiGateway.Types.StatusCode as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core

-- | A gateway response of a given response type and status code, with optional response parameters and mapping templates.
--
-- For more information about valid gateway response types, see <https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html Gateway Response Types Supported by API Gateway> __Example: Get a Gateway Response of a given response type__ 
-- __Request__ 
-- This example shows how to get a gateway response of the @MISSING_AUTHENTICATION_TOKEN@ type.
-- @@GET /restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN HTTP/1.1 Host: beta-apigateway.us-east-1.amazonaws.com Content-Type: application/json X-Amz-Date: 20170503T202516Z Authorization: AWS4-HMAC-SHA256 Credential={access-key-id}/20170503/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=1b52460e3159c1a26cff29093855d50ea141c1c5b937528fecaf60f51129697a Cache-Control: no-cache Postman-Token: 3b2a1ce9-c848-2e26-2e2f-9c2caefbed45 @ @ The response type is specified as a URL path.
-- __Response__ 
-- The successful operation returns the @200 OK@ status code and a payload similar to the following:
-- @@{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-gatewayresponse-{rel}.html", "name": "gatewayresponse", "templated": true }, "self": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, "gatewayresponse:delete": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" } }, "defaultResponse": false, "responseParameters": { "gatewayresponse.header.x-request-path": "method.request.path.petId", "gatewayresponse.header.Access-Control-Allow-Origin": "'a.b.c'", "gatewayresponse.header.x-request-query": "method.request.querystring.q", "gatewayresponse.header.x-request-header": "method.request.header.Accept" }, "responseTemplates": { "application/json": "{\n \"message\": $context.error.messageString,\n \"type\": \"$context.error.responseType\",\n \"stage\": \"$context.stage\",\n \"resourcePath\": \"$context.resourcePath\",\n \"stageVariables.a\": \"$stageVariables.a\",\n \"statusCode\": \"'404'\"\n}" }, "responseType": "MISSING_AUTHENTICATION_TOKEN", "statusCode": "404" }@ @ 
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html Customize Gateway Responses> 
--
-- /See:/ 'mkGatewayResponse' smart constructor.
data GatewayResponse = GatewayResponse'
  { defaultResponse :: Core.Maybe Core.Bool
    -- ^ A Boolean flag to indicate whether this 'GatewayResponse' is the default gateway response (@true@ ) or not (@false@ ). A default gateway response is one generated by API Gateway without any customization by an API developer. 
  , responseParameters :: Core.Maybe (Core.HashMap Core.Text Core.Text)
    -- ^ Response parameters (paths, query strings and headers) of the 'GatewayResponse' as a string-to-string map of key-value pairs.
  , responseTemplates :: Core.Maybe (Core.HashMap Core.Text Core.Text)
    -- ^ Response templates of the 'GatewayResponse' as a string-to-string map of key-value pairs.
  , responseType :: Core.Maybe Types.GatewayResponseType
    -- ^ The response type of the associated 'GatewayResponse' . Valid values are 
--
--     * ACCESS_DENIED
--
--     * API_CONFIGURATION_ERROR
--
--     * AUTHORIZER_FAILURE
--
--     * AUTHORIZER_CONFIGURATION_ERROR
--
--     * BAD_REQUEST_PARAMETERS
--
--     * BAD_REQUEST_BODY
--
--     * DEFAULT_4XX
--
--     * DEFAULT_5XX
--
--     * EXPIRED_TOKEN
--
--     * INVALID_SIGNATURE
--
--     * INTEGRATION_FAILURE
--
--     * INTEGRATION_TIMEOUT
--
--     * INVALID_API_KEY
--
--     * MISSING_AUTHENTICATION_TOKEN
--
--     * QUOTA_EXCEEDED
--
--     * REQUEST_TOO_LARGE
--
--     * RESOURCE_NOT_FOUND
--
--     * THROTTLED
--
--     * UNAUTHORIZED
--
--     * UNSUPPORTED_MEDIA_TYPE
--
--
  , statusCode :: Core.Maybe Types.StatusCode
    -- ^ The HTTP status code for this 'GatewayResponse' .
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GatewayResponse' value with any optional fields omitted.
mkGatewayResponse
    :: GatewayResponse
mkGatewayResponse
  = GatewayResponse'{defaultResponse = Core.Nothing,
                     responseParameters = Core.Nothing,
                     responseTemplates = Core.Nothing, responseType = Core.Nothing,
                     statusCode = Core.Nothing}

-- | A Boolean flag to indicate whether this 'GatewayResponse' is the default gateway response (@true@ ) or not (@false@ ). A default gateway response is one generated by API Gateway without any customization by an API developer. 
--
-- /Note:/ Consider using 'defaultResponse' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grDefaultResponse :: Lens.Lens' GatewayResponse (Core.Maybe Core.Bool)
grDefaultResponse = Lens.field @"defaultResponse"
{-# INLINEABLE grDefaultResponse #-}
{-# DEPRECATED defaultResponse "Use generic-lens or generic-optics with 'defaultResponse' instead"  #-}

-- | Response parameters (paths, query strings and headers) of the 'GatewayResponse' as a string-to-string map of key-value pairs.
--
-- /Note:/ Consider using 'responseParameters' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grResponseParameters :: Lens.Lens' GatewayResponse (Core.Maybe (Core.HashMap Core.Text Core.Text))
grResponseParameters = Lens.field @"responseParameters"
{-# INLINEABLE grResponseParameters #-}
{-# DEPRECATED responseParameters "Use generic-lens or generic-optics with 'responseParameters' instead"  #-}

-- | Response templates of the 'GatewayResponse' as a string-to-string map of key-value pairs.
--
-- /Note:/ Consider using 'responseTemplates' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grResponseTemplates :: Lens.Lens' GatewayResponse (Core.Maybe (Core.HashMap Core.Text Core.Text))
grResponseTemplates = Lens.field @"responseTemplates"
{-# INLINEABLE grResponseTemplates #-}
{-# DEPRECATED responseTemplates "Use generic-lens or generic-optics with 'responseTemplates' instead"  #-}

-- | The response type of the associated 'GatewayResponse' . Valid values are 
--
--     * ACCESS_DENIED
--
--     * API_CONFIGURATION_ERROR
--
--     * AUTHORIZER_FAILURE
--
--     * AUTHORIZER_CONFIGURATION_ERROR
--
--     * BAD_REQUEST_PARAMETERS
--
--     * BAD_REQUEST_BODY
--
--     * DEFAULT_4XX
--
--     * DEFAULT_5XX
--
--     * EXPIRED_TOKEN
--
--     * INVALID_SIGNATURE
--
--     * INTEGRATION_FAILURE
--
--     * INTEGRATION_TIMEOUT
--
--     * INVALID_API_KEY
--
--     * MISSING_AUTHENTICATION_TOKEN
--
--     * QUOTA_EXCEEDED
--
--     * REQUEST_TOO_LARGE
--
--     * RESOURCE_NOT_FOUND
--
--     * THROTTLED
--
--     * UNAUTHORIZED
--
--     * UNSUPPORTED_MEDIA_TYPE
--
--
--
-- /Note:/ Consider using 'responseType' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grResponseType :: Lens.Lens' GatewayResponse (Core.Maybe Types.GatewayResponseType)
grResponseType = Lens.field @"responseType"
{-# INLINEABLE grResponseType #-}
{-# DEPRECATED responseType "Use generic-lens or generic-optics with 'responseType' instead"  #-}

-- | The HTTP status code for this 'GatewayResponse' .
--
-- /Note:/ Consider using 'statusCode' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grStatusCode :: Lens.Lens' GatewayResponse (Core.Maybe Types.StatusCode)
grStatusCode = Lens.field @"statusCode"
{-# INLINEABLE grStatusCode #-}
{-# DEPRECATED statusCode "Use generic-lens or generic-optics with 'statusCode' instead"  #-}

instance Core.FromJSON GatewayResponse where
        parseJSON
          = Core.withObject "GatewayResponse" Core.$
              \ x ->
                GatewayResponse' Core.<$>
                  (x Core..:? "defaultResponse") Core.<*>
                    x Core..:? "responseParameters"
                    Core.<*> x Core..:? "responseTemplates"
                    Core.<*> x Core..:? "responseType"
                    Core.<*> x Core..:? "statusCode"
