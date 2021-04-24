{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.UserPoolClientType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.UserPoolClientType where

import Network.AWS.CognitoIdentityProvider.Types.AnalyticsConfigurationType
import Network.AWS.CognitoIdentityProvider.Types.ExplicitAuthFlowsType
import Network.AWS.CognitoIdentityProvider.Types.OAuthFlowType
import Network.AWS.CognitoIdentityProvider.Types.PreventUserExistenceErrorTypes
import Network.AWS.CognitoIdentityProvider.Types.TokenValidityUnitsType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a user pool client.
--
--
--
-- /See:/ 'userPoolClientType' smart constructor.
data UserPoolClientType = UserPoolClientType'
  { _upctLastModifiedDate ::
      !(Maybe POSIX),
    _upctClientSecret ::
      !(Maybe (Sensitive Text)),
    _upctRefreshTokenValidity ::
      !(Maybe Nat),
    _upctClientId ::
      !(Maybe (Sensitive Text)),
    _upctIdTokenValidity ::
      !(Maybe Nat),
    _upctAllowedOAuthScopes ::
      !(Maybe [Text]),
    _upctClientName :: !(Maybe Text),
    _upctAnalyticsConfiguration ::
      !( Maybe
           AnalyticsConfigurationType
       ),
    _upctUserPoolId :: !(Maybe Text),
    _upctReadAttributes ::
      !(Maybe [Text]),
    _upctCreationDate ::
      !(Maybe POSIX),
    _upctLogoutURLs ::
      !(Maybe [Text]),
    _upctWriteAttributes ::
      !(Maybe [Text]),
    _upctSupportedIdentityProviders ::
      !(Maybe [Text]),
    _upctExplicitAuthFlows ::
      !(Maybe [ExplicitAuthFlowsType]),
    _upctDefaultRedirectURI ::
      !(Maybe Text),
    _upctTokenValidityUnits ::
      !(Maybe TokenValidityUnitsType),
    _upctCallbackURLs ::
      !(Maybe [Text]),
    _upctAllowedOAuthFlows ::
      !(Maybe [OAuthFlowType]),
    _upctAccessTokenValidity ::
      !(Maybe Nat),
    _upctPreventUserExistenceErrors ::
      !( Maybe
           PreventUserExistenceErrorTypes
       ),
    _upctAllowedOAuthFlowsUserPoolClient ::
      !(Maybe Bool)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UserPoolClientType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upctLastModifiedDate' - The date the user pool client was last modified.
--
-- * 'upctClientSecret' - The client secret from the user pool request of the client type.
--
-- * 'upctRefreshTokenValidity' - The time limit, in days, after which the refresh token is no longer valid and cannot be used.
--
-- * 'upctClientId' - The ID of the client associated with the user pool.
--
-- * 'upctIdTokenValidity' - The time limit, specified by tokenValidityUnits, defaulting to hours, after which the refresh token is no longer valid and cannot be used.
--
-- * 'upctAllowedOAuthScopes' - The allowed OAuth scopes. Possible values provided by OAuth are: @phone@ , @email@ , @openid@ , and @profile@ . Possible values provided by AWS are: @aws.cognito.signin.user.admin@ . Custom scopes created in Resource Servers are also supported.
--
-- * 'upctClientName' - The client name from the user pool request of the client type.
--
-- * 'upctAnalyticsConfiguration' - The Amazon Pinpoint analytics configuration for the user pool client.
--
-- * 'upctUserPoolId' - The user pool ID for the user pool client.
--
-- * 'upctReadAttributes' - The Read-only attributes.
--
-- * 'upctCreationDate' - The date the user pool client was created.
--
-- * 'upctLogoutURLs' - A list of allowed logout URLs for the identity providers.
--
-- * 'upctWriteAttributes' - The writeable attributes.
--
-- * 'upctSupportedIdentityProviders' - A list of provider names for the identity providers that are supported on this client.
--
-- * 'upctExplicitAuthFlows' - The authentication flows that are supported by the user pool clients. Flow names without the @ALLOW_@ prefix are deprecated in favor of new names with the @ALLOW_@ prefix. Note that values with @ALLOW_@ prefix cannot be used along with values without @ALLOW_@ prefix. Valid values include:     * @ALLOW_ADMIN_USER_PASSWORD_AUTH@ : Enable admin based user password authentication flow @ADMIN_USER_PASSWORD_AUTH@ . This setting replaces the @ADMIN_NO_SRP_AUTH@ setting. With this authentication flow, Cognito receives the password in the request instead of using the SRP (Secure Remote Password protocol) protocol to verify passwords.     * @ALLOW_CUSTOM_AUTH@ : Enable Lambda trigger based authentication.     * @ALLOW_USER_PASSWORD_AUTH@ : Enable user password-based authentication. In this flow, Cognito receives the password in the request instead of using the SRP protocol to verify passwords.     * @ALLOW_USER_SRP_AUTH@ : Enable SRP based authentication.     * @ALLOW_REFRESH_TOKEN_AUTH@ : Enable authflow to refresh tokens.
--
-- * 'upctDefaultRedirectURI' - The default redirect URI. Must be in the @CallbackURLs@ list. A redirect URI must:     * Be an absolute URI.     * Be registered with the authorization server.     * Not include a fragment component. See <https://tools.ietf.org/html/rfc6749#section-3.1.2 OAuth 2.0 - Redirection Endpoint> . Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.
--
-- * 'upctTokenValidityUnits' - The time units used to specify the token validity times of their respective token.
--
-- * 'upctCallbackURLs' - A list of allowed redirect (callback) URLs for the identity providers. A redirect URI must:     * Be an absolute URI.     * Be registered with the authorization server.     * Not include a fragment component. See <https://tools.ietf.org/html/rfc6749#section-3.1.2 OAuth 2.0 - Redirection Endpoint> . Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.
--
-- * 'upctAllowedOAuthFlows' - The allowed OAuth flows. Set to @code@ to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint. Set to @implicit@ to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly. Set to @client_credentials@ to specify that the client should get the access token (and, optionally, ID token, based on scopes) from the token endpoint using a combination of client and client_secret.
--
-- * 'upctAccessTokenValidity' - The time limit, specified by tokenValidityUnits, defaulting to hours, after which the access token is no longer valid and cannot be used.
--
-- * 'upctPreventUserExistenceErrors' - Use this setting to choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to @ENABLED@ and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to @LEGACY@ , those APIs will return a @UserNotFoundException@ exception if the user does not exist in the user pool. Valid values include:     * @ENABLED@ - This prevents user existence-related errors.     * @LEGACY@ - This represents the old behavior of Cognito where user existence related errors are not prevented.
--
-- * 'upctAllowedOAuthFlowsUserPoolClient' - Set to true if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.
userPoolClientType ::
  UserPoolClientType
userPoolClientType =
  UserPoolClientType'
    { _upctLastModifiedDate =
        Nothing,
      _upctClientSecret = Nothing,
      _upctRefreshTokenValidity = Nothing,
      _upctClientId = Nothing,
      _upctIdTokenValidity = Nothing,
      _upctAllowedOAuthScopes = Nothing,
      _upctClientName = Nothing,
      _upctAnalyticsConfiguration = Nothing,
      _upctUserPoolId = Nothing,
      _upctReadAttributes = Nothing,
      _upctCreationDate = Nothing,
      _upctLogoutURLs = Nothing,
      _upctWriteAttributes = Nothing,
      _upctSupportedIdentityProviders = Nothing,
      _upctExplicitAuthFlows = Nothing,
      _upctDefaultRedirectURI = Nothing,
      _upctTokenValidityUnits = Nothing,
      _upctCallbackURLs = Nothing,
      _upctAllowedOAuthFlows = Nothing,
      _upctAccessTokenValidity = Nothing,
      _upctPreventUserExistenceErrors = Nothing,
      _upctAllowedOAuthFlowsUserPoolClient = Nothing
    }

-- | The date the user pool client was last modified.
upctLastModifiedDate :: Lens' UserPoolClientType (Maybe UTCTime)
upctLastModifiedDate = lens _upctLastModifiedDate (\s a -> s {_upctLastModifiedDate = a}) . mapping _Time

-- | The client secret from the user pool request of the client type.
upctClientSecret :: Lens' UserPoolClientType (Maybe Text)
upctClientSecret = lens _upctClientSecret (\s a -> s {_upctClientSecret = a}) . mapping _Sensitive

-- | The time limit, in days, after which the refresh token is no longer valid and cannot be used.
upctRefreshTokenValidity :: Lens' UserPoolClientType (Maybe Natural)
upctRefreshTokenValidity = lens _upctRefreshTokenValidity (\s a -> s {_upctRefreshTokenValidity = a}) . mapping _Nat

-- | The ID of the client associated with the user pool.
upctClientId :: Lens' UserPoolClientType (Maybe Text)
upctClientId = lens _upctClientId (\s a -> s {_upctClientId = a}) . mapping _Sensitive

-- | The time limit, specified by tokenValidityUnits, defaulting to hours, after which the refresh token is no longer valid and cannot be used.
upctIdTokenValidity :: Lens' UserPoolClientType (Maybe Natural)
upctIdTokenValidity = lens _upctIdTokenValidity (\s a -> s {_upctIdTokenValidity = a}) . mapping _Nat

-- | The allowed OAuth scopes. Possible values provided by OAuth are: @phone@ , @email@ , @openid@ , and @profile@ . Possible values provided by AWS are: @aws.cognito.signin.user.admin@ . Custom scopes created in Resource Servers are also supported.
upctAllowedOAuthScopes :: Lens' UserPoolClientType [Text]
upctAllowedOAuthScopes = lens _upctAllowedOAuthScopes (\s a -> s {_upctAllowedOAuthScopes = a}) . _Default . _Coerce

-- | The client name from the user pool request of the client type.
upctClientName :: Lens' UserPoolClientType (Maybe Text)
upctClientName = lens _upctClientName (\s a -> s {_upctClientName = a})

-- | The Amazon Pinpoint analytics configuration for the user pool client.
upctAnalyticsConfiguration :: Lens' UserPoolClientType (Maybe AnalyticsConfigurationType)
upctAnalyticsConfiguration = lens _upctAnalyticsConfiguration (\s a -> s {_upctAnalyticsConfiguration = a})

-- | The user pool ID for the user pool client.
upctUserPoolId :: Lens' UserPoolClientType (Maybe Text)
upctUserPoolId = lens _upctUserPoolId (\s a -> s {_upctUserPoolId = a})

-- | The Read-only attributes.
upctReadAttributes :: Lens' UserPoolClientType [Text]
upctReadAttributes = lens _upctReadAttributes (\s a -> s {_upctReadAttributes = a}) . _Default . _Coerce

-- | The date the user pool client was created.
upctCreationDate :: Lens' UserPoolClientType (Maybe UTCTime)
upctCreationDate = lens _upctCreationDate (\s a -> s {_upctCreationDate = a}) . mapping _Time

-- | A list of allowed logout URLs for the identity providers.
upctLogoutURLs :: Lens' UserPoolClientType [Text]
upctLogoutURLs = lens _upctLogoutURLs (\s a -> s {_upctLogoutURLs = a}) . _Default . _Coerce

-- | The writeable attributes.
upctWriteAttributes :: Lens' UserPoolClientType [Text]
upctWriteAttributes = lens _upctWriteAttributes (\s a -> s {_upctWriteAttributes = a}) . _Default . _Coerce

-- | A list of provider names for the identity providers that are supported on this client.
upctSupportedIdentityProviders :: Lens' UserPoolClientType [Text]
upctSupportedIdentityProviders = lens _upctSupportedIdentityProviders (\s a -> s {_upctSupportedIdentityProviders = a}) . _Default . _Coerce

-- | The authentication flows that are supported by the user pool clients. Flow names without the @ALLOW_@ prefix are deprecated in favor of new names with the @ALLOW_@ prefix. Note that values with @ALLOW_@ prefix cannot be used along with values without @ALLOW_@ prefix. Valid values include:     * @ALLOW_ADMIN_USER_PASSWORD_AUTH@ : Enable admin based user password authentication flow @ADMIN_USER_PASSWORD_AUTH@ . This setting replaces the @ADMIN_NO_SRP_AUTH@ setting. With this authentication flow, Cognito receives the password in the request instead of using the SRP (Secure Remote Password protocol) protocol to verify passwords.     * @ALLOW_CUSTOM_AUTH@ : Enable Lambda trigger based authentication.     * @ALLOW_USER_PASSWORD_AUTH@ : Enable user password-based authentication. In this flow, Cognito receives the password in the request instead of using the SRP protocol to verify passwords.     * @ALLOW_USER_SRP_AUTH@ : Enable SRP based authentication.     * @ALLOW_REFRESH_TOKEN_AUTH@ : Enable authflow to refresh tokens.
upctExplicitAuthFlows :: Lens' UserPoolClientType [ExplicitAuthFlowsType]
upctExplicitAuthFlows = lens _upctExplicitAuthFlows (\s a -> s {_upctExplicitAuthFlows = a}) . _Default . _Coerce

-- | The default redirect URI. Must be in the @CallbackURLs@ list. A redirect URI must:     * Be an absolute URI.     * Be registered with the authorization server.     * Not include a fragment component. See <https://tools.ietf.org/html/rfc6749#section-3.1.2 OAuth 2.0 - Redirection Endpoint> . Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.
upctDefaultRedirectURI :: Lens' UserPoolClientType (Maybe Text)
upctDefaultRedirectURI = lens _upctDefaultRedirectURI (\s a -> s {_upctDefaultRedirectURI = a})

-- | The time units used to specify the token validity times of their respective token.
upctTokenValidityUnits :: Lens' UserPoolClientType (Maybe TokenValidityUnitsType)
upctTokenValidityUnits = lens _upctTokenValidityUnits (\s a -> s {_upctTokenValidityUnits = a})

-- | A list of allowed redirect (callback) URLs for the identity providers. A redirect URI must:     * Be an absolute URI.     * Be registered with the authorization server.     * Not include a fragment component. See <https://tools.ietf.org/html/rfc6749#section-3.1.2 OAuth 2.0 - Redirection Endpoint> . Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.
upctCallbackURLs :: Lens' UserPoolClientType [Text]
upctCallbackURLs = lens _upctCallbackURLs (\s a -> s {_upctCallbackURLs = a}) . _Default . _Coerce

-- | The allowed OAuth flows. Set to @code@ to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint. Set to @implicit@ to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly. Set to @client_credentials@ to specify that the client should get the access token (and, optionally, ID token, based on scopes) from the token endpoint using a combination of client and client_secret.
upctAllowedOAuthFlows :: Lens' UserPoolClientType [OAuthFlowType]
upctAllowedOAuthFlows = lens _upctAllowedOAuthFlows (\s a -> s {_upctAllowedOAuthFlows = a}) . _Default . _Coerce

-- | The time limit, specified by tokenValidityUnits, defaulting to hours, after which the access token is no longer valid and cannot be used.
upctAccessTokenValidity :: Lens' UserPoolClientType (Maybe Natural)
upctAccessTokenValidity = lens _upctAccessTokenValidity (\s a -> s {_upctAccessTokenValidity = a}) . mapping _Nat

-- | Use this setting to choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to @ENABLED@ and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to @LEGACY@ , those APIs will return a @UserNotFoundException@ exception if the user does not exist in the user pool. Valid values include:     * @ENABLED@ - This prevents user existence-related errors.     * @LEGACY@ - This represents the old behavior of Cognito where user existence related errors are not prevented.
upctPreventUserExistenceErrors :: Lens' UserPoolClientType (Maybe PreventUserExistenceErrorTypes)
upctPreventUserExistenceErrors = lens _upctPreventUserExistenceErrors (\s a -> s {_upctPreventUserExistenceErrors = a})

-- | Set to true if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.
upctAllowedOAuthFlowsUserPoolClient :: Lens' UserPoolClientType (Maybe Bool)
upctAllowedOAuthFlowsUserPoolClient = lens _upctAllowedOAuthFlowsUserPoolClient (\s a -> s {_upctAllowedOAuthFlowsUserPoolClient = a})

instance FromJSON UserPoolClientType where
  parseJSON =
    withObject
      "UserPoolClientType"
      ( \x ->
          UserPoolClientType'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ClientSecret")
            <*> (x .:? "RefreshTokenValidity")
            <*> (x .:? "ClientId")
            <*> (x .:? "IdTokenValidity")
            <*> (x .:? "AllowedOAuthScopes" .!= mempty)
            <*> (x .:? "ClientName")
            <*> (x .:? "AnalyticsConfiguration")
            <*> (x .:? "UserPoolId")
            <*> (x .:? "ReadAttributes" .!= mempty)
            <*> (x .:? "CreationDate")
            <*> (x .:? "LogoutURLs" .!= mempty)
            <*> (x .:? "WriteAttributes" .!= mempty)
            <*> (x .:? "SupportedIdentityProviders" .!= mempty)
            <*> (x .:? "ExplicitAuthFlows" .!= mempty)
            <*> (x .:? "DefaultRedirectURI")
            <*> (x .:? "TokenValidityUnits")
            <*> (x .:? "CallbackURLs" .!= mempty)
            <*> (x .:? "AllowedOAuthFlows" .!= mempty)
            <*> (x .:? "AccessTokenValidity")
            <*> (x .:? "PreventUserExistenceErrors")
            <*> (x .:? "AllowedOAuthFlowsUserPoolClient")
      )

instance Hashable UserPoolClientType

instance NFData UserPoolClientType
