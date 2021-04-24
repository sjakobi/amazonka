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
-- Module      : Network.AWS.APIGateway.DeleteGatewayResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Clears any customization of a 'GatewayResponse' of a specified response type on the given 'RestApi' and resets it with the default settings.
module Network.AWS.APIGateway.DeleteGatewayResponse
  ( -- * Creating a Request
    deleteGatewayResponse,
    DeleteGatewayResponse,

    -- * Request Lenses
    dgrRestAPIId,
    dgrResponseType,

    -- * Destructuring the Response
    deleteGatewayResponseResponse,
    DeleteGatewayResponseResponse,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Clears any customization of a 'GatewayResponse' of a specified response type on the given 'RestApi' and resets it with the default settings.
--
--
--
-- /See:/ 'deleteGatewayResponse' smart constructor.
data DeleteGatewayResponse = DeleteGatewayResponse'
  { _dgrRestAPIId ::
      !Text,
    _dgrResponseType ::
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

-- | Creates a value of 'DeleteGatewayResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgrRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'dgrResponseType' - [Required] The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
deleteGatewayResponse ::
  -- | 'dgrRestAPIId'
  Text ->
  -- | 'dgrResponseType'
  GatewayResponseType ->
  DeleteGatewayResponse
deleteGatewayResponse pRestAPIId_ pResponseType_ =
  DeleteGatewayResponse'
    { _dgrRestAPIId = pRestAPIId_,
      _dgrResponseType = pResponseType_
    }

-- | [Required] The string identifier of the associated 'RestApi' .
dgrRestAPIId :: Lens' DeleteGatewayResponse Text
dgrRestAPIId = lens _dgrRestAPIId (\s a -> s {_dgrRestAPIId = a})

-- | [Required] The response type of the associated 'GatewayResponse' . Valid values are     * ACCESS_DENIED    * API_CONFIGURATION_ERROR    * AUTHORIZER_FAILURE    * AUTHORIZER_CONFIGURATION_ERROR    * BAD_REQUEST_PARAMETERS    * BAD_REQUEST_BODY    * DEFAULT_4XX    * DEFAULT_5XX    * EXPIRED_TOKEN    * INVALID_SIGNATURE    * INTEGRATION_FAILURE    * INTEGRATION_TIMEOUT    * INVALID_API_KEY    * MISSING_AUTHENTICATION_TOKEN    * QUOTA_EXCEEDED    * REQUEST_TOO_LARGE    * RESOURCE_NOT_FOUND    * THROTTLED    * UNAUTHORIZED    * UNSUPPORTED_MEDIA_TYPE
dgrResponseType :: Lens' DeleteGatewayResponse GatewayResponseType
dgrResponseType = lens _dgrResponseType (\s a -> s {_dgrResponseType = a})

instance AWSRequest DeleteGatewayResponse where
  type
    Rs DeleteGatewayResponse =
      DeleteGatewayResponseResponse
  request = delete apiGateway
  response = receiveNull DeleteGatewayResponseResponse'

instance Hashable DeleteGatewayResponse

instance NFData DeleteGatewayResponse

instance ToHeaders DeleteGatewayResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath DeleteGatewayResponse where
  toPath DeleteGatewayResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _dgrRestAPIId,
        "/gatewayresponses/",
        toBS _dgrResponseType
      ]

instance ToQuery DeleteGatewayResponse where
  toQuery = const mempty

-- | /See:/ 'deleteGatewayResponseResponse' smart constructor.
data DeleteGatewayResponseResponse = DeleteGatewayResponseResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteGatewayResponseResponse' with the minimum fields required to make a request.
deleteGatewayResponseResponse ::
  DeleteGatewayResponseResponse
deleteGatewayResponseResponse =
  DeleteGatewayResponseResponse'

instance NFData DeleteGatewayResponseResponse
