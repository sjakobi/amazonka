{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EmailChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EmailChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the email channel for an application.
--
--
--
-- /See:/ 'emailChannelResponse' smart constructor.
data EmailChannelResponse = EmailChannelResponse'
  { _ecrLastModifiedDate ::
      !(Maybe Text),
    _ecrApplicationId ::
      !(Maybe Text),
    _ecrRoleARN :: !(Maybe Text),
    _ecrHasCredential ::
      !(Maybe Bool),
    _ecrIdentity :: !(Maybe Text),
    _ecrId :: !(Maybe Text),
    _ecrCreationDate ::
      !(Maybe Text),
    _ecrEnabled :: !(Maybe Bool),
    _ecrVersion :: !(Maybe Int),
    _ecrMessagesPerSecond ::
      !(Maybe Int),
    _ecrIsArchived ::
      !(Maybe Bool),
    _ecrFromAddress ::
      !(Maybe Text),
    _ecrLastModifiedBy ::
      !(Maybe Text),
    _ecrConfigurationSet ::
      !(Maybe Text),
    _ecrPlatform :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EmailChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecrLastModifiedDate' - The date and time, in ISO 8601 format, when the email channel was last modified.
--
-- * 'ecrApplicationId' - The unique identifier for the application that the email channel applies to.
--
-- * 'ecrRoleARN' - The ARN of the AWS Identity and Access Management (IAM) role that Amazon Pinpoint uses to submit email-related event data for the channel.
--
-- * 'ecrHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'ecrIdentity' - The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that's used when you send email through the channel.
--
-- * 'ecrId' - (Deprecated) An identifier for the email channel. This property is retained only for backward compatibility.
--
-- * 'ecrCreationDate' - The date and time, in ISO 8601 format, when the email channel was enabled.
--
-- * 'ecrEnabled' - Specifies whether the email channel is enabled for the application.
--
-- * 'ecrVersion' - The current version of the email channel.
--
-- * 'ecrMessagesPerSecond' - The maximum number of emails that can be sent through the channel each second.
--
-- * 'ecrIsArchived' - Specifies whether the email channel is archived.
--
-- * 'ecrFromAddress' - The verified email address that email is sent from when you send email through the channel.
--
-- * 'ecrLastModifiedBy' - The user who last modified the email channel.
--
-- * 'ecrConfigurationSet' - The <https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html Amazon SES configuration set> that's applied to messages that are sent through the channel.
--
-- * 'ecrPlatform' - The type of messaging or notification platform for the channel. For the email channel, this value is EMAIL.
emailChannelResponse ::
  -- | 'ecrPlatform'
  Text ->
  EmailChannelResponse
emailChannelResponse pPlatform_ =
  EmailChannelResponse'
    { _ecrLastModifiedDate =
        Nothing,
      _ecrApplicationId = Nothing,
      _ecrRoleARN = Nothing,
      _ecrHasCredential = Nothing,
      _ecrIdentity = Nothing,
      _ecrId = Nothing,
      _ecrCreationDate = Nothing,
      _ecrEnabled = Nothing,
      _ecrVersion = Nothing,
      _ecrMessagesPerSecond = Nothing,
      _ecrIsArchived = Nothing,
      _ecrFromAddress = Nothing,
      _ecrLastModifiedBy = Nothing,
      _ecrConfigurationSet = Nothing,
      _ecrPlatform = pPlatform_
    }

-- | The date and time, in ISO 8601 format, when the email channel was last modified.
ecrLastModifiedDate :: Lens' EmailChannelResponse (Maybe Text)
ecrLastModifiedDate = lens _ecrLastModifiedDate (\s a -> s {_ecrLastModifiedDate = a})

-- | The unique identifier for the application that the email channel applies to.
ecrApplicationId :: Lens' EmailChannelResponse (Maybe Text)
ecrApplicationId = lens _ecrApplicationId (\s a -> s {_ecrApplicationId = a})

-- | The ARN of the AWS Identity and Access Management (IAM) role that Amazon Pinpoint uses to submit email-related event data for the channel.
ecrRoleARN :: Lens' EmailChannelResponse (Maybe Text)
ecrRoleARN = lens _ecrRoleARN (\s a -> s {_ecrRoleARN = a})

-- | (Not used) This property is retained only for backward compatibility.
ecrHasCredential :: Lens' EmailChannelResponse (Maybe Bool)
ecrHasCredential = lens _ecrHasCredential (\s a -> s {_ecrHasCredential = a})

-- | The Amazon Resource Name (ARN) of the identity, verified with Amazon Simple Email Service (Amazon SES), that's used when you send email through the channel.
ecrIdentity :: Lens' EmailChannelResponse (Maybe Text)
ecrIdentity = lens _ecrIdentity (\s a -> s {_ecrIdentity = a})

-- | (Deprecated) An identifier for the email channel. This property is retained only for backward compatibility.
ecrId :: Lens' EmailChannelResponse (Maybe Text)
ecrId = lens _ecrId (\s a -> s {_ecrId = a})

-- | The date and time, in ISO 8601 format, when the email channel was enabled.
ecrCreationDate :: Lens' EmailChannelResponse (Maybe Text)
ecrCreationDate = lens _ecrCreationDate (\s a -> s {_ecrCreationDate = a})

-- | Specifies whether the email channel is enabled for the application.
ecrEnabled :: Lens' EmailChannelResponse (Maybe Bool)
ecrEnabled = lens _ecrEnabled (\s a -> s {_ecrEnabled = a})

-- | The current version of the email channel.
ecrVersion :: Lens' EmailChannelResponse (Maybe Int)
ecrVersion = lens _ecrVersion (\s a -> s {_ecrVersion = a})

-- | The maximum number of emails that can be sent through the channel each second.
ecrMessagesPerSecond :: Lens' EmailChannelResponse (Maybe Int)
ecrMessagesPerSecond = lens _ecrMessagesPerSecond (\s a -> s {_ecrMessagesPerSecond = a})

-- | Specifies whether the email channel is archived.
ecrIsArchived :: Lens' EmailChannelResponse (Maybe Bool)
ecrIsArchived = lens _ecrIsArchived (\s a -> s {_ecrIsArchived = a})

-- | The verified email address that email is sent from when you send email through the channel.
ecrFromAddress :: Lens' EmailChannelResponse (Maybe Text)
ecrFromAddress = lens _ecrFromAddress (\s a -> s {_ecrFromAddress = a})

-- | The user who last modified the email channel.
ecrLastModifiedBy :: Lens' EmailChannelResponse (Maybe Text)
ecrLastModifiedBy = lens _ecrLastModifiedBy (\s a -> s {_ecrLastModifiedBy = a})

-- | The <https://docs.aws.amazon.com/ses/latest/APIReference/API_ConfigurationSet.html Amazon SES configuration set> that's applied to messages that are sent through the channel.
ecrConfigurationSet :: Lens' EmailChannelResponse (Maybe Text)
ecrConfigurationSet = lens _ecrConfigurationSet (\s a -> s {_ecrConfigurationSet = a})

-- | The type of messaging or notification platform for the channel. For the email channel, this value is EMAIL.
ecrPlatform :: Lens' EmailChannelResponse Text
ecrPlatform = lens _ecrPlatform (\s a -> s {_ecrPlatform = a})

instance FromJSON EmailChannelResponse where
  parseJSON =
    withObject
      "EmailChannelResponse"
      ( \x ->
          EmailChannelResponse'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ApplicationId")
            <*> (x .:? "RoleArn")
            <*> (x .:? "HasCredential")
            <*> (x .:? "Identity")
            <*> (x .:? "Id")
            <*> (x .:? "CreationDate")
            <*> (x .:? "Enabled")
            <*> (x .:? "Version")
            <*> (x .:? "MessagesPerSecond")
            <*> (x .:? "IsArchived")
            <*> (x .:? "FromAddress")
            <*> (x .:? "LastModifiedBy")
            <*> (x .:? "ConfigurationSet")
            <*> (x .: "Platform")
      )

instance Hashable EmailChannelResponse

instance NFData EmailChannelResponse
