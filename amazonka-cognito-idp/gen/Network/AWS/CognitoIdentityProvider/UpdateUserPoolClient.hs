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
-- Module      : Network.AWS.CognitoIdentityProvider.UpdateUserPoolClient
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified user pool app client with the specified attributes. You can get a list of the current user pool app client settings using <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_DescribeUserPoolClient.html DescribeUserPoolClient> .
--
--
-- /Important:/ If you don't provide a value for an attribute, it will be set to the default value.
module Network.AWS.CognitoIdentityProvider.UpdateUserPoolClient
  ( -- * Creating a Request
    updateUserPoolClient,
    UpdateUserPoolClient,

    -- * Request Lenses
    uupcRefreshTokenValidity,
    uupcIdTokenValidity,
    uupcAllowedOAuthScopes,
    uupcClientName,
    uupcAnalyticsConfiguration,
    uupcReadAttributes,
    uupcLogoutURLs,
    uupcWriteAttributes,
    uupcSupportedIdentityProviders,
    uupcExplicitAuthFlows,
    uupcDefaultRedirectURI,
    uupcTokenValidityUnits,
    uupcCallbackURLs,
    uupcAllowedOAuthFlows,
    uupcAccessTokenValidity,
    uupcPreventUserExistenceErrors,
    uupcAllowedOAuthFlowsUserPoolClient,
    uupcUserPoolId,
    uupcClientId,

    -- * Destructuring the Response
    updateUserPoolClientResponse,
    UpdateUserPoolClientResponse,

    -- * Response Lenses
    uupcrrsUserPoolClient,
    uupcrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to update the user pool client.
--
--
--
-- /See:/ 'updateUserPoolClient' smart constructor.
data UpdateUserPoolClient = UpdateUserPoolClient'
  { _uupcRefreshTokenValidity ::
      !(Maybe Nat),
    _uupcIdTokenValidity ::
      !(Maybe Nat),
    _uupcAllowedOAuthScopes ::
      !(Maybe [Text]),
    _uupcClientName ::
      !(Maybe Text),
    _uupcAnalyticsConfiguration ::
      !( Maybe
           AnalyticsConfigurationType
       ),
    _uupcReadAttributes ::
      !(Maybe [Text]),
    _uupcLogoutURLs ::
      !(Maybe [Text]),
    _uupcWriteAttributes ::
      !(Maybe [Text]),
    _uupcSupportedIdentityProviders ::
      !(Maybe [Text]),
    _uupcExplicitAuthFlows ::
      !( Maybe
           [ExplicitAuthFlowsType]
       ),
    _uupcDefaultRedirectURI ::
      !(Maybe Text),
    _uupcTokenValidityUnits ::
      !( Maybe
           TokenValidityUnitsType
       ),
    _uupcCallbackURLs ::
      !(Maybe [Text]),
    _uupcAllowedOAuthFlows ::
      !(Maybe [OAuthFlowType]),
    _uupcAccessTokenValidity ::
      !(Maybe Nat),
    _uupcPreventUserExistenceErrors ::
      !( Maybe
           PreventUserExistenceErrorTypes
       ),
    _uupcAllowedOAuthFlowsUserPoolClient ::
      !(Maybe Bool),
    _uupcUserPoolId :: !Text,
    _uupcClientId ::
      !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateUserPoolClient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uupcRefreshTokenValidity' - The time limit, in days, after which the refresh token is no longer valid and cannot be used.
--
-- * 'uupcIdTokenValidity' - The time limit, after which the ID token is no longer valid and cannot be used.
--
-- * 'uupcAllowedOAuthScopes' - The allowed OAuth scopes. Possible values provided by OAuth are: @phone@ , @email@ , @openid@ , and @profile@ . Possible values provided by AWS are: @aws.cognito.signin.user.admin@ . Custom scopes created in Resource Servers are also supported.
--
-- * 'uupcClientName' - The client name from the update user pool client request.
--
-- * 'uupcAnalyticsConfiguration' - The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.
--
-- * 'uupcReadAttributes' - The read-only attributes of the user pool.
--
-- * 'uupcLogoutURLs' - A list of allowed logout URLs for the identity providers.
--
-- * 'uupcWriteAttributes' - The writeable attributes of the user pool.
--
-- * 'uupcSupportedIdentityProviders' - A list of provider names for the identity providers that are supported on this client.
--
-- * 'uupcExplicitAuthFlows' - The authentication flows that are supported by the user pool clients. Flow names without the @ALLOW_@ prefix are deprecated in favor of new names with the @ALLOW_@ prefix. Note that values with @ALLOW_@ prefix cannot be used along with values without @ALLOW_@ prefix. Valid values include:     * @ALLOW_ADMIN_USER_PASSWORD_AUTH@ : Enable admin based user password authentication flow @ADMIN_USER_PASSWORD_AUTH@ . This setting replaces the @ADMIN_NO_SRP_AUTH@ setting. With this authentication flow, Cognito receives the password in the request instead of using the SRP (Secure Remote Password protocol) protocol to verify passwords.     * @ALLOW_CUSTOM_AUTH@ : Enable Lambda trigger based authentication.     * @ALLOW_USER_PASSWORD_AUTH@ : Enable user password-based authentication. In this flow, Cognito receives the password in the request instead of using the SRP protocol to verify passwords.     * @ALLOW_USER_SRP_AUTH@ : Enable SRP based authentication.     * @ALLOW_REFRESH_TOKEN_AUTH@ : Enable authflow to refresh tokens.
--
-- * 'uupcDefaultRedirectURI' - The default redirect URI. Must be in the @CallbackURLs@ list. A redirect URI must:     * Be an absolute URI.     * Be registered with the authorization server.     * Not include a fragment component. See <https://tools.ietf.org/html/rfc6749#section-3.1.2 OAuth 2.0 - Redirection Endpoint> . Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.
--
-- * 'uupcTokenValidityUnits' - The units in which the validity times are represented in. Default for RefreshToken is days, and default for ID and access tokens are hours.
--
-- * 'uupcCallbackURLs' - A list of allowed redirect (callback) URLs for the identity providers. A redirect URI must:     * Be an absolute URI.     * Be registered with the authorization server.     * Not include a fragment component. See <https://tools.ietf.org/html/rfc6749#section-3.1.2 OAuth 2.0 - Redirection Endpoint> . Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.
--
-- * 'uupcAllowedOAuthFlows' - The allowed OAuth flows. Set to @code@ to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint. Set to @implicit@ to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly. Set to @client_credentials@ to specify that the client should get the access token (and, optionally, ID token, based on scopes) from the token endpoint using a combination of client and client_secret.
--
-- * 'uupcAccessTokenValidity' - The time limit, after which the access token is no longer valid and cannot be used.
--
-- * 'uupcPreventUserExistenceErrors' - Use this setting to choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to @ENABLED@ and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to @LEGACY@ , those APIs will return a @UserNotFoundException@ exception if the user does not exist in the user pool. Valid values include:     * @ENABLED@ - This prevents user existence-related errors.     * @LEGACY@ - This represents the old behavior of Cognito where user existence related errors are not prevented.
--
-- * 'uupcAllowedOAuthFlowsUserPoolClient' - Set to true if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.
--
-- * 'uupcUserPoolId' - The user pool ID for the user pool where you want to update the user pool client.
--
-- * 'uupcClientId' - The ID of the client associated with the user pool.
updateUserPoolClient ::
  -- | 'uupcUserPoolId'
  Text ->
  -- | 'uupcClientId'
  Text ->
  UpdateUserPoolClient
updateUserPoolClient pUserPoolId_ pClientId_ =
  UpdateUserPoolClient'
    { _uupcRefreshTokenValidity =
        Nothing,
      _uupcIdTokenValidity = Nothing,
      _uupcAllowedOAuthScopes = Nothing,
      _uupcClientName = Nothing,
      _uupcAnalyticsConfiguration = Nothing,
      _uupcReadAttributes = Nothing,
      _uupcLogoutURLs = Nothing,
      _uupcWriteAttributes = Nothing,
      _uupcSupportedIdentityProviders = Nothing,
      _uupcExplicitAuthFlows = Nothing,
      _uupcDefaultRedirectURI = Nothing,
      _uupcTokenValidityUnits = Nothing,
      _uupcCallbackURLs = Nothing,
      _uupcAllowedOAuthFlows = Nothing,
      _uupcAccessTokenValidity = Nothing,
      _uupcPreventUserExistenceErrors = Nothing,
      _uupcAllowedOAuthFlowsUserPoolClient = Nothing,
      _uupcUserPoolId = pUserPoolId_,
      _uupcClientId = _Sensitive # pClientId_
    }

-- | The time limit, in days, after which the refresh token is no longer valid and cannot be used.
uupcRefreshTokenValidity :: Lens' UpdateUserPoolClient (Maybe Natural)
uupcRefreshTokenValidity = lens _uupcRefreshTokenValidity (\s a -> s {_uupcRefreshTokenValidity = a}) . mapping _Nat

-- | The time limit, after which the ID token is no longer valid and cannot be used.
uupcIdTokenValidity :: Lens' UpdateUserPoolClient (Maybe Natural)
uupcIdTokenValidity = lens _uupcIdTokenValidity (\s a -> s {_uupcIdTokenValidity = a}) . mapping _Nat

-- | The allowed OAuth scopes. Possible values provided by OAuth are: @phone@ , @email@ , @openid@ , and @profile@ . Possible values provided by AWS are: @aws.cognito.signin.user.admin@ . Custom scopes created in Resource Servers are also supported.
uupcAllowedOAuthScopes :: Lens' UpdateUserPoolClient [Text]
uupcAllowedOAuthScopes = lens _uupcAllowedOAuthScopes (\s a -> s {_uupcAllowedOAuthScopes = a}) . _Default . _Coerce

-- | The client name from the update user pool client request.
uupcClientName :: Lens' UpdateUserPoolClient (Maybe Text)
uupcClientName = lens _uupcClientName (\s a -> s {_uupcClientName = a})

-- | The Amazon Pinpoint analytics configuration for collecting metrics for this user pool.
uupcAnalyticsConfiguration :: Lens' UpdateUserPoolClient (Maybe AnalyticsConfigurationType)
uupcAnalyticsConfiguration = lens _uupcAnalyticsConfiguration (\s a -> s {_uupcAnalyticsConfiguration = a})

-- | The read-only attributes of the user pool.
uupcReadAttributes :: Lens' UpdateUserPoolClient [Text]
uupcReadAttributes = lens _uupcReadAttributes (\s a -> s {_uupcReadAttributes = a}) . _Default . _Coerce

-- | A list of allowed logout URLs for the identity providers.
uupcLogoutURLs :: Lens' UpdateUserPoolClient [Text]
uupcLogoutURLs = lens _uupcLogoutURLs (\s a -> s {_uupcLogoutURLs = a}) . _Default . _Coerce

-- | The writeable attributes of the user pool.
uupcWriteAttributes :: Lens' UpdateUserPoolClient [Text]
uupcWriteAttributes = lens _uupcWriteAttributes (\s a -> s {_uupcWriteAttributes = a}) . _Default . _Coerce

-- | A list of provider names for the identity providers that are supported on this client.
uupcSupportedIdentityProviders :: Lens' UpdateUserPoolClient [Text]
uupcSupportedIdentityProviders = lens _uupcSupportedIdentityProviders (\s a -> s {_uupcSupportedIdentityProviders = a}) . _Default . _Coerce

-- | The authentication flows that are supported by the user pool clients. Flow names without the @ALLOW_@ prefix are deprecated in favor of new names with the @ALLOW_@ prefix. Note that values with @ALLOW_@ prefix cannot be used along with values without @ALLOW_@ prefix. Valid values include:     * @ALLOW_ADMIN_USER_PASSWORD_AUTH@ : Enable admin based user password authentication flow @ADMIN_USER_PASSWORD_AUTH@ . This setting replaces the @ADMIN_NO_SRP_AUTH@ setting. With this authentication flow, Cognito receives the password in the request instead of using the SRP (Secure Remote Password protocol) protocol to verify passwords.     * @ALLOW_CUSTOM_AUTH@ : Enable Lambda trigger based authentication.     * @ALLOW_USER_PASSWORD_AUTH@ : Enable user password-based authentication. In this flow, Cognito receives the password in the request instead of using the SRP protocol to verify passwords.     * @ALLOW_USER_SRP_AUTH@ : Enable SRP based authentication.     * @ALLOW_REFRESH_TOKEN_AUTH@ : Enable authflow to refresh tokens.
uupcExplicitAuthFlows :: Lens' UpdateUserPoolClient [ExplicitAuthFlowsType]
uupcExplicitAuthFlows = lens _uupcExplicitAuthFlows (\s a -> s {_uupcExplicitAuthFlows = a}) . _Default . _Coerce

-- | The default redirect URI. Must be in the @CallbackURLs@ list. A redirect URI must:     * Be an absolute URI.     * Be registered with the authorization server.     * Not include a fragment component. See <https://tools.ietf.org/html/rfc6749#section-3.1.2 OAuth 2.0 - Redirection Endpoint> . Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.
uupcDefaultRedirectURI :: Lens' UpdateUserPoolClient (Maybe Text)
uupcDefaultRedirectURI = lens _uupcDefaultRedirectURI (\s a -> s {_uupcDefaultRedirectURI = a})

-- | The units in which the validity times are represented in. Default for RefreshToken is days, and default for ID and access tokens are hours.
uupcTokenValidityUnits :: Lens' UpdateUserPoolClient (Maybe TokenValidityUnitsType)
uupcTokenValidityUnits = lens _uupcTokenValidityUnits (\s a -> s {_uupcTokenValidityUnits = a})

-- | A list of allowed redirect (callback) URLs for the identity providers. A redirect URI must:     * Be an absolute URI.     * Be registered with the authorization server.     * Not include a fragment component. See <https://tools.ietf.org/html/rfc6749#section-3.1.2 OAuth 2.0 - Redirection Endpoint> . Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes only. App callback URLs such as myapp://example are also supported.
uupcCallbackURLs :: Lens' UpdateUserPoolClient [Text]
uupcCallbackURLs = lens _uupcCallbackURLs (\s a -> s {_uupcCallbackURLs = a}) . _Default . _Coerce

-- | The allowed OAuth flows. Set to @code@ to initiate a code grant flow, which provides an authorization code as the response. This code can be exchanged for access tokens with the token endpoint. Set to @implicit@ to specify that the client should get the access token (and, optionally, ID token, based on scopes) directly. Set to @client_credentials@ to specify that the client should get the access token (and, optionally, ID token, based on scopes) from the token endpoint using a combination of client and client_secret.
uupcAllowedOAuthFlows :: Lens' UpdateUserPoolClient [OAuthFlowType]
uupcAllowedOAuthFlows = lens _uupcAllowedOAuthFlows (\s a -> s {_uupcAllowedOAuthFlows = a}) . _Default . _Coerce

-- | The time limit, after which the access token is no longer valid and cannot be used.
uupcAccessTokenValidity :: Lens' UpdateUserPoolClient (Maybe Natural)
uupcAccessTokenValidity = lens _uupcAccessTokenValidity (\s a -> s {_uupcAccessTokenValidity = a}) . mapping _Nat

-- | Use this setting to choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to @ENABLED@ and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to @LEGACY@ , those APIs will return a @UserNotFoundException@ exception if the user does not exist in the user pool. Valid values include:     * @ENABLED@ - This prevents user existence-related errors.     * @LEGACY@ - This represents the old behavior of Cognito where user existence related errors are not prevented.
uupcPreventUserExistenceErrors :: Lens' UpdateUserPoolClient (Maybe PreventUserExistenceErrorTypes)
uupcPreventUserExistenceErrors = lens _uupcPreventUserExistenceErrors (\s a -> s {_uupcPreventUserExistenceErrors = a})

-- | Set to true if the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.
uupcAllowedOAuthFlowsUserPoolClient :: Lens' UpdateUserPoolClient (Maybe Bool)
uupcAllowedOAuthFlowsUserPoolClient = lens _uupcAllowedOAuthFlowsUserPoolClient (\s a -> s {_uupcAllowedOAuthFlowsUserPoolClient = a})

-- | The user pool ID for the user pool where you want to update the user pool client.
uupcUserPoolId :: Lens' UpdateUserPoolClient Text
uupcUserPoolId = lens _uupcUserPoolId (\s a -> s {_uupcUserPoolId = a})

-- | The ID of the client associated with the user pool.
uupcClientId :: Lens' UpdateUserPoolClient Text
uupcClientId = lens _uupcClientId (\s a -> s {_uupcClientId = a}) . _Sensitive

instance AWSRequest UpdateUserPoolClient where
  type
    Rs UpdateUserPoolClient =
      UpdateUserPoolClientResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          UpdateUserPoolClientResponse'
            <$> (x .?> "UserPoolClient") <*> (pure (fromEnum s))
      )

instance Hashable UpdateUserPoolClient

instance NFData UpdateUserPoolClient

instance ToHeaders UpdateUserPoolClient where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.UpdateUserPoolClient" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateUserPoolClient where
  toJSON UpdateUserPoolClient' {..} =
    object
      ( catMaybes
          [ ("RefreshTokenValidity" .=)
              <$> _uupcRefreshTokenValidity,
            ("IdTokenValidity" .=) <$> _uupcIdTokenValidity,
            ("AllowedOAuthScopes" .=)
              <$> _uupcAllowedOAuthScopes,
            ("ClientName" .=) <$> _uupcClientName,
            ("AnalyticsConfiguration" .=)
              <$> _uupcAnalyticsConfiguration,
            ("ReadAttributes" .=) <$> _uupcReadAttributes,
            ("LogoutURLs" .=) <$> _uupcLogoutURLs,
            ("WriteAttributes" .=) <$> _uupcWriteAttributes,
            ("SupportedIdentityProviders" .=)
              <$> _uupcSupportedIdentityProviders,
            ("ExplicitAuthFlows" .=) <$> _uupcExplicitAuthFlows,
            ("DefaultRedirectURI" .=)
              <$> _uupcDefaultRedirectURI,
            ("TokenValidityUnits" .=)
              <$> _uupcTokenValidityUnits,
            ("CallbackURLs" .=) <$> _uupcCallbackURLs,
            ("AllowedOAuthFlows" .=) <$> _uupcAllowedOAuthFlows,
            ("AccessTokenValidity" .=)
              <$> _uupcAccessTokenValidity,
            ("PreventUserExistenceErrors" .=)
              <$> _uupcPreventUserExistenceErrors,
            ("AllowedOAuthFlowsUserPoolClient" .=)
              <$> _uupcAllowedOAuthFlowsUserPoolClient,
            Just ("UserPoolId" .= _uupcUserPoolId),
            Just ("ClientId" .= _uupcClientId)
          ]
      )

instance ToPath UpdateUserPoolClient where
  toPath = const "/"

instance ToQuery UpdateUserPoolClient where
  toQuery = const mempty

-- | Represents the response from the server to the request to update the user pool client.
--
--
--
-- /See:/ 'updateUserPoolClientResponse' smart constructor.
data UpdateUserPoolClientResponse = UpdateUserPoolClientResponse'
  { _uupcrrsUserPoolClient ::
      !( Maybe
           UserPoolClientType
       ),
    _uupcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateUserPoolClientResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uupcrrsUserPoolClient' - The user pool client value from the response from the server when an update user pool client request is made.
--
-- * 'uupcrrsResponseStatus' - -- | The response status code.
updateUserPoolClientResponse ::
  -- | 'uupcrrsResponseStatus'
  Int ->
  UpdateUserPoolClientResponse
updateUserPoolClientResponse pResponseStatus_ =
  UpdateUserPoolClientResponse'
    { _uupcrrsUserPoolClient =
        Nothing,
      _uupcrrsResponseStatus = pResponseStatus_
    }

-- | The user pool client value from the response from the server when an update user pool client request is made.
uupcrrsUserPoolClient :: Lens' UpdateUserPoolClientResponse (Maybe UserPoolClientType)
uupcrrsUserPoolClient = lens _uupcrrsUserPoolClient (\s a -> s {_uupcrrsUserPoolClient = a})

-- | -- | The response status code.
uupcrrsResponseStatus :: Lens' UpdateUserPoolClientResponse Int
uupcrrsResponseStatus = lens _uupcrrsResponseStatus (\s a -> s {_uupcrrsResponseStatus = a})

instance NFData UpdateUserPoolClientResponse
