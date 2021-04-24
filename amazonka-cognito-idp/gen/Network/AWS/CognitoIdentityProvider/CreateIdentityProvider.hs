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
-- Module      : Network.AWS.CognitoIdentityProvider.CreateIdentityProvider
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an identity provider for a user pool.
module Network.AWS.CognitoIdentityProvider.CreateIdentityProvider
  ( -- * Creating a Request
    createIdentityProvider,
    CreateIdentityProvider,

    -- * Request Lenses
    cipIdpIdentifiers,
    cipAttributeMapping,
    cipUserPoolId,
    cipProviderName,
    cipProviderType,
    cipProviderDetails,

    -- * Destructuring the Response
    createIdentityProviderResponse,
    CreateIdentityProviderResponse,

    -- * Response Lenses
    ciprrsResponseStatus,
    ciprrsIdentityProvider,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createIdentityProvider' smart constructor.
data CreateIdentityProvider = CreateIdentityProvider'
  { _cipIdpIdentifiers ::
      !(Maybe [Text]),
    _cipAttributeMapping ::
      !(Maybe (Map Text Text)),
    _cipUserPoolId :: !Text,
    _cipProviderName :: !Text,
    _cipProviderType ::
      !IdentityProviderTypeType,
    _cipProviderDetails ::
      !(Map Text Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateIdentityProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cipIdpIdentifiers' - A list of identity provider identifiers.
--
-- * 'cipAttributeMapping' - A mapping of identity provider attributes to standard and custom user pool attributes.
--
-- * 'cipUserPoolId' - The user pool ID.
--
-- * 'cipProviderName' - The identity provider name.
--
-- * 'cipProviderType' - The identity provider type.
--
-- * 'cipProviderDetails' - The identity provider details. The following list describes the provider detail keys for each identity provider type.     * For Google and Login with Amazon:     * client_id     * client_secret     * authorize_scopes     * For Facebook:     * client_id     * client_secret     * authorize_scopes     * api_version     * For Sign in with Apple:     * client_id     * team_id     * key_id     * private_key     * authorize_scopes     * For OIDC providers:     * client_id     * client_secret     * attributes_request_method     * oidc_issuer     * authorize_scopes     * authorize_url /if not available from discovery URL specified by oidc_issuer key/      * token_url /if not available from discovery URL specified by oidc_issuer key/      * attributes_url /if not available from discovery URL specified by oidc_issuer key/      * jwks_uri /if not available from discovery URL specified by oidc_issuer key/      * For SAML providers:     * MetadataFile OR MetadataURL     * IDPSignout /optional/
createIdentityProvider ::
  -- | 'cipUserPoolId'
  Text ->
  -- | 'cipProviderName'
  Text ->
  -- | 'cipProviderType'
  IdentityProviderTypeType ->
  CreateIdentityProvider
createIdentityProvider
  pUserPoolId_
  pProviderName_
  pProviderType_ =
    CreateIdentityProvider'
      { _cipIdpIdentifiers =
          Nothing,
        _cipAttributeMapping = Nothing,
        _cipUserPoolId = pUserPoolId_,
        _cipProviderName = pProviderName_,
        _cipProviderType = pProviderType_,
        _cipProviderDetails = mempty
      }

-- | A list of identity provider identifiers.
cipIdpIdentifiers :: Lens' CreateIdentityProvider [Text]
cipIdpIdentifiers = lens _cipIdpIdentifiers (\s a -> s {_cipIdpIdentifiers = a}) . _Default . _Coerce

-- | A mapping of identity provider attributes to standard and custom user pool attributes.
cipAttributeMapping :: Lens' CreateIdentityProvider (HashMap Text Text)
cipAttributeMapping = lens _cipAttributeMapping (\s a -> s {_cipAttributeMapping = a}) . _Default . _Map

-- | The user pool ID.
cipUserPoolId :: Lens' CreateIdentityProvider Text
cipUserPoolId = lens _cipUserPoolId (\s a -> s {_cipUserPoolId = a})

-- | The identity provider name.
cipProviderName :: Lens' CreateIdentityProvider Text
cipProviderName = lens _cipProviderName (\s a -> s {_cipProviderName = a})

-- | The identity provider type.
cipProviderType :: Lens' CreateIdentityProvider IdentityProviderTypeType
cipProviderType = lens _cipProviderType (\s a -> s {_cipProviderType = a})

-- | The identity provider details. The following list describes the provider detail keys for each identity provider type.     * For Google and Login with Amazon:     * client_id     * client_secret     * authorize_scopes     * For Facebook:     * client_id     * client_secret     * authorize_scopes     * api_version     * For Sign in with Apple:     * client_id     * team_id     * key_id     * private_key     * authorize_scopes     * For OIDC providers:     * client_id     * client_secret     * attributes_request_method     * oidc_issuer     * authorize_scopes     * authorize_url /if not available from discovery URL specified by oidc_issuer key/      * token_url /if not available from discovery URL specified by oidc_issuer key/      * attributes_url /if not available from discovery URL specified by oidc_issuer key/      * jwks_uri /if not available from discovery URL specified by oidc_issuer key/      * For SAML providers:     * MetadataFile OR MetadataURL     * IDPSignout /optional/
cipProviderDetails :: Lens' CreateIdentityProvider (HashMap Text Text)
cipProviderDetails = lens _cipProviderDetails (\s a -> s {_cipProviderDetails = a}) . _Map

instance AWSRequest CreateIdentityProvider where
  type
    Rs CreateIdentityProvider =
      CreateIdentityProviderResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          CreateIdentityProviderResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "IdentityProvider")
      )

instance Hashable CreateIdentityProvider

instance NFData CreateIdentityProvider

instance ToHeaders CreateIdentityProvider where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.CreateIdentityProvider" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateIdentityProvider where
  toJSON CreateIdentityProvider' {..} =
    object
      ( catMaybes
          [ ("IdpIdentifiers" .=) <$> _cipIdpIdentifiers,
            ("AttributeMapping" .=) <$> _cipAttributeMapping,
            Just ("UserPoolId" .= _cipUserPoolId),
            Just ("ProviderName" .= _cipProviderName),
            Just ("ProviderType" .= _cipProviderType),
            Just ("ProviderDetails" .= _cipProviderDetails)
          ]
      )

instance ToPath CreateIdentityProvider where
  toPath = const "/"

instance ToQuery CreateIdentityProvider where
  toQuery = const mempty

-- | /See:/ 'createIdentityProviderResponse' smart constructor.
data CreateIdentityProviderResponse = CreateIdentityProviderResponse'
  { _ciprrsResponseStatus ::
      !Int,
    _ciprrsIdentityProvider ::
      !IdentityProviderType
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateIdentityProviderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciprrsResponseStatus' - -- | The response status code.
--
-- * 'ciprrsIdentityProvider' - The newly created identity provider object.
createIdentityProviderResponse ::
  -- | 'ciprrsResponseStatus'
  Int ->
  -- | 'ciprrsIdentityProvider'
  IdentityProviderType ->
  CreateIdentityProviderResponse
createIdentityProviderResponse
  pResponseStatus_
  pIdentityProvider_ =
    CreateIdentityProviderResponse'
      { _ciprrsResponseStatus =
          pResponseStatus_,
        _ciprrsIdentityProvider =
          pIdentityProvider_
      }

-- | -- | The response status code.
ciprrsResponseStatus :: Lens' CreateIdentityProviderResponse Int
ciprrsResponseStatus = lens _ciprrsResponseStatus (\s a -> s {_ciprrsResponseStatus = a})

-- | The newly created identity provider object.
ciprrsIdentityProvider :: Lens' CreateIdentityProviderResponse IdentityProviderType
ciprrsIdentityProvider = lens _ciprrsIdentityProvider (\s a -> s {_ciprrsIdentityProvider = a})

instance NFData CreateIdentityProviderResponse
