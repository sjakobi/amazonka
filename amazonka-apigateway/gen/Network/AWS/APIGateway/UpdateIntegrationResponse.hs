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
-- Module      : Network.AWS.APIGateway.UpdateIntegrationResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Represents an update integration response.
module Network.AWS.APIGateway.UpdateIntegrationResponse
  ( -- * Creating a Request
    updateIntegrationResponse,
    UpdateIntegrationResponse,

    -- * Request Lenses
    uirPatchOperations,
    uirRestAPIId,
    uirResourceId,
    uirHttpMethod,
    uirStatusCode,

    -- * Destructuring the Response
    integrationResponse,
    IntegrationResponse,

    -- * Response Lenses
    irContentHandling,
    irResponseTemplates,
    irStatusCode,
    irResponseParameters,
    irSelectionPattern,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents an update integration response request.
--
--
--
-- /See:/ 'updateIntegrationResponse' smart constructor.
data UpdateIntegrationResponse = UpdateIntegrationResponse'
  { _uirPatchOperations ::
      !( Maybe
           [PatchOperation]
       ),
    _uirRestAPIId ::
      !Text,
    _uirResourceId ::
      !Text,
    _uirHttpMethod ::
      !Text,
    _uirStatusCode ::
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

-- | Creates a value of 'UpdateIntegrationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uirPatchOperations' - A list of update operations to be applied to the specified resource and in the order specified in this list.
--
-- * 'uirRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'uirResourceId' - [Required] Specifies an update integration response request's resource identifier.
--
-- * 'uirHttpMethod' - [Required] Specifies an update integration response request's HTTP method.
--
-- * 'uirStatusCode' - [Required] Specifies an update integration response request's status code.
updateIntegrationResponse ::
  -- | 'uirRestAPIId'
  Text ->
  -- | 'uirResourceId'
  Text ->
  -- | 'uirHttpMethod'
  Text ->
  -- | 'uirStatusCode'
  Text ->
  UpdateIntegrationResponse
updateIntegrationResponse
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pStatusCode_ =
    UpdateIntegrationResponse'
      { _uirPatchOperations =
          Nothing,
        _uirRestAPIId = pRestAPIId_,
        _uirResourceId = pResourceId_,
        _uirHttpMethod = pHttpMethod_,
        _uirStatusCode = pStatusCode_
      }

-- | A list of update operations to be applied to the specified resource and in the order specified in this list.
uirPatchOperations :: Lens' UpdateIntegrationResponse [PatchOperation]
uirPatchOperations = lens _uirPatchOperations (\s a -> s {_uirPatchOperations = a}) . _Default . _Coerce

-- | [Required] The string identifier of the associated 'RestApi' .
uirRestAPIId :: Lens' UpdateIntegrationResponse Text
uirRestAPIId = lens _uirRestAPIId (\s a -> s {_uirRestAPIId = a})

-- | [Required] Specifies an update integration response request's resource identifier.
uirResourceId :: Lens' UpdateIntegrationResponse Text
uirResourceId = lens _uirResourceId (\s a -> s {_uirResourceId = a})

-- | [Required] Specifies an update integration response request's HTTP method.
uirHttpMethod :: Lens' UpdateIntegrationResponse Text
uirHttpMethod = lens _uirHttpMethod (\s a -> s {_uirHttpMethod = a})

-- | [Required] Specifies an update integration response request's status code.
uirStatusCode :: Lens' UpdateIntegrationResponse Text
uirStatusCode = lens _uirStatusCode (\s a -> s {_uirStatusCode = a})

instance AWSRequest UpdateIntegrationResponse where
  type
    Rs UpdateIntegrationResponse =
      IntegrationResponse
  request = patchJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable UpdateIntegrationResponse

instance NFData UpdateIntegrationResponse

instance ToHeaders UpdateIntegrationResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON UpdateIntegrationResponse where
  toJSON UpdateIntegrationResponse' {..} =
    object
      ( catMaybes
          [("patchOperations" .=) <$> _uirPatchOperations]
      )

instance ToPath UpdateIntegrationResponse where
  toPath UpdateIntegrationResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _uirRestAPIId,
        "/resources/",
        toBS _uirResourceId,
        "/methods/",
        toBS _uirHttpMethod,
        "/integration/responses/",
        toBS _uirStatusCode
      ]

instance ToQuery UpdateIntegrationResponse where
  toQuery = const mempty
