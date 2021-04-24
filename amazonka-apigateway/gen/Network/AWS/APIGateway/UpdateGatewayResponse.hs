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
-- Module      : Network.AWS.APIGateway.UpdateGatewayResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a 'GatewayResponse' of a specified response type on the given 'RestApi' .
module Network.AWS.APIGateway.UpdateGatewayResponse
  ( -- * Creating a Request
    updateGatewayResponse,
    UpdateGatewayResponse,

    -- * Request Lenses
    ugrPatchOperations,
    ugrRestAPIId,
    ugrResponseType,

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

-- | Updates a 'GatewayResponse' of a specified response type on the given 'RestApi' .
--
--
--
-- /See:/ 'updateGatewayResponse' smart constructor.
data UpdateGatewayResponse = UpdateGatewayResponse'
  { _ugrPatchOperations ::
      !(Maybe [PatchOperation]),
    _ugrRestAPIId :: !Text,
    _ugrResponseType ::
      !GatewayResponseType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugrPatchOperations' - A list of update operations to be applied to the specified resource and in the order specified in this list.
--
-- * 'ugrRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'ugrResponseType' - [Required] The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
updateGatewayResponse ::
  -- | 'ugrRestAPIId'
  Text ->
  -- | 'ugrResponseType'
  GatewayResponseType ->
  UpdateGatewayResponse
updateGatewayResponse pRestAPIId_ pResponseType_ =
  UpdateGatewayResponse'
    { _ugrPatchOperations =
        Nothing,
      _ugrRestAPIId = pRestAPIId_,
      _ugrResponseType = pResponseType_
    }

-- | A list of update operations to be applied to the specified resource and in the order specified in this list.
ugrPatchOperations :: Lens' UpdateGatewayResponse [PatchOperation]
ugrPatchOperations = lens _ugrPatchOperations (\s a -> s {_ugrPatchOperations = a}) . _Default . _Coerce

-- | [Required] The string identifier of the associated 'RestApi' .
ugrRestAPIId :: Lens' UpdateGatewayResponse Text
ugrRestAPIId = lens _ugrRestAPIId (\s a -> s {_ugrRestAPIId = a})

-- | [Required] The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
ugrResponseType :: Lens' UpdateGatewayResponse GatewayResponseType
ugrResponseType = lens _ugrResponseType (\s a -> s {_ugrResponseType = a})

instance AWSRequest UpdateGatewayResponse where
  type Rs UpdateGatewayResponse = GatewayResponse
  request = patchJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable UpdateGatewayResponse

instance NFData UpdateGatewayResponse

instance ToHeaders UpdateGatewayResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON UpdateGatewayResponse where
  toJSON UpdateGatewayResponse' {..} =
    object
      ( catMaybes
          [("patchOperations" .=) <$> _ugrPatchOperations]
      )

instance ToPath UpdateGatewayResponse where
  toPath UpdateGatewayResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _ugrRestAPIId,
        "/gatewayresponses/",
        toBS _ugrResponseType
      ]

instance ToQuery UpdateGatewayResponse where
  toQuery = const mempty
