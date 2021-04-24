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
-- Module      : Network.AWS.CognitoIdentity.UpdateIdentityPool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an identity pool.
--
--
-- You must use AWS Developer credentials to call this API.
module Network.AWS.CognitoIdentity.UpdateIdentityPool
  ( -- * Creating a Request
    updateIdentityPool,
    UpdateIdentityPool,

    -- * Request Lenses
    uipAllowClassicFlow,
    uipSamlProviderARNs,
    uipIdentityPoolTags,
    uipOpenIdConnectProviderARNs,
    uipSupportedLoginProviders,
    uipCognitoIdentityProviders,
    uipDeveloperProviderName,
    uipIdentityPoolId,
    uipIdentityPoolName,
    uipAllowUnauthenticatedIdentities,

    -- * Destructuring the Response
    identityPool,
    IdentityPool,

    -- * Response Lenses
    ipAllowClassicFlow,
    ipSamlProviderARNs,
    ipIdentityPoolTags,
    ipOpenIdConnectProviderARNs,
    ipSupportedLoginProviders,
    ipCognitoIdentityProviders,
    ipDeveloperProviderName,
    ipIdentityPoolId,
    ipIdentityPoolName,
    ipAllowUnauthenticatedIdentities,
  )
where

import Network.AWS.CognitoIdentity.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | An object representing an Amazon Cognito identity pool.
--
--
--
-- /See:/ 'updateIdentityPool' smart constructor.
data UpdateIdentityPool = UpdateIdentityPool'
  { _uipAllowClassicFlow ::
      !(Maybe Bool),
    _uipSamlProviderARNs ::
      !(Maybe [Text]),
    _uipIdentityPoolTags ::
      !(Maybe (Map Text Text)),
    _uipOpenIdConnectProviderARNs ::
      !(Maybe [Text]),
    _uipSupportedLoginProviders ::
      !(Maybe (Map Text Text)),
    _uipCognitoIdentityProviders ::
      !( Maybe
           [CognitoIdentityProvider]
       ),
    _uipDeveloperProviderName ::
      !(Maybe Text),
    _uipIdentityPoolId :: !Text,
    _uipIdentityPoolName :: !Text,
    _uipAllowUnauthenticatedIdentities ::
      !Bool
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateIdentityPool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uipAllowClassicFlow' - Enables or disables the Basic (Classic) authentication flow. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html Identity Pools (Federated Identities) Authentication Flow> in the /Amazon Cognito Developer Guide/ .
--
-- * 'uipSamlProviderARNs' - An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
--
-- * 'uipIdentityPoolTags' - The tags that are assigned to the identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria.
--
-- * 'uipOpenIdConnectProviderARNs' - The ARNs of the OpenID Connect providers.
--
-- * 'uipSupportedLoginProviders' - Optional key:value pairs mapping provider names to provider app IDs.
--
-- * 'uipCognitoIdentityProviders' - A list representing an Amazon Cognito user pool and its client ID.
--
-- * 'uipDeveloperProviderName' - The "domain" by which Cognito will refer to your users.
--
-- * 'uipIdentityPoolId' - An identity pool ID in the format REGION:GUID.
--
-- * 'uipIdentityPoolName' - A string that you provide.
--
-- * 'uipAllowUnauthenticatedIdentities' - TRUE if the identity pool supports unauthenticated logins.
updateIdentityPool ::
  -- | 'uipIdentityPoolId'
  Text ->
  -- | 'uipIdentityPoolName'
  Text ->
  -- | 'uipAllowUnauthenticatedIdentities'
  Bool ->
  UpdateIdentityPool
updateIdentityPool
  pIdentityPoolId_
  pIdentityPoolName_
  pAllowUnauthenticatedIdentities_ =
    UpdateIdentityPool'
      { _uipAllowClassicFlow = Nothing,
        _uipSamlProviderARNs = Nothing,
        _uipIdentityPoolTags = Nothing,
        _uipOpenIdConnectProviderARNs = Nothing,
        _uipSupportedLoginProviders = Nothing,
        _uipCognitoIdentityProviders = Nothing,
        _uipDeveloperProviderName = Nothing,
        _uipIdentityPoolId = pIdentityPoolId_,
        _uipIdentityPoolName = pIdentityPoolName_,
        _uipAllowUnauthenticatedIdentities =
          pAllowUnauthenticatedIdentities_
      }

-- | Enables or disables the Basic (Classic) authentication flow. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html Identity Pools (Federated Identities) Authentication Flow> in the /Amazon Cognito Developer Guide/ .
uipAllowClassicFlow :: Lens' UpdateIdentityPool (Maybe Bool)
uipAllowClassicFlow = lens _uipAllowClassicFlow (\s a -> s {_uipAllowClassicFlow = a})

-- | An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.
uipSamlProviderARNs :: Lens' UpdateIdentityPool [Text]
uipSamlProviderARNs = lens _uipSamlProviderARNs (\s a -> s {_uipSamlProviderARNs = a}) . _Default . _Coerce

-- | The tags that are assigned to the identity pool. A tag is a label that you can apply to identity pools to categorize and manage them in different ways, such as by purpose, owner, environment, or other criteria.
uipIdentityPoolTags :: Lens' UpdateIdentityPool (HashMap Text Text)
uipIdentityPoolTags = lens _uipIdentityPoolTags (\s a -> s {_uipIdentityPoolTags = a}) . _Default . _Map

-- | The ARNs of the OpenID Connect providers.
uipOpenIdConnectProviderARNs :: Lens' UpdateIdentityPool [Text]
uipOpenIdConnectProviderARNs = lens _uipOpenIdConnectProviderARNs (\s a -> s {_uipOpenIdConnectProviderARNs = a}) . _Default . _Coerce

-- | Optional key:value pairs mapping provider names to provider app IDs.
uipSupportedLoginProviders :: Lens' UpdateIdentityPool (HashMap Text Text)
uipSupportedLoginProviders = lens _uipSupportedLoginProviders (\s a -> s {_uipSupportedLoginProviders = a}) . _Default . _Map

-- | A list representing an Amazon Cognito user pool and its client ID.
uipCognitoIdentityProviders :: Lens' UpdateIdentityPool [CognitoIdentityProvider]
uipCognitoIdentityProviders = lens _uipCognitoIdentityProviders (\s a -> s {_uipCognitoIdentityProviders = a}) . _Default . _Coerce

-- | The "domain" by which Cognito will refer to your users.
uipDeveloperProviderName :: Lens' UpdateIdentityPool (Maybe Text)
uipDeveloperProviderName = lens _uipDeveloperProviderName (\s a -> s {_uipDeveloperProviderName = a})

-- | An identity pool ID in the format REGION:GUID.
uipIdentityPoolId :: Lens' UpdateIdentityPool Text
uipIdentityPoolId = lens _uipIdentityPoolId (\s a -> s {_uipIdentityPoolId = a})

-- | A string that you provide.
uipIdentityPoolName :: Lens' UpdateIdentityPool Text
uipIdentityPoolName = lens _uipIdentityPoolName (\s a -> s {_uipIdentityPoolName = a})

-- | TRUE if the identity pool supports unauthenticated logins.
uipAllowUnauthenticatedIdentities :: Lens' UpdateIdentityPool Bool
uipAllowUnauthenticatedIdentities = lens _uipAllowUnauthenticatedIdentities (\s a -> s {_uipAllowUnauthenticatedIdentities = a})

instance AWSRequest UpdateIdentityPool where
  type Rs UpdateIdentityPool = IdentityPool
  request = postJSON cognitoIdentity
  response = receiveJSON (\s h x -> eitherParseJSON x)

instance Hashable UpdateIdentityPool

instance NFData UpdateIdentityPool

instance ToHeaders UpdateIdentityPool where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityService.UpdateIdentityPool" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateIdentityPool where
  toJSON UpdateIdentityPool' {..} =
    object
      ( catMaybes
          [ ("AllowClassicFlow" .=) <$> _uipAllowClassicFlow,
            ("SamlProviderARNs" .=) <$> _uipSamlProviderARNs,
            ("IdentityPoolTags" .=) <$> _uipIdentityPoolTags,
            ("OpenIdConnectProviderARNs" .=)
              <$> _uipOpenIdConnectProviderARNs,
            ("SupportedLoginProviders" .=)
              <$> _uipSupportedLoginProviders,
            ("CognitoIdentityProviders" .=)
              <$> _uipCognitoIdentityProviders,
            ("DeveloperProviderName" .=)
              <$> _uipDeveloperProviderName,
            Just ("IdentityPoolId" .= _uipIdentityPoolId),
            Just ("IdentityPoolName" .= _uipIdentityPoolName),
            Just
              ( "AllowUnauthenticatedIdentities"
                  .= _uipAllowUnauthenticatedIdentities
              )
          ]
      )

instance ToPath UpdateIdentityPool where
  toPath = const "/"

instance ToQuery UpdateIdentityPool where
  toQuery = const mempty
