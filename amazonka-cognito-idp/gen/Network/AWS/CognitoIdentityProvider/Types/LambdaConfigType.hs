{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.LambdaConfigType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.LambdaConfigType where

import Network.AWS.CognitoIdentityProvider.Types.CustomEmailLambdaVersionConfigType
import Network.AWS.CognitoIdentityProvider.Types.CustomSMSLambdaVersionConfigType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the configuration for AWS Lambda triggers.
--
--
--
-- /See:/ 'lambdaConfigType' smart constructor.
data LambdaConfigType = LambdaConfigType'
  { _lctCustomEmailSender ::
      !( Maybe
           CustomEmailLambdaVersionConfigType
       ),
    _lctPreSignUp :: !(Maybe Text),
    _lctDefineAuthChallenge ::
      !(Maybe Text),
    _lctPostAuthentication ::
      !(Maybe Text),
    _lctCustomSMSSender ::
      !( Maybe
           CustomSMSLambdaVersionConfigType
       ),
    _lctCreateAuthChallenge ::
      !(Maybe Text),
    _lctPostConfirmation :: !(Maybe Text),
    _lctPreAuthentication ::
      !(Maybe Text),
    _lctKMSKeyId :: !(Maybe Text),
    _lctVerifyAuthChallengeResponse ::
      !(Maybe Text),
    _lctCustomMessage :: !(Maybe Text),
    _lctUserMigration :: !(Maybe Text),
    _lctPreTokenGeneration ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LambdaConfigType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lctCustomEmailSender' - A custom email sender AWS Lambda trigger.
--
-- * 'lctPreSignUp' - A pre-registration AWS Lambda trigger.
--
-- * 'lctDefineAuthChallenge' - Defines the authentication challenge.
--
-- * 'lctPostAuthentication' - A post-authentication AWS Lambda trigger.
--
-- * 'lctCustomSMSSender' - A custom SMS sender AWS Lambda trigger.
--
-- * 'lctCreateAuthChallenge' - Creates an authentication challenge.
--
-- * 'lctPostConfirmation' - A post-confirmation AWS Lambda trigger.
--
-- * 'lctPreAuthentication' - A pre-authentication AWS Lambda trigger.
--
-- * 'lctKMSKeyId' - The Amazon Resource Name of Key Management Service </kms/latest/developerguide/concepts.html#master_keys Customer master keys> . Amazon Cognito uses the key to encrypt codes and temporary passwords sent to @CustomEmailSender@ and @CustomSMSSender@ .
--
-- * 'lctVerifyAuthChallengeResponse' - Verifies the authentication challenge response.
--
-- * 'lctCustomMessage' - A custom Message AWS Lambda trigger.
--
-- * 'lctUserMigration' - The user migration Lambda config type.
--
-- * 'lctPreTokenGeneration' - A Lambda trigger that is invoked before token generation.
lambdaConfigType ::
  LambdaConfigType
lambdaConfigType =
  LambdaConfigType'
    { _lctCustomEmailSender = Nothing,
      _lctPreSignUp = Nothing,
      _lctDefineAuthChallenge = Nothing,
      _lctPostAuthentication = Nothing,
      _lctCustomSMSSender = Nothing,
      _lctCreateAuthChallenge = Nothing,
      _lctPostConfirmation = Nothing,
      _lctPreAuthentication = Nothing,
      _lctKMSKeyId = Nothing,
      _lctVerifyAuthChallengeResponse = Nothing,
      _lctCustomMessage = Nothing,
      _lctUserMigration = Nothing,
      _lctPreTokenGeneration = Nothing
    }

-- | A custom email sender AWS Lambda trigger.
lctCustomEmailSender :: Lens' LambdaConfigType (Maybe CustomEmailLambdaVersionConfigType)
lctCustomEmailSender = lens _lctCustomEmailSender (\s a -> s {_lctCustomEmailSender = a})

-- | A pre-registration AWS Lambda trigger.
lctPreSignUp :: Lens' LambdaConfigType (Maybe Text)
lctPreSignUp = lens _lctPreSignUp (\s a -> s {_lctPreSignUp = a})

-- | Defines the authentication challenge.
lctDefineAuthChallenge :: Lens' LambdaConfigType (Maybe Text)
lctDefineAuthChallenge = lens _lctDefineAuthChallenge (\s a -> s {_lctDefineAuthChallenge = a})

-- | A post-authentication AWS Lambda trigger.
lctPostAuthentication :: Lens' LambdaConfigType (Maybe Text)
lctPostAuthentication = lens _lctPostAuthentication (\s a -> s {_lctPostAuthentication = a})

-- | A custom SMS sender AWS Lambda trigger.
lctCustomSMSSender :: Lens' LambdaConfigType (Maybe CustomSMSLambdaVersionConfigType)
lctCustomSMSSender = lens _lctCustomSMSSender (\s a -> s {_lctCustomSMSSender = a})

-- | Creates an authentication challenge.
lctCreateAuthChallenge :: Lens' LambdaConfigType (Maybe Text)
lctCreateAuthChallenge = lens _lctCreateAuthChallenge (\s a -> s {_lctCreateAuthChallenge = a})

-- | A post-confirmation AWS Lambda trigger.
lctPostConfirmation :: Lens' LambdaConfigType (Maybe Text)
lctPostConfirmation = lens _lctPostConfirmation (\s a -> s {_lctPostConfirmation = a})

-- | A pre-authentication AWS Lambda trigger.
lctPreAuthentication :: Lens' LambdaConfigType (Maybe Text)
lctPreAuthentication = lens _lctPreAuthentication (\s a -> s {_lctPreAuthentication = a})

-- | The Amazon Resource Name of Key Management Service </kms/latest/developerguide/concepts.html#master_keys Customer master keys> . Amazon Cognito uses the key to encrypt codes and temporary passwords sent to @CustomEmailSender@ and @CustomSMSSender@ .
lctKMSKeyId :: Lens' LambdaConfigType (Maybe Text)
lctKMSKeyId = lens _lctKMSKeyId (\s a -> s {_lctKMSKeyId = a})

-- | Verifies the authentication challenge response.
lctVerifyAuthChallengeResponse :: Lens' LambdaConfigType (Maybe Text)
lctVerifyAuthChallengeResponse = lens _lctVerifyAuthChallengeResponse (\s a -> s {_lctVerifyAuthChallengeResponse = a})

-- | A custom Message AWS Lambda trigger.
lctCustomMessage :: Lens' LambdaConfigType (Maybe Text)
lctCustomMessage = lens _lctCustomMessage (\s a -> s {_lctCustomMessage = a})

-- | The user migration Lambda config type.
lctUserMigration :: Lens' LambdaConfigType (Maybe Text)
lctUserMigration = lens _lctUserMigration (\s a -> s {_lctUserMigration = a})

-- | A Lambda trigger that is invoked before token generation.
lctPreTokenGeneration :: Lens' LambdaConfigType (Maybe Text)
lctPreTokenGeneration = lens _lctPreTokenGeneration (\s a -> s {_lctPreTokenGeneration = a})

instance FromJSON LambdaConfigType where
  parseJSON =
    withObject
      "LambdaConfigType"
      ( \x ->
          LambdaConfigType'
            <$> (x .:? "CustomEmailSender")
            <*> (x .:? "PreSignUp")
            <*> (x .:? "DefineAuthChallenge")
            <*> (x .:? "PostAuthentication")
            <*> (x .:? "CustomSMSSender")
            <*> (x .:? "CreateAuthChallenge")
            <*> (x .:? "PostConfirmation")
            <*> (x .:? "PreAuthentication")
            <*> (x .:? "KMSKeyID")
            <*> (x .:? "VerifyAuthChallengeResponse")
            <*> (x .:? "CustomMessage")
            <*> (x .:? "UserMigration")
            <*> (x .:? "PreTokenGeneration")
      )

instance Hashable LambdaConfigType

instance NFData LambdaConfigType

instance ToJSON LambdaConfigType where
  toJSON LambdaConfigType' {..} =
    object
      ( catMaybes
          [ ("CustomEmailSender" .=) <$> _lctCustomEmailSender,
            ("PreSignUp" .=) <$> _lctPreSignUp,
            ("DefineAuthChallenge" .=)
              <$> _lctDefineAuthChallenge,
            ("PostAuthentication" .=) <$> _lctPostAuthentication,
            ("CustomSMSSender" .=) <$> _lctCustomSMSSender,
            ("CreateAuthChallenge" .=)
              <$> _lctCreateAuthChallenge,
            ("PostConfirmation" .=) <$> _lctPostConfirmation,
            ("PreAuthentication" .=) <$> _lctPreAuthentication,
            ("KMSKeyID" .=) <$> _lctKMSKeyId,
            ("VerifyAuthChallengeResponse" .=)
              <$> _lctVerifyAuthChallengeResponse,
            ("CustomMessage" .=) <$> _lctCustomMessage,
            ("UserMigration" .=) <$> _lctUserMigration,
            ("PreTokenGeneration" .=)
              <$> _lctPreTokenGeneration
          ]
      )
