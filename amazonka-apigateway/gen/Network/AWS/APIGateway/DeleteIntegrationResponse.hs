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
-- Module      : Network.AWS.APIGateway.DeleteIntegrationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents a delete integration response.
module Network.AWS.APIGateway.DeleteIntegrationResponse
  ( -- * Creating a Request
    deleteIntegrationResponse,
    DeleteIntegrationResponse,

    -- * Request Lenses
    dirRestAPIId,
    dirResourceId,
    dirHttpMethod,
    dirStatusCode,

    -- * Destructuring the Response
    deleteIntegrationResponseResponse,
    DeleteIntegrationResponseResponse,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a delete integration response request.
--
--
--
-- /See:/ 'deleteIntegrationResponse' smart constructor.
data DeleteIntegrationResponse = DeleteIntegrationResponse'
  { _dirRestAPIId ::
      !Text,
    _dirResourceId ::
      !Text,
    _dirHttpMethod ::
      !Text,
    _dirStatusCode ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteIntegrationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'dirResourceId' - [Required] Specifies a delete integration response request's resource identifier.
--
-- * 'dirHttpMethod' - [Required] Specifies a delete integration response request's HTTP method.
--
-- * 'dirStatusCode' - [Required] Specifies a delete integration response request's status code.
deleteIntegrationResponse ::
  -- | 'dirRestAPIId'
  Text ->
  -- | 'dirResourceId'
  Text ->
  -- | 'dirHttpMethod'
  Text ->
  -- | 'dirStatusCode'
  Text ->
  DeleteIntegrationResponse
deleteIntegrationResponse
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pStatusCode_ =
    DeleteIntegrationResponse'
      { _dirRestAPIId =
          pRestAPIId_,
        _dirResourceId = pResourceId_,
        _dirHttpMethod = pHttpMethod_,
        _dirStatusCode = pStatusCode_
      }

-- | [Required] The string identifier of the associated 'RestApi' .
dirRestAPIId :: Lens' DeleteIntegrationResponse Text
dirRestAPIId = lens _dirRestAPIId (\s a -> s {_dirRestAPIId = a})

-- | [Required] Specifies a delete integration response request's resource identifier.
dirResourceId :: Lens' DeleteIntegrationResponse Text
dirResourceId = lens _dirResourceId (\s a -> s {_dirResourceId = a})

-- | [Required] Specifies a delete integration response request's HTTP method.
dirHttpMethod :: Lens' DeleteIntegrationResponse Text
dirHttpMethod = lens _dirHttpMethod (\s a -> s {_dirHttpMethod = a})

-- | [Required] Specifies a delete integration response request's status code.
dirStatusCode :: Lens' DeleteIntegrationResponse Text
dirStatusCode = lens _dirStatusCode (\s a -> s {_dirStatusCode = a})

instance AWSRequest DeleteIntegrationResponse where
  type
    Rs DeleteIntegrationResponse =
      DeleteIntegrationResponseResponse
  request = delete apiGateway
  response =
    receiveNull DeleteIntegrationResponseResponse'

instance Hashable DeleteIntegrationResponse

instance NFData DeleteIntegrationResponse

instance ToHeaders DeleteIntegrationResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath DeleteIntegrationResponse where
  toPath DeleteIntegrationResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _dirRestAPIId,
        "/resources/",
        toBS _dirResourceId,
        "/methods/",
        toBS _dirHttpMethod,
        "/integration/responses/",
        toBS _dirStatusCode
      ]

instance ToQuery DeleteIntegrationResponse where
  toQuery = const mempty

-- | /See:/ 'deleteIntegrationResponseResponse' smart constructor.
data DeleteIntegrationResponseResponse = DeleteIntegrationResponseResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteIntegrationResponseResponse' with the minimum fields required to make a request.
deleteIntegrationResponseResponse ::
  DeleteIntegrationResponseResponse
deleteIntegrationResponseResponse =
  DeleteIntegrationResponseResponse'

instance NFData DeleteIntegrationResponseResponse
