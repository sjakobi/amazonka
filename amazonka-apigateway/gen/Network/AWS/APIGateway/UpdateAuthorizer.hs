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
-- Module      : Network.AWS.APIGateway.UpdateAuthorizer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing 'Authorizer' resource.
--
--
-- <https://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html AWS CLI>
module Network.AWS.APIGateway.UpdateAuthorizer
  ( -- * Creating a Request
    updateAuthorizer,
    UpdateAuthorizer,

    -- * Request Lenses
    updPatchOperations,
    updRestAPIId,
    updAuthorizerId,

    -- * Destructuring the Response
    authorizer,
    Authorizer,

    -- * Response Lenses
    aIdentityValidationExpression,
    aAuthorizerCredentials,
    aId,
    aName,
    aProviderARNs,
    aAuthorizerURI,
    aIdentitySource,
    aType,
    aAuthType,
    aAuthorizerResultTtlInSeconds,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Request to update an existing 'Authorizer' resource.
--
--
--
-- /See:/ 'updateAuthorizer' smart constructor.
data UpdateAuthorizer = UpdateAuthorizer'
  { _updPatchOperations ::
      !(Maybe [PatchOperation]),
    _updRestAPIId :: !Text,
    _updAuthorizerId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAuthorizer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updPatchOperations' - A list of update operations to be applied to the specified resource and in the order specified in this list.
--
-- * 'updRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'updAuthorizerId' - [Required] The identifier of the 'Authorizer' resource.
updateAuthorizer ::
  -- | 'updRestAPIId'
  Text ->
  -- | 'updAuthorizerId'
  Text ->
  UpdateAuthorizer
updateAuthorizer pRestAPIId_ pAuthorizerId_ =
  UpdateAuthorizer'
    { _updPatchOperations = Nothing,
      _updRestAPIId = pRestAPIId_,
      _updAuthorizerId = pAuthorizerId_
    }

-- | A list of update operations to be applied to the specified resource and in the order specified in this list.
updPatchOperations :: Lens' UpdateAuthorizer [PatchOperation]
updPatchOperations = lens _updPatchOperations (\s a -> s {_updPatchOperations = a}) . _Default . _Coerce

-- | [Required] The string identifier of the associated 'RestApi' .
updRestAPIId :: Lens' UpdateAuthorizer Text
updRestAPIId = lens _updRestAPIId (\s a -> s {_updRestAPIId = a})

-- | [Required] The identifier of the 'Authorizer' resource.
updAuthorizerId :: Lens' UpdateAuthorizer Text
updAuthorizerId = lens _updAuthorizerId (\s a -> s {_updAuthorizerId = a})

instance AWSRequest UpdateAuthorizer where
  type Rs UpdateAuthorizer = Authorizer
  request = patchJSON apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable UpdateAuthorizer

instance NFData UpdateAuthorizer

instance ToHeaders UpdateAuthorizer where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToJSON UpdateAuthorizer where
  toJSON UpdateAuthorizer' {..} =
    object
      ( catMaybes
          [("patchOperations" .=) <$> _updPatchOperations]
      )

instance ToPath UpdateAuthorizer where
  toPath UpdateAuthorizer' {..} =
    mconcat
      [ "/restapis/",
        toBS _updRestAPIId,
        "/authorizers/",
        toBS _updAuthorizerId
      ]

instance ToQuery UpdateAuthorizer where
  toQuery = const mempty
