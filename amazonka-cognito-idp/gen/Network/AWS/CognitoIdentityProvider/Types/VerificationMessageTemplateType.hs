{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.VerificationMessageTemplateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.VerificationMessageTemplateType where

import Network.AWS.CognitoIdentityProvider.Types.DefaultEmailOptionType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The template for verification messages.
--
--
--
-- /See:/ 'verificationMessageTemplateType' smart constructor.
data VerificationMessageTemplateType = VerificationMessageTemplateType'
  { _vmttDefaultEmailOption ::
      !( Maybe
           DefaultEmailOptionType
       ),
    _vmttEmailSubjectByLink ::
      !( Maybe
           Text
       ),
    _vmttEmailSubject ::
      !( Maybe
           Text
       ),
    _vmttEmailMessage ::
      !( Maybe
           Text
       ),
    _vmttEmailMessageByLink ::
      !( Maybe
           Text
       ),
    _vmttSmsMessage ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'VerificationMessageTemplateType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vmttDefaultEmailOption' - The default email option.
--
-- * 'vmttEmailSubjectByLink' - The subject line for the email message template for sending a confirmation link to the user. EmailSubjectByLink is allowed only <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount EmailSendingAccount> is DEVELOPER.
--
-- * 'vmttEmailSubject' - The subject line for the email message template. EmailSubject is allowed only if <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount EmailSendingAccount> is DEVELOPER.
--
-- * 'vmttEmailMessage' - The email message template. EmailMessage is allowed only if <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount EmailSendingAccount> is DEVELOPER.
--
-- * 'vmttEmailMessageByLink' - The email message template for sending a confirmation link to the user. EmailMessageByLink is allowed only if <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount EmailSendingAccount> is DEVELOPER.
--
-- * 'vmttSmsMessage' - The SMS message template.
verificationMessageTemplateType ::
  VerificationMessageTemplateType
verificationMessageTemplateType =
  VerificationMessageTemplateType'
    { _vmttDefaultEmailOption =
        Nothing,
      _vmttEmailSubjectByLink = Nothing,
      _vmttEmailSubject = Nothing,
      _vmttEmailMessage = Nothing,
      _vmttEmailMessageByLink = Nothing,
      _vmttSmsMessage = Nothing
    }

-- | The default email option.
vmttDefaultEmailOption :: Lens' VerificationMessageTemplateType (Maybe DefaultEmailOptionType)
vmttDefaultEmailOption = lens _vmttDefaultEmailOption (\s a -> s {_vmttDefaultEmailOption = a})

-- | The subject line for the email message template for sending a confirmation link to the user. EmailSubjectByLink is allowed only <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount EmailSendingAccount> is DEVELOPER.
vmttEmailSubjectByLink :: Lens' VerificationMessageTemplateType (Maybe Text)
vmttEmailSubjectByLink = lens _vmttEmailSubjectByLink (\s a -> s {_vmttEmailSubjectByLink = a})

-- | The subject line for the email message template. EmailSubject is allowed only if <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount EmailSendingAccount> is DEVELOPER.
vmttEmailSubject :: Lens' VerificationMessageTemplateType (Maybe Text)
vmttEmailSubject = lens _vmttEmailSubject (\s a -> s {_vmttEmailSubject = a})

-- | The email message template. EmailMessage is allowed only if <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount EmailSendingAccount> is DEVELOPER.
vmttEmailMessage :: Lens' VerificationMessageTemplateType (Maybe Text)
vmttEmailMessage = lens _vmttEmailMessage (\s a -> s {_vmttEmailMessage = a})

-- | The email message template for sending a confirmation link to the user. EmailMessageByLink is allowed only if <https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_EmailConfigurationType.html#CognitoUserPools-Type-EmailConfigurationType-EmailSendingAccount EmailSendingAccount> is DEVELOPER.
vmttEmailMessageByLink :: Lens' VerificationMessageTemplateType (Maybe Text)
vmttEmailMessageByLink = lens _vmttEmailMessageByLink (\s a -> s {_vmttEmailMessageByLink = a})

-- | The SMS message template.
vmttSmsMessage :: Lens' VerificationMessageTemplateType (Maybe Text)
vmttSmsMessage = lens _vmttSmsMessage (\s a -> s {_vmttSmsMessage = a})

instance FromJSON VerificationMessageTemplateType where
  parseJSON =
    withObject
      "VerificationMessageTemplateType"
      ( \x ->
          VerificationMessageTemplateType'
            <$> (x .:? "DefaultEmailOption")
            <*> (x .:? "EmailSubjectByLink")
            <*> (x .:? "EmailSubject")
            <*> (x .:? "EmailMessage")
            <*> (x .:? "EmailMessageByLink")
            <*> (x .:? "SmsMessage")
      )

instance Hashable VerificationMessageTemplateType

instance NFData VerificationMessageTemplateType

instance ToJSON VerificationMessageTemplateType where
  toJSON VerificationMessageTemplateType' {..} =
    object
      ( catMaybes
          [ ("DefaultEmailOption" .=)
              <$> _vmttDefaultEmailOption,
            ("EmailSubjectByLink" .=)
              <$> _vmttEmailSubjectByLink,
            ("EmailSubject" .=) <$> _vmttEmailSubject,
            ("EmailMessage" .=) <$> _vmttEmailMessage,
            ("EmailMessageByLink" .=)
              <$> _vmttEmailMessageByLink,
            ("SmsMessage" .=) <$> _vmttSmsMessage
          ]
      )
