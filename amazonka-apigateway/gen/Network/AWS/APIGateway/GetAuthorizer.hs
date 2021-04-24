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
-- Module      : Network.AWS.APIGateway.GetAuthorizer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe an existing 'Authorizer' resource.
--
--
-- <https://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html AWS CLI>
module Network.AWS.APIGateway.GetAuthorizer
  ( -- * Creating a Request
    getAuthorizer,
    GetAuthorizer,

    -- * Request Lenses
    gaRestAPIId,
    gaAuthorizerId,

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

-- | Request to describe an existing 'Authorizer' resource.
--
--
--
-- /See:/ 'getAuthorizer' smart constructor.
data GetAuthorizer = GetAuthorizer'
  { _gaRestAPIId ::
      !Text,
    _gaAuthorizerId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetAuthorizer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaRestAPIId' - [Required] The string identifier of the associated 'RestApi' .
--
-- * 'gaAuthorizerId' - [Required] The identifier of the 'Authorizer' resource.
getAuthorizer ::
  -- | 'gaRestAPIId'
  Text ->
  -- | 'gaAuthorizerId'
  Text ->
  GetAuthorizer
getAuthorizer pRestAPIId_ pAuthorizerId_ =
  GetAuthorizer'
    { _gaRestAPIId = pRestAPIId_,
      _gaAuthorizerId = pAuthorizerId_
    }

-- | [Required] The string identifier of the associated 'RestApi' .
gaRestAPIId :: Lens' GetAuthorizer Text
gaRestAPIId = lens _gaRestAPIId (\s a -> s {_gaRestAPIId = a})

-- | [Required] The identifier of the 'Authorizer' resource.
gaAuthorizerId :: Lens' GetAuthorizer Text
gaAuthorizerId = lens _gaAuthorizerId (\s a -> s {_gaAuthorizerId = a})

instance AWSRequest GetAuthorizer where
  type Rs GetAuthorizer = Authorizer
  request = get apiGateway
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable GetAuthorizer

instance NFData GetAuthorizer

instance ToHeaders GetAuthorizer where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetAuthorizer where
  toPath GetAuthorizer' {..} =
    mconcat
      [ "/restapis/",
        toBS _gaRestAPIId,
        "/authorizers/",
        toBS _gaAuthorizerId
      ]

instance ToQuery GetAuthorizer where
  toQuery = const mempty
