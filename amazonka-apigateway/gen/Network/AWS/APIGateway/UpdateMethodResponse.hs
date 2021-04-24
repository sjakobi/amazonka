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
-- Module      : Network.AWS.APIGateway.UpdateMethodResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing 'MethodResponse' resource.
module Network.AWS.APIGateway.UpdateMethodResponse
  ( -- * Creating a Request
    updateMethodResponse,
    UpdateMethodResponse,

    -- * Request Lenses
    umrPatchOperations,
    umrRestAPIId,
    umrResourceId,
    umrHttpMethod,
    umrStatusCode,

    -- * Destructuring the Response
    methodResponse,
    MethodResponse,

    -- * Response Lenses
    mrResponseModels,
    mrStatusCode,
    mrResponseParameters,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request to update an existing 'MethodResponse' resource.
--
--
--
-- /See:/ 'updateMethodResponse' smart constructor.
data UpdateMethodResponse = UpdateMethodResponse'
  { _umrPatchOperations ::
      !(Maybe [PatchOperation]),
    _umrRestAPIId :: !Text,
    _umrResourceId :: !Text,
    _umrHttpMethod :: !Text,
    _umrStatusCode :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateMethodResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umrPatchOperations' - A list of update operations to be applied to the specified resource and in the order specified in this list.
--
-- * 'umrRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'umrResourceId' - [Required] The 'Resource' identifier for the 'MethodResponse' resource.
--
-- * 'umrHttpMethod' - [Required] The HTTP verb of the 'Method' resource.
--
-- * 'umrStatusCode' - [Required] The status code for the 'MethodResponse' resource.
updateMethodResponse ::
  -- | 'umrRestAPIId'
  Text ->
  -- | 'umrResourceId'
  Text ->
  -- | 'umrHttpMethod'
  Text ->
  -- | 'umrStatusCode'
  Text ->
  UpdateMethodResponse
updateMethodResponse
  pRestAPIId_
  pResourceId_
  pHttpMethod_
  pStatusCode_ =
    UpdateMethodResponse'
      { _umrPatchOperations =
          Nothing,
        _umrRestAPIId = pRestAPIId_,
        _umrResourceId = pResourceId_,
        _umrHttpMethod = pHttpMethod_,
        _umrStatusCode = pStatusCode_
      }

-- | A list of update operations to be applied to the specified resource and in the order specified in this list.
umrPatchOperations :: Lens' UpdateMethodResponse [PatchOperation]
umrPatchOperations = lens _umrPatchOperations (\s a -> s {_umrPatchOperations = a}) . _Default . _Coerce

-- | [Required] The string identifier of the associated 'RestApi' .
umrRestAPIId :: Lens' UpdateMethodResponse Text
umrRestAPIId = lens _umrRestAPIId (\s a -> s {_umrRestAPIId = a})

-- | [Required] The 'Resource' identifier for the 'MethodResponse' resource.
umrResourceId :: Lens' UpdateMethodResponse Text
umrResourceId = lens _umrResourceId (\s a -> s {_umrResourceId = a})

-- | [Required] The HTTP verb of the 'Method' resource.
umrHttpMethod :: Lens' UpdateMethodResponse Text
umrHttpMethod = lens _umrHttpMethod (\s a -> s {_umrHttpMethod = a})

-- | [Required] The status code for the 'MethodResponse' resource.
umrStatusCode :: Lens' UpdateMethodResponse Text
umrStatusCode = lens _umrStatusCode (\s a -> s {_umrStatusCode = a})

instance AWSRequest UpdateMethodResponse where
  type Rs UpdateMethodResponse = MethodResponse
  request = patchJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable UpdateMethodResponse

instance NFData UpdateMethodResponse

instance ToHeaders UpdateMethodResponse where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON UpdateMethodResponse where
  toJSON UpdateMethodResponse' {..} =
    object
      ( catMaybes
          [("patchOperations" .=) <$> _umrPatchOperations]
      )

instance ToPath UpdateMethodResponse where
  toPath UpdateMethodResponse' {..} =
    mconcat
      [ "/restapis/",
        toBS _umrRestAPIId,
        "/resources/",
        toBS _umrResourceId,
        "/methods/",
        toBS _umrHttpMethod,
        "/responses/",
        toBS _umrStatusCode
      ]

instance ToQuery UpdateMethodResponse where
  toQuery = const mempty
