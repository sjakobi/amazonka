{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.AuthenticateOidcActionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.AuthenticateOidcActionConfig where

import Network.AWS.ELBv2.Types.AuthenticateOidcActionConditionalBehaviorEnum
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Request parameters when using an identity provider (IdP) that is compliant with OpenID Connect (OIDC) to authenticate users.
--
--
--
-- /See:/ 'authenticateOidcActionConfig' smart constructor.
data AuthenticateOidcActionConfig = AuthenticateOidcActionConfig'
  { _aoacUseExistingClientSecret ::
      !(Maybe Bool),
    _aoacClientSecret ::
      !(Maybe Text),
    _aoacSessionTimeout ::
      !( Maybe
           Integer
       ),
    _aoacScope ::
      !(Maybe Text),
    _aoacAuthenticationRequestExtraParams ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _aoacSessionCookieName ::
      !(Maybe Text),
    _aoacOnUnauthenticatedRequest ::
      !( Maybe
           AuthenticateOidcActionConditionalBehaviorEnum
       ),
    _aoacIssuer ::
      !Text,
    _aoacAuthorizationEndpoint ::
      !Text,
    _aoacTokenEndpoint ::
      !Text,
    _aoacUserInfoEndpoint ::
      !Text,
    _aoacClientId ::
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

-- | Creates a value of 'AuthenticateOidcActionConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoacUseExistingClientSecret' - Indicates whether to use the existing client secret when modifying a rule. If you are creating a rule, you can omit this parameter or set it to false.
--
-- * 'aoacClientSecret' - The OAuth 2.0 client secret. This parameter is required if you are creating a rule. If you are modifying a rule, you can omit this parameter if you set @UseExistingClientSecret@ to true.
--
-- * 'aoacSessionTimeout' - The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).
--
-- * 'aoacScope' - The set of user claims to be requested from the IdP. The default is @openid@ . To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.
--
-- * 'aoacAuthenticationRequestExtraParams' - The query parameters (up to 10) to include in the redirect request to the authorization endpoint.
--
-- * 'aoacSessionCookieName' - The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.
--
-- * 'aoacOnUnauthenticatedRequest' - The behavior if the user is not authenticated. The following are possible values:     * deny- Return an HTTP 401 Unauthorized error.     * allow- Allow the request to be forwarded to the target.     * authenticate- Redirect the request to the IdP authorization endpoint. This is the default value.
--
-- * 'aoacIssuer' - The OIDC issuer identifier of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
--
-- * 'aoacAuthorizationEndpoint' - The authorization endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
--
-- * 'aoacTokenEndpoint' - The token endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
--
-- * 'aoacUserInfoEndpoint' - The user info endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
--
-- * 'aoacClientId' - The OAuth 2.0 client identifier.
authenticateOidcActionConfig ::
  -- | 'aoacIssuer'
  Text ->
  -- | 'aoacAuthorizationEndpoint'
  Text ->
  -- | 'aoacTokenEndpoint'
  Text ->
  -- | 'aoacUserInfoEndpoint'
  Text ->
  -- | 'aoacClientId'
  Text ->
  AuthenticateOidcActionConfig
authenticateOidcActionConfig
  pIssuer_
  pAuthorizationEndpoint_
  pTokenEndpoint_
  pUserInfoEndpoint_
  pClientId_ =
    AuthenticateOidcActionConfig'
      { _aoacUseExistingClientSecret =
          Nothing,
        _aoacClientSecret = Nothing,
        _aoacSessionTimeout = Nothing,
        _aoacScope = Nothing,
        _aoacAuthenticationRequestExtraParams =
          Nothing,
        _aoacSessionCookieName = Nothing,
        _aoacOnUnauthenticatedRequest = Nothing,
        _aoacIssuer = pIssuer_,
        _aoacAuthorizationEndpoint =
          pAuthorizationEndpoint_,
        _aoacTokenEndpoint = pTokenEndpoint_,
        _aoacUserInfoEndpoint = pUserInfoEndpoint_,
        _aoacClientId = pClientId_
      }

-- | Indicates whether to use the existing client secret when modifying a rule. If you are creating a rule, you can omit this parameter or set it to false.
aoacUseExistingClientSecret :: Lens' AuthenticateOidcActionConfig (Maybe Bool)
aoacUseExistingClientSecret = lens _aoacUseExistingClientSecret (\s a -> s {_aoacUseExistingClientSecret = a})

-- | The OAuth 2.0 client secret. This parameter is required if you are creating a rule. If you are modifying a rule, you can omit this parameter if you set @UseExistingClientSecret@ to true.
aoacClientSecret :: Lens' AuthenticateOidcActionConfig (Maybe Text)
aoacClientSecret = lens _aoacClientSecret (\s a -> s {_aoacClientSecret = a})

-- | The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).
aoacSessionTimeout :: Lens' AuthenticateOidcActionConfig (Maybe Integer)
aoacSessionTimeout = lens _aoacSessionTimeout (\s a -> s {_aoacSessionTimeout = a})

-- | The set of user claims to be requested from the IdP. The default is @openid@ . To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.
aoacScope :: Lens' AuthenticateOidcActionConfig (Maybe Text)
aoacScope = lens _aoacScope (\s a -> s {_aoacScope = a})

-- | The query parameters (up to 10) to include in the redirect request to the authorization endpoint.
aoacAuthenticationRequestExtraParams :: Lens' AuthenticateOidcActionConfig (HashMap Text Text)
aoacAuthenticationRequestExtraParams = lens _aoacAuthenticationRequestExtraParams (\s a -> s {_aoacAuthenticationRequestExtraParams = a}) . _Default . _Map

-- | The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.
aoacSessionCookieName :: Lens' AuthenticateOidcActionConfig (Maybe Text)
aoacSessionCookieName = lens _aoacSessionCookieName (\s a -> s {_aoacSessionCookieName = a})

-- | The behavior if the user is not authenticated. The following are possible values:     * deny- Return an HTTP 401 Unauthorized error.     * allow- Allow the request to be forwarded to the target.     * authenticate- Redirect the request to the IdP authorization endpoint. This is the default value.
aoacOnUnauthenticatedRequest :: Lens' AuthenticateOidcActionConfig (Maybe AuthenticateOidcActionConditionalBehaviorEnum)
aoacOnUnauthenticatedRequest = lens _aoacOnUnauthenticatedRequest (\s a -> s {_aoacOnUnauthenticatedRequest = a})

-- | The OIDC issuer identifier of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
aoacIssuer :: Lens' AuthenticateOidcActionConfig Text
aoacIssuer = lens _aoacIssuer (\s a -> s {_aoacIssuer = a})

-- | The authorization endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
aoacAuthorizationEndpoint :: Lens' AuthenticateOidcActionConfig Text
aoacAuthorizationEndpoint = lens _aoacAuthorizationEndpoint (\s a -> s {_aoacAuthorizationEndpoint = a})

-- | The token endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
aoacTokenEndpoint :: Lens' AuthenticateOidcActionConfig Text
aoacTokenEndpoint = lens _aoacTokenEndpoint (\s a -> s {_aoacTokenEndpoint = a})

-- | The user info endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the domain, and the path.
aoacUserInfoEndpoint :: Lens' AuthenticateOidcActionConfig Text
aoacUserInfoEndpoint = lens _aoacUserInfoEndpoint (\s a -> s {_aoacUserInfoEndpoint = a})

-- | The OAuth 2.0 client identifier.
aoacClientId :: Lens' AuthenticateOidcActionConfig Text
aoacClientId = lens _aoacClientId (\s a -> s {_aoacClientId = a})

instance FromXML AuthenticateOidcActionConfig where
  parseXML x =
    AuthenticateOidcActionConfig'
      <$> (x .@? "UseExistingClientSecret")
      <*> (x .@? "ClientSecret")
      <*> (x .@? "SessionTimeout")
      <*> (x .@? "Scope")
      <*> ( x .@? "AuthenticationRequestExtraParams" .!@ mempty
              >>= may (parseXMLMap "entry" "key" "value")
          )
      <*> (x .@? "SessionCookieName")
      <*> (x .@? "OnUnauthenticatedRequest")
      <*> (x .@ "Issuer")
      <*> (x .@ "AuthorizationEndpoint")
      <*> (x .@ "TokenEndpoint")
      <*> (x .@ "UserInfoEndpoint")
      <*> (x .@ "ClientId")

instance Hashable AuthenticateOidcActionConfig

instance NFData AuthenticateOidcActionConfig

instance ToQuery AuthenticateOidcActionConfig where
  toQuery AuthenticateOidcActionConfig' {..} =
    mconcat
      [ "UseExistingClientSecret"
          =: _aoacUseExistingClientSecret,
        "ClientSecret" =: _aoacClientSecret,
        "SessionTimeout" =: _aoacSessionTimeout,
        "Scope" =: _aoacScope,
        "AuthenticationRequestExtraParams"
          =: toQuery
            ( toQueryMap "entry" "key" "value"
                <$> _aoacAuthenticationRequestExtraParams
            ),
        "SessionCookieName" =: _aoacSessionCookieName,
        "OnUnauthenticatedRequest"
          =: _aoacOnUnauthenticatedRequest,
        "Issuer" =: _aoacIssuer,
        "AuthorizationEndpoint"
          =: _aoacAuthorizationEndpoint,
        "TokenEndpoint" =: _aoacTokenEndpoint,
        "UserInfoEndpoint" =: _aoacUserInfoEndpoint,
        "ClientId" =: _aoacClientId
      ]
