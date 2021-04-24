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
-- Module      : Network.AWS.CognitoIdentityProvider.SignUp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers the user in the specified user pool and creates a user name, password, and user attributes.
module Network.AWS.CognitoIdentityProvider.SignUp
  ( -- * Creating a Request
    signUp,
    SignUp,

    -- * Request Lenses
    suClientMetadata,
    suUserContextData,
    suSecretHash,
    suUserAttributes,
    suValidationData,
    suAnalyticsMetadata,
    suClientId,
    suUsername,
    suPassword,

    -- * Destructuring the Response
    signUpResponse,
    SignUpResponse,

    -- * Response Lenses
    surrsCodeDeliveryDetails,
    surrsResponseStatus,
    surrsUserConfirmed,
    surrsUserSub,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to register a user.
--
--
--
-- /See:/ 'signUp' smart constructor.
data SignUp = SignUp'
  { _suClientMetadata ::
      !(Maybe (Map Text Text)),
    _suUserContextData :: !(Maybe UserContextDataType),
    _suSecretHash :: !(Maybe (Sensitive Text)),
    _suUserAttributes :: !(Maybe [AttributeType]),
    _suValidationData :: !(Maybe [AttributeType]),
    _suAnalyticsMetadata ::
      !(Maybe AnalyticsMetadataType),
    _suClientId :: !(Sensitive Text),
    _suUsername :: !(Sensitive Text),
    _suPassword :: !(Sensitive Text)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SignUp' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suClientMetadata' - A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the SignUp API action, Amazon Cognito invokes any functions that are assigned to the following triggers: /pre sign-up/ , /custom message/ , and /post confirmation/ . When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your SignUp request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
--
-- * 'suUserContextData' - Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
--
-- * 'suSecretHash' - A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
--
-- * 'suUserAttributes' - An array of name-value pairs representing user attributes. For custom attributes, you must prepend the @custom:@ prefix to the attribute name.
--
-- * 'suValidationData' - The validation data in the request to register a user.
--
-- * 'suAnalyticsMetadata' - The Amazon Pinpoint analytics metadata for collecting metrics for @SignUp@ calls.
--
-- * 'suClientId' - The ID of the client associated with the user pool.
--
-- * 'suUsername' - The user name of the user you wish to register.
--
-- * 'suPassword' - The password of the user you wish to register.
signUp ::
  -- | 'suClientId'
  Text ->
  -- | 'suUsername'
  Text ->
  -- | 'suPassword'
  Text ->
  SignUp
signUp pClientId_ pUsername_ pPassword_ =
  SignUp'
    { _suClientMetadata = Nothing,
      _suUserContextData = Nothing,
      _suSecretHash = Nothing,
      _suUserAttributes = Nothing,
      _suValidationData = Nothing,
      _suAnalyticsMetadata = Nothing,
      _suClientId = _Sensitive # pClientId_,
      _suUsername = _Sensitive # pUsername_,
      _suPassword = _Sensitive # pPassword_
    }

-- | A map of custom key-value pairs that you can provide as input for any custom workflows that this action triggers.  You create custom workflows by assigning AWS Lambda functions to user pool triggers. When you use the SignUp API action, Amazon Cognito invokes any functions that are assigned to the following triggers: /pre sign-up/ , /custom message/ , and /post confirmation/ . When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the function receives as input. This payload contains a @clientMetadata@ attribute, which provides the data that you assigned to the ClientMetadata parameter in your SignUp request. In your function code in AWS Lambda, you can process the @clientMetadata@ value to enhance your workflow for your specific needs. For more information, see <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers> in the /Amazon Cognito Developer Guide/ .
suClientMetadata :: Lens' SignUp (HashMap Text Text)
suClientMetadata = lens _suClientMetadata (\s a -> s {_suClientMetadata = a}) . _Default . _Map

-- | Contextual data such as the user's device fingerprint, IP address, or location used for evaluating the risk of an unexpected event by Amazon Cognito advanced security.
suUserContextData :: Lens' SignUp (Maybe UserContextDataType)
suUserContextData = lens _suUserContextData (\s a -> s {_suUserContextData = a})

-- | A keyed-hash message authentication code (HMAC) calculated using the secret key of a user pool client and username plus the client ID in the message.
suSecretHash :: Lens' SignUp (Maybe Text)
suSecretHash = lens _suSecretHash (\s a -> s {_suSecretHash = a}) . mapping _Sensitive

-- | An array of name-value pairs representing user attributes. For custom attributes, you must prepend the @custom:@ prefix to the attribute name.
suUserAttributes :: Lens' SignUp [AttributeType]
suUserAttributes = lens _suUserAttributes (\s a -> s {_suUserAttributes = a}) . _Default . _Coerce

-- | The validation data in the request to register a user.
suValidationData :: Lens' SignUp [AttributeType]
suValidationData = lens _suValidationData (\s a -> s {_suValidationData = a}) . _Default . _Coerce

-- | The Amazon Pinpoint analytics metadata for collecting metrics for @SignUp@ calls.
suAnalyticsMetadata :: Lens' SignUp (Maybe AnalyticsMetadataType)
suAnalyticsMetadata = lens _suAnalyticsMetadata (\s a -> s {_suAnalyticsMetadata = a})

-- | The ID of the client associated with the user pool.
suClientId :: Lens' SignUp Text
suClientId = lens _suClientId (\s a -> s {_suClientId = a}) . _Sensitive

-- | The user name of the user you wish to register.
suUsername :: Lens' SignUp Text
suUsername = lens _suUsername (\s a -> s {_suUsername = a}) . _Sensitive

-- | The password of the user you wish to register.
suPassword :: Lens' SignUp Text
suPassword = lens _suPassword (\s a -> s {_suPassword = a}) . _Sensitive

instance AWSRequest SignUp where
  type Rs SignUp = SignUpResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          SignUpResponse'
            <$> (x .?> "CodeDeliveryDetails")
            <*> (pure (fromEnum s))
            <*> (x .:> "UserConfirmed")
            <*> (x .:> "UserSub")
      )

instance Hashable SignUp

instance NFData SignUp

instance ToHeaders SignUp where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.SignUp" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SignUp where
  toJSON SignUp' {..} =
    object
      ( catMaybes
          [ ("ClientMetadata" .=) <$> _suClientMetadata,
            ("UserContextData" .=) <$> _suUserContextData,
            ("SecretHash" .=) <$> _suSecretHash,
            ("UserAttributes" .=) <$> _suUserAttributes,
            ("ValidationData" .=) <$> _suValidationData,
            ("AnalyticsMetadata" .=) <$> _suAnalyticsMetadata,
            Just ("ClientId" .= _suClientId),
            Just ("Username" .= _suUsername),
            Just ("Password" .= _suPassword)
          ]
      )

instance ToPath SignUp where
  toPath = const "/"

instance ToQuery SignUp where
  toQuery = const mempty

-- | The response from the server for a registration request.
--
--
--
-- /See:/ 'signUpResponse' smart constructor.
data SignUpResponse = SignUpResponse'
  { _surrsCodeDeliveryDetails ::
      !(Maybe CodeDeliveryDetailsType),
    _surrsResponseStatus :: !Int,
    _surrsUserConfirmed :: !Bool,
    _surrsUserSub :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SignUpResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'surrsCodeDeliveryDetails' - The code delivery details returned by the server response to the user registration request.
--
-- * 'surrsResponseStatus' - -- | The response status code.
--
-- * 'surrsUserConfirmed' - A response from the server indicating that a user registration has been confirmed.
--
-- * 'surrsUserSub' - The UUID of the authenticated user. This is not the same as @username@ .
signUpResponse ::
  -- | 'surrsResponseStatus'
  Int ->
  -- | 'surrsUserConfirmed'
  Bool ->
  -- | 'surrsUserSub'
  Text ->
  SignUpResponse
signUpResponse
  pResponseStatus_
  pUserConfirmed_
  pUserSub_ =
    SignUpResponse'
      { _surrsCodeDeliveryDetails =
          Nothing,
        _surrsResponseStatus = pResponseStatus_,
        _surrsUserConfirmed = pUserConfirmed_,
        _surrsUserSub = pUserSub_
      }

-- | The code delivery details returned by the server response to the user registration request.
surrsCodeDeliveryDetails :: Lens' SignUpResponse (Maybe CodeDeliveryDetailsType)
surrsCodeDeliveryDetails = lens _surrsCodeDeliveryDetails (\s a -> s {_surrsCodeDeliveryDetails = a})

-- | -- | The response status code.
surrsResponseStatus :: Lens' SignUpResponse Int
surrsResponseStatus = lens _surrsResponseStatus (\s a -> s {_surrsResponseStatus = a})

-- | A response from the server indicating that a user registration has been confirmed.
surrsUserConfirmed :: Lens' SignUpResponse Bool
surrsUserConfirmed = lens _surrsUserConfirmed (\s a -> s {_surrsUserConfirmed = a})

-- | The UUID of the authenticated user. This is not the same as @username@ .
surrsUserSub :: Lens' SignUpResponse Text
surrsUserSub = lens _surrsUserSub (\s a -> s {_surrsUserSub = a})

instance NFData SignUpResponse
