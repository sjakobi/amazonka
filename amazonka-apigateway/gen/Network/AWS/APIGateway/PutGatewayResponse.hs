{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.PutGatewayResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a customization of a 'GatewayResponse' of a specified response type and status code on the given 'RestApi' .
module Network.AWS.APIGateway.PutGatewayResponse
  ( -- * Creating a Request
    putGatewayResponse,
    PutGatewayResponse,

    -- * Request Lenses
    pgrResponseTemplates,
    pgrStatusCode,
    pgrResponseParameters,
    pgrRestAPIId,
    pgrResponseType,

    -- * Destructuring the Response
    gatewayResponse,
    GatewayResponse,

    -- * Response Lenses
    grResponseTemplates,
    grStatusCode,
    grResponseParameters,
    grResponseType,
    grDefaultResponse,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Creates a customization of a 'GatewayResponse' of a specified response type and status code on the given 'RestApi' .
--
--
--
-- /See:/ 'putGatewayResponse' smart constructor.
data PutGatewayResponse = PutGatewayResponse'
  { _pgrResponseTemplates ::
      !(Maybe (Map Text Text)),
    _pgrStatusCode :: !(Maybe Text),
    _pgrResponseParameters ::
      !(Maybe (Map Text Text)),
    _pgrRestAPIId :: !Text,
    _pgrResponseType ::
      !GatewayResponseType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgrResponseTemplates' - Response templates of the 'GatewayResponse' as a string-to-string map of key-value pairs.
--
-- * 'pgrStatusCode' - 'GatewayResponse'
--
-- * 'pgrResponseParameters' - Response parameters (paths, query strings and headers) of the 'GatewayResponse' as a string-to-string map of key-value pairs.
--
-- * 'pgrRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'pgrResponseType' - [Required] The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
putGatewayResponse ::
  -- | 'pgrRestAPIId'
  Text ->
  -- | 'pgrResponseType'
  GatewayResponseType ->
  PutGatewayResponse
putGatewayResponse pRestAPIId_ pResponseType_ =
  PutGatewayResponse'
    { _pgrResponseTemplates =
        Nothing,
      _pgrStatusCode = Nothing,
      _pgrResponseParameters = Nothing,
      _pgrRestAPIId = pRestAPIId_,
      _pgrResponseType = pResponseType_
    }

-- | Response templates of the 'GatewayResponse' as a string-to-string map of key-value pairs.
pgrResponseTemplates :: Lens' PutGatewayResponse (HashMap Text Text)
pgrResponseTemplates = lens _pgrResponseTemplates (\s a -> s {_pgrResponseTemplates = a}) . _Default . _Map

-- | 'GatewayResponse'
pgrStatusCode :: Lens' PutGatewayResponse (Maybe Text)
pgrStatusCode = lens _pgrStatusCode (\s a -> s {_pgrStatusCode = a})

-- | Response parameters (paths, query strings and headers) of the 'GatewayResponse' as a string-to-string map of key-value pairs.
pgrResponseParameters :: Lens' PutGatewayResponse (HashMap Text Text)
pgrResponseParameters = lens _pgrResponseParameters (\s a -> s {_pgrResponseParameters = a}) . _Default . _Map

-- | [Required] The string identifier of the associated 'RestApi' .
pgrRestAPIId :: Lens' PutGatewayResponse Text
pgrRestAPIId = lens _pgrRestAPIId (\s a -> s {_pgrRestAPIId = a})

-- | [Required] The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
pgrResponseType :: Lens' PutGatewayResponse GatewayResponseType
pgrResponseType = lens _pgrResponseType (\s a -> s {_pgrResponseType = a})

instance AWSRequest PutGatewayResponse where
  type Rs PutGatewayResponse = GatewayResponse
  request = putJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable PutGatewayResponse

instance NFData PutGatewayResponse

instance ToHeaders PutGatewayResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON PutGatewayResponse where
  toJSON PutGatewayResponse' {..} =
    object
      ( catMaybes
          [ ("responseTemplates" .=) <$> _pgrResponseTemplates,
            ("statusCode" .=) <$> _pgrStatusCode,
            ("responseParameters" .=)
              <$> _pgrResponseParameters
          ]
      )

instance ToPath PutGatewayResponse where
  toPath PutGatewayResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _pgrRestAPIId,
        "/gatewayresponses/",
        toBS _pgrResponseType
      ]

instance ToQuery PutGatewayResponse where
  toQuery = const mempty
