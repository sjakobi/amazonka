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
-- Module      : Network.AWS.APIGateway.GetGatewayResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a 'GatewayResponse' of a specified response type on the given 'RestApi' .
module Network.AWS.APIGateway.GetGatewayResponse
  ( -- * Creating a Request
    getGatewayResponse,
    GetGatewayResponse,

    -- * Request Lenses
    gRestAPIId,
    gResponseType,

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

-- | Gets a 'GatewayResponse' of a specified response type on the given 'RestApi' .
--
--
--
-- /See:/ 'getGatewayResponse' smart constructor.
data GetGatewayResponse = GetGatewayResponse'
  { _gRestAPIId ::
      !Text,
    _gResponseType ::
      !GatewayResponseType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'gResponseType' - [Required] The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
getGatewayResponse ::
  -- | 'gRestAPIId'
  Text ->
  -- | 'gResponseType'
  GatewayResponseType ->
  GetGatewayResponse
getGatewayResponse pRestAPIId_ pResponseType_ =
  GetGatewayResponse'
    { _gRestAPIId = pRestAPIId_,
      _gResponseType = pResponseType_
    }

-- | [Required] The string identifier of the associated 'RestApi' .
gRestAPIId :: Lens' GetGatewayResponse Text
gRestAPIId = lens _gRestAPIId (\s a -> s {_gRestAPIId = a})

-- | [Required] The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
gResponseType :: Lens' GetGatewayResponse GatewayResponseType
gResponseType = lens _gResponseType (\s a -> s {_gResponseType = a})

instance AWSRequest GetGatewayResponse where
  type Rs GetGatewayResponse = GatewayResponse
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetGatewayResponse

instance NFData GetGatewayResponse

instance ToHeaders GetGatewayResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetGatewayResponse where
  toPath GetGatewayResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _gRestAPIId,
        "/gatewayresponses/",
        toBS _gResponseType
      ]

instance ToQuery GetGatewayResponse where
  toQuery = const mempty
