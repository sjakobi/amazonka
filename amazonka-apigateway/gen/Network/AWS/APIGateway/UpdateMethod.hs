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
-- Module      : Network.AWS.APIGateway.UpdateMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing 'Method' resource.
module Network.AWS.APIGateway.UpdateMethod
  ( -- * Creating a Request
    updateMethod,
    UpdateMethod,

    -- * Request Lenses
    umPatchOperations,
    umRestAPIId,
    umResourceId,
    umHttpMethod,

    -- * Destructuring the Response
    method,
    Method,

    -- * Response Lenses
    mHttpMethod,
    mMethodIntegration,
    mApiKeyRequired,
    mAuthorizationType,
    mRequestModels,
    mOperationName,
    mRequestValidatorId,
    mMethodResponses,
    mAuthorizerId,
    mRequestParameters,
    mAuthorizationScopes,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to update an existing 'Method' resource.
--
--
--
-- /See:/ 'updateMethod' smart constructor.
data UpdateMethod = UpdateMethod'
  { _umPatchOperations ::
      !(Maybe [PatchOperation]),
    _umRestAPIId :: !Text,
    _umResourceId :: !Text,
    _umHttpMethod :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umPatchOperations' - A list of update operations to be applied to the specified resource and in the order specified in this list.
--
-- * 'umRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'umResourceId' - [Required] The 'Resource' identifier for the 'Method' resource.
--
-- * 'umHttpMethod' - [Required] The HTTP verb of the 'Method' resource.
updateMethod ::
  -- | 'umRestAPIId'
  Text ->
  -- | 'umResourceId'
  Text ->
  -- | 'umHttpMethod'
  Text ->
  UpdateMethod
updateMethod pRestAPIId_ pResourceId_ pHttpMethod_ =
  UpdateMethod'
    { _umPatchOperations = Nothing,
      _umRestAPIId = pRestAPIId_,
      _umResourceId = pResourceId_,
      _umHttpMethod = pHttpMethod_
    }

-- | A list of update operations to be applied to the specified resource and in the order specified in this list.
umPatchOperations :: Lens' UpdateMethod [PatchOperation]
umPatchOperations = lens _umPatchOperations (\s a -> s {_umPatchOperations = a}) . _Default . _Coerce

-- | [Required] The string identifier of the associated 'RestApi' .
umRestAPIId :: Lens' UpdateMethod Text
umRestAPIId = lens _umRestAPIId (\s a -> s {_umRestAPIId = a})

-- | [Required] The 'Resource' identifier for the 'Method' resource.
umResourceId :: Lens' UpdateMethod Text
umResourceId = lens _umResourceId (\s a -> s {_umResourceId = a})

-- | [Required] The HTTP verb of the 'Method' resource.
umHttpMethod :: Lens' UpdateMethod Text
umHttpMethod = lens _umHttpMethod (\s a -> s {_umHttpMethod = a})

instance AWSRequest UpdateMethod where
  type Rs UpdateMethod = Method
  request = patchJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable UpdateMethod

instance NFData UpdateMethod

instance ToHeaders UpdateMethod where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON UpdateMethod where
  toJSON UpdateMethod' {..} =
    object
      ( catMaybes
          [("patchOperations" .=) <$> _umPatchOperations]
      )

instance ToPath UpdateMethod where
  toPath UpdateMethod' {..} =
    mconcat
      [ "/restapis/",
        toBS _umRestAPIId,
        "/resources/",
        toBS _umResourceId,
        "/methods/",
        toBS _umHttpMethod
      ]

instance ToQuery UpdateMethod where
  toQuery = const mempty
