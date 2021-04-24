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
-- Module      : Network.AWS.CognitoIdentityProvider.AdminRespondToAuthChallenge
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Responds to an authentication challenge, as an administrator.
--
--
-- Calling this action requires developer credentials.
module Network.AWS.CognitoIdentityProvider.AdminRespondToAuthChallenge
  ( -- * Creating a Request
    adminRespondToAuthChallenge,
    AdminRespondToAuthChallenge,

    -- * Request Lenses
    artacClientMetadata,
    artacChallengeResponses,
    artacContextData,
    artacSession,
    artacAnalyticsMetadata,
    artacUserPoolId,
    artacClientId,
    artacChallengeName,

    -- * Destructuring the Response
    adminRespondToAuthChallengeResponse,
    AdminRespondToAuthChallengeResponse,

    -- * Response Lenses
    artacrrsAuthenticationResult,
    artacrrsChallengeName,
    artacrrsChallengeParameters,
    artacrrsSession,
    artacrrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to respond to the authentication challenge, as an administrator.
--
--
--
-- /See:/ 'adminRespondToAuthChallenge' smart constructor.
data AdminRespondToAuthChallenge = AdminRespondToAuthChallenge'
  { _artacClientMetadata ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _artacChallengeResponses ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _artacContextData ::
      !( Maybe
           ContextDataType
       ),
    _artacSession ::
      !(Maybe Text),
    _artacAnalyticsMetadata ::
      !( Maybe
           AnalyticsMetadataType
       ),
    _artacUserPoolId ::
      !Text,
    _artacClientId ::
      !( Sensitive
           Text
       ),
    _artacChallengeName ::
      !ChallengeNameType
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AdminRespondToAuthChallenge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artacClientMetadata' - A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the AdminRespondToAuthChallenge API action, Amazon Cognito invokes any functions that are assigned to the following triggers: /pre sign-up/ , /custom message/ , /post authentication/ , /user migration/ , /pre token generation/ , /define auth challenge/ , /create auth challenge/ , and /verify auth challenge response/ . When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your AdminRespondToAuthChallenge request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
--
-- * 'artacChallengeResponses' - The challenge responses. These are inputs corresponding to the value of @ChallengeName@ , for example:     * @SMS_MFA@ : @SMS_MFA_CODE@ , @USERNAME@ , @SECRET_HASH@ (if app client is configured with client secret).     * @PASSWORD_VERIFIER@ : @PASSWORD_CLAIM_SIGNATURE@ , @PASSWORD_CLAIM_SECRET_BLOCK@ , @TIMESTAMP@ , @USERNAME@ , @SECRET_HASH@ (if app client is configured with client secret).     * @ADMIN_NO_SRP_AUTH@ : @PASSWORD@ , @USERNAME@ , @SECRET_HASH@ (if app client is configured with client secret).      * @NEW_PASSWORD_REQUIRED@ : @NEW_PASSWORD@ , any other required attributes, @USERNAME@ , @SECRET_HASH@ (if app client is configured with client secret).  The value of the @USERNAME@ attribute must be the user's actual username, not an alias (such as email address or phone number). To make this easier, the @AdminInitiateAuth@ response includes the actual username value in the @USERNAMEUSER_ID_FOR_SRP@ attribute, even if you specified an alias in your call to @AdminInitiateAuth@ .
--
-- * 'artacContextData' - Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
--
-- * 'artacSession' - The session which should be passed both ways in challenge-response calls to the service. If @InitiateAuth@ or @RespondToAuthChallenge@ API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next @RespondToAuthChallenge@ API call.
--
-- * 'artacAnalyticsMetadata' - The analytics metadata for collecting Amazon Pinpoint metrics for @AdminRespondToAuthChallenge@ calls.
--
-- * 'artacUserPoolId' - The ID of the Amazon Cognito user pool.
--
-- * 'artacClientId' - The app client ID.
--
-- * 'artacChallengeName' - The challenge name. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html AdminInitiateAuth> .
adminRespondToAuthChallenge ::
  -- | 'artacUserPoolId'
  Text ->
  -- | 'artacClientId'
  Text ->
  -- | 'artacChallengeName'
  ChallengeNameType ->
  AdminRespondToAuthChallenge
adminRespondToAuthChallenge
  pUserPoolId_
  pClientId_
  pChallengeName_ =
    AdminRespondToAuthChallenge'
      { _artacClientMetadata =
          Nothing,
        _artacChallengeResponses = Nothing,
        _artacContextData = Nothing,
        _artacSession = Nothing,
        _artacAnalyticsMetadata = Nothing,
        _artacUserPoolId = pUserPoolId_,
        _artacClientId = _Sensitive # pClientId_,
        _artacChallengeName = pChallengeName_
      }

-- | A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the AdminRespondToAuthChallenge API action, Amazon Cognito invokes any functions that are assigned to the following triggers: /pre sign-up/ , /custom message/ , /post authentication/ , /user migration/ , /pre token generation/ , /define auth challenge/ , /create auth challenge/ , and /verify auth challenge response/ . When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your AdminRespondToAuthChallenge request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
artacClientMetadata :: Lens' AdminRespondToAuthChallenge (HashMap Text Text)
artacClientMetadata = lens _artacClientMetadata (\s a -> s {_artacClientMetadata = a}) . _Default . _Map

-- | The challenge responses. These are inputs corresponding to the value of @ChallengeName@ , for example:     * @SMS_MFA@ : @SMS_MFA_CODE@ , @USERNAME@ , @SECRET_HASH@ (if app client is configured with client secret).     * @PASSWORD_VERIFIER@ : @PASSWORD_CLAIM_SIGNATURE@ , @PASSWORD_CLAIM_SECRET_BLOCK@ , @TIMESTAMP@ , @USERNAME@ , @SECRET_HASH@ (if app client is configured with client secret).     * @ADMIN_NO_SRP_AUTH@ : @PASSWORD@ , @USERNAME@ , @SECRET_HASH@ (if app client is configured with client secret).      * @NEW_PASSWORD_REQUIRED@ : @NEW_PASSWORD@ , any other required attributes, @USERNAME@ , @SECRET_HASH@ (if app client is configured with client secret).  The value of the @USERNAME@ attribute must be the user's actual username, not an alias (such as email address or phone number). To make this easier, the @AdminInitiateAuth@ response includes the actual username value in the @USERNAMEUSER_ID_FOR_SRP@ attribute, even if you specified an alias in your call to @AdminInitiateAuth@ .
artacChallengeResponses :: Lens' AdminRespondToAuthChallenge (HashMap Text Text)
artacChallengeResponses = lens _artacChallengeResponses (\s a -> s {_artacChallengeResponses = a}) . _Default . _Map

-- | Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
artacContextData :: Lens' AdminRespondToAuthChallenge (Maybe ContextDataType)
artacContextData = lens _artacContextData (\s a -> s {_artacContextData = a})

-- | The session which should be passed both ways in challenge-response calls to the service. If @InitiateAuth@ or @RespondToAuthChallenge@ API call determines that the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next @RespondToAuthChallenge@ API call.
artacSession :: Lens' AdminRespondToAuthChallenge (Maybe Text)
artacSession = lens _artacSession (\s a -> s {_artacSession = a})

-- | The analytics metadata for collecting Amazon Pinpoint metrics for @AdminRespondToAuthChallenge@ calls.
artacAnalyticsMetadata :: Lens' AdminRespondToAuthChallenge (Maybe AnalyticsMetadataType)
artacAnalyticsMetadata = lens _artacAnalyticsMetadata (\s a -> s {_artacAnalyticsMetadata = a})

-- | The ID of the Amazon Cognito user pool.
artacUserPoolId :: Lens' AdminRespondToAuthChallenge Text
artacUserPoolId = lens _artacUserPoolId (\s a -> s {_artacUserPoolId = a})

-- | The app client ID.
artacClientId :: Lens' AdminRespondToAuthChallenge Text
artacClientId = lens _artacClientId (\s a -> s {_artacClientId = a}) . _Sensitive

-- | The challenge name. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html AdminInitiateAuth> .
artacChallengeName :: Lens' AdminRespondToAuthChallenge ChallengeNameType
artacChallengeName = lens _artacChallengeName (\s a -> s {_artacChallengeName = a})

instance AWSRequest AdminRespondToAuthChallenge where
  type
    Rs AdminRespondToAuthChallenge =
      AdminRespondToAuthChallengeResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          AdminRespondToAuthChallengeResponse'
            <$> (x .?> "AuthenticationResult")
            <*> (x .?> "ChallengeName")
            <*> (x .?> "ChallengeParameters" .!@ mempty)
            <*> (x .?> "Session")
            <*> (pure (fromEnum s))
      )

instance Hashable AdminRespondToAuthChallenge

instance NFData AdminRespondToAuthChallenge

instance ToHeaders AdminRespondToAuthChallenge where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.AdminRespondToAuthChallenge" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AdminRespondToAuthChallenge where
  toJSON AdminRespondToAuthChallenge' {..} =
    object
      ( catMaybes
          [ ("ClientMetadata" .=) <$> _artacClientMetadata,
            ("ChallengeResponses" .=)
              <$> _artacChallengeResponses,
            ("ContextData" .=) <$> _artacContextData,
            ("Session" .=) <$> _artacSession,
            ("AnalyticsMetadata" .=) <$> _artacAnalyticsMetadata,
            Just ("UserPoolId" .= _artacUserPoolId),
            Just ("ClientId" .= _artacClientId),
            Just ("ChallengeName" .= _artacChallengeName)
          ]
      )

instance ToPath AdminRespondToAuthChallenge where
  toPath = const "/"

instance ToQuery AdminRespondToAuthChallenge where
  toQuery = const mempty

-- | Responds to the authentication challenge, as an administrator.
--
--
--
-- /See:/ 'adminRespondToAuthChallengeResponse' smart constructor.
data AdminRespondToAuthChallengeResponse = AdminRespondToAuthChallengeResponse'
  { _artacrrsAuthenticationResult ::
      !( Maybe
           AuthenticationResultType
       ),
    _artacrrsChallengeName ::
      !( Maybe
           ChallengeNameType
       ),
    _artacrrsChallengeParameters ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _artacrrsSession ::
      !( Maybe
           Text
       ),
    _artacrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AdminRespondToAuthChallengeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'artacrrsAuthenticationResult' - The result returned by the server in response to the authentication request.
--
-- * 'artacrrsChallengeName' - The name of the challenge. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html AdminInitiateAuth> .
--
-- * 'artacrrsChallengeParameters' - The challenge parameters. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html AdminInitiateAuth> .
--
-- * 'artacrrsSession' - The session which should be passed both ways in challenge-response calls to the service. If the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next @RespondToAuthChallenge@ API call.
--
-- * 'artacrrsResponseStatus' - -- | The response status code.
adminRespondToAuthChallengeResponse ::
  -- | 'artacrrsResponseStatus'
  Int ->
  AdminRespondToAuthChallengeResponse
adminRespondToAuthChallengeResponse pResponseStatus_ =
  AdminRespondToAuthChallengeResponse'
    { _artacrrsAuthenticationResult =
        Nothing,
      _artacrrsChallengeName = Nothing,
      _artacrrsChallengeParameters = Nothing,
      _artacrrsSession = Nothing,
      _artacrrsResponseStatus =
        pResponseStatus_
    }

-- | The result returned by the server in response to the authentication request.
artacrrsAuthenticationResult :: Lens' AdminRespondToAuthChallengeResponse (Maybe AuthenticationResultType)
artacrrsAuthenticationResult = lens _artacrrsAuthenticationResult (\s a -> s {_artacrrsAuthenticationResult = a})

-- | The name of the challenge. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html AdminInitiateAuth> .
artacrrsChallengeName :: Lens' AdminRespondToAuthChallengeResponse (Maybe ChallengeNameType)
artacrrsChallengeName = lens _artacrrsChallengeName (\s a -> s {_artacrrsChallengeName = a})

-- | The challenge parameters. For more information, see <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AdminInitiateAuth.html AdminInitiateAuth> .
artacrrsChallengeParameters :: Lens' AdminRespondToAuthChallengeResponse (HashMap Text Text)
artacrrsChallengeParameters = lens _artacrrsChallengeParameters (\s a -> s {_artacrrsChallengeParameters = a}) . _Default . _Map

-- | The session which should be passed both ways in challenge-response calls to the service. If the caller needs to go through another challenge, they return a session with other challenge parameters. This session should be passed as it is to the next @RespondToAuthChallenge@ API call.
artacrrsSession :: Lens' AdminRespondToAuthChallengeResponse (Maybe Text)
artacrrsSession = lens _artacrrsSession (\s a -> s {_artacrrsSession = a})

-- | -- | The response status code.
artacrrsResponseStatus :: Lens' AdminRespondToAuthChallengeResponse Int
artacrrsResponseStatus = lens _artacrrsResponseStatus (\s a -> s {_artacrrsResponseStatus = a})

instance NFData AdminRespondToAuthChallengeResponse
