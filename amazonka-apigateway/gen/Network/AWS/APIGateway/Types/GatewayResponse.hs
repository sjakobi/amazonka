{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.GatewayResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.GatewayResponse where

import Network.AWS.APIGateway.Types.GatewayResponseType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A gateway response of a given response type and status code, with optional response parameters and mapping templates.
--
--
-- For more information about valid gateway response types, see <https://docs.aws.amazon.com/apigateway/latest/developerguide/supported-gateway-response-types.html Gateway Response Types Supported by API Gateway> __Example: Get a Gateway Response of a given response type__
-- __Request__
-- This example shows how to get a gateway response of the @MISSING_AUTHENTICATION_TOKEN@ type.
--
-- @@GET /restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN HTTP/1.1 Host: beta-apigateway.us-east-1.amazonaws.com Content-Type: application/json X-Amz-Date: 20170503T202516Z Authorization: AWS4-HMAC-SHA256 Credential={access-key-id}/20170503/us-east-1/apigateway/aws4_request, SignedHeaders=content-type;host;x-amz-date, Signature=1b52460e3159c1a26cff29093855d50ea141c1c5b937528fecaf60f51129697a Cache-Control: no-cache Postman-Token: 3b2a1ce9-c848-2e26-2e2f-9c2caefbed45 @ @ The response type is specified as a URL path.
--
-- __Response__
-- The successful operation returns the @200 OK@ status code and a payload similar to the following:
--
-- @@{ "_links": { "curies": { "href": "http://docs.aws.amazon.com/apigateway/latest/developerguide/restapi-gatewayresponse-{rel}.html", "name": "gatewayresponse", "templated": true }, "self": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, "gatewayresponse:delete": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" }, "gatewayresponse:put": { "href": "/restapis/o81lxisefl/gatewayresponses/{response_type}", "templated": true }, "gatewayresponse:update": { "href": "/restapis/o81lxisefl/gatewayresponses/MISSING_AUTHENTICATION_TOKEN" } }, "defaultResponse": false, "responseParameters": { "gatewayresponse.header.x-request-path": "method.request.path.petId", "gatewayresponse.header.Access-Control-Allow-Origin": "'a.b.c'", "gatewayresponse.header.x-request-query": "method.request.querystring.q", "gatewayresponse.header.x-request-header": "method.request.header.Accept" }, "responseTemplates": { "application/json": "{\n \"message\": $context.error.messageString,\n \"type\": \"$context.error.responseType\",\n \"stage\": \"$context.stage\",\n \"resourcePath\": \"$context.resourcePath\",\n \"stageVariables.a\": \"$stageVariables.a\",\n \"statusCode\": \"'404'\"\n}" }, "responseType": "MISSING_AUTHENTICATION_TOKEN", "statusCode": "404" }@ @
--
-- <https://docs.aws.amazon.com/apigateway/latest/developerguide/customize-gateway-responses.html Customize Gateway Responses>
--
-- /See:/ 'gatewayResponse' smart constructor.
data GatewayResponse = GatewayResponse'
  { _grResponseTemplates ::
      !(Maybe (Map Text Text)),
    _grStatusCode :: !(Maybe Text),
    _grResponseParameters ::
      !(Maybe (Map Text Text)),
    _grResponseType ::
      !(Maybe GatewayResponseType),
    _grDefaultResponse :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grResponseTemplates' - Response templates of the 'GatewayResponse' as a string-to-string map of key-value pairs.
--
-- * 'grStatusCode' - The HTTP status code for this 'GatewayResponse' .
--
-- * 'grResponseParameters' - Response parameters (paths, query strings and headers) of the 'GatewayResponse' as a string-to-string map of key-value pairs.
--
-- * 'grResponseType' - The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
--
-- * 'grDefaultResponse' - A Boolean flag to indicate whether this 'GatewayResponse' is the default gateway response (@true@ ) or not (@false@ ). A default gateway response is one generated by API Gateway without any customization by an API developer.
gatewayResponse ::
  GatewayResponse
gatewayResponse =
  GatewayResponse'
    { _grResponseTemplates = Nothing,
      _grStatusCode = Nothing,
      _grResponseParameters = Nothing,
      _grResponseType = Nothing,
      _grDefaultResponse = Nothing
    }

-- | Response templates of the 'GatewayResponse' as a string-to-string map of key-value pairs.
grResponseTemplates :: Lens' GatewayResponse (HashMap Text Text)
grResponseTemplates = lens _grResponseTemplates (\s a -> s {_grResponseTemplates = a}) . _Default . _Map

-- | The HTTP status code for this 'GatewayResponse' .
grStatusCode :: Lens' GatewayResponse (Maybe Text)
grStatusCode = lens _grStatusCode (\s a -> s {_grStatusCode = a})

-- | Response parameters (paths, query strings and headers) of the 'GatewayResponse' as a string-to-string map of key-value pairs.
grResponseParameters :: Lens' GatewayResponse (HashMap Text Text)
grResponseParameters = lens _grResponseParameters (\s a -> s {_grResponseParameters = a}) . _Default . _Map

-- | The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
grResponseType :: Lens' GatewayResponse (Maybe GatewayResponseType)
grResponseType = lens _grResponseType (\s a -> s {_grResponseType = a})

-- | A Boolean flag to indicate whether this 'GatewayResponse' is the default gateway response (@true@ ) or not (@false@ ). A default gateway response is one generated by API Gateway without any customization by an API developer.
grDefaultResponse :: Lens' GatewayResponse (Maybe Bool)
grDefaultResponse = lens _grDefaultResponse (\s a -> s {_grDefaultResponse = a})

instance FromJSON GatewayResponse where
  parseJSON =
    withObject
      "GatewayResponse"
      ( \x ->
          GatewayResponse'
            <$> (x .:? "responseTemplates" .!= mempty)
            <*> (x .:? "statusCode")
            <*> (x .:? "responseParameters" .!= mempty)
            <*> (x .:? "responseType")
            <*> (x .:? "defaultResponse")
      )

instance Hashable GatewayResponse

instance NFData GatewayResponse
