{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SMSChannelResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SMSChannelResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about the status and settings of the SMS channel for an application.
--
--
--
-- /See:/ 'sMSChannelResponse' smart constructor.
data SMSChannelResponse = SMSChannelResponse'
  { _smsLastModifiedDate ::
      !(Maybe Text),
    _smsApplicationId ::
      !(Maybe Text),
    _smsPromotionalMessagesPerSecond ::
      !(Maybe Int),
    _smsHasCredential ::
      !(Maybe Bool),
    _smsId :: !(Maybe Text),
    _smsCreationDate :: !(Maybe Text),
    _smsEnabled :: !(Maybe Bool),
    _smsVersion :: !(Maybe Int),
    _smsShortCode :: !(Maybe Text),
    _smsIsArchived :: !(Maybe Bool),
    _smsSenderId :: !(Maybe Text),
    _smsTransactionalMessagesPerSecond ::
      !(Maybe Int),
    _smsLastModifiedBy ::
      !(Maybe Text),
    _smsPlatform :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SMSChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'smsLastModifiedDate' - The date and time, in ISO 8601 format, when the SMS channel was last modified.
--
-- * 'smsApplicationId' - The unique identifier for the application that the SMS channel applies to.
--
-- * 'smsPromotionalMessagesPerSecond' - The maximum number of promotional messages that you can send through the SMS channel each second.
--
-- * 'smsHasCredential' - (Not used) This property is retained only for backward compatibility.
--
-- * 'smsId' - (Deprecated) An identifier for the SMS channel. This property is retained only for backward compatibility.
--
-- * 'smsCreationDate' - The date and time, in ISO 8601 format, when the SMS channel was enabled.
--
-- * 'smsEnabled' - Specifies whether the SMS channel is enabled for the application.
--
-- * 'smsVersion' - The current version of the SMS channel.
--
-- * 'smsShortCode' - The registered short code to use when you send messages through the SMS channel.
--
-- * 'smsIsArchived' - Specifies whether the SMS channel is archived.
--
-- * 'smsSenderId' - The identity that displays on recipients' devices when they receive messages from the SMS channel.
--
-- * 'smsTransactionalMessagesPerSecond' - The maximum number of transactional messages that you can send through the SMS channel each second.
--
-- * 'smsLastModifiedBy' - The user who last modified the SMS channel.
--
-- * 'smsPlatform' - The type of messaging or notification platform for the channel. For the SMS channel, this value is SMS.
sMSChannelResponse ::
  -- | 'smsPlatform'
  Text ->
  SMSChannelResponse
sMSChannelResponse pPlatform_ =
  SMSChannelResponse'
    { _smsLastModifiedDate = Nothing,
      _smsApplicationId = Nothing,
      _smsPromotionalMessagesPerSecond = Nothing,
      _smsHasCredential = Nothing,
      _smsId = Nothing,
      _smsCreationDate = Nothing,
      _smsEnabled = Nothing,
      _smsVersion = Nothing,
      _smsShortCode = Nothing,
      _smsIsArchived = Nothing,
      _smsSenderId = Nothing,
      _smsTransactionalMessagesPerSecond = Nothing,
      _smsLastModifiedBy = Nothing,
      _smsPlatform = pPlatform_
    }

-- | The date and time, in ISO 8601 format, when the SMS channel was last modified.
smsLastModifiedDate :: Lens' SMSChannelResponse (Maybe Text)
smsLastModifiedDate = lens _smsLastModifiedDate (\s a -> s {_smsLastModifiedDate = a})

-- | The unique identifier for the application that the SMS channel applies to.
smsApplicationId :: Lens' SMSChannelResponse (Maybe Text)
smsApplicationId = lens _smsApplicationId (\s a -> s {_smsApplicationId = a})

-- | The maximum number of promotional messages that you can send through the SMS channel each second.
smsPromotionalMessagesPerSecond :: Lens' SMSChannelResponse (Maybe Int)
smsPromotionalMessagesPerSecond = lens _smsPromotionalMessagesPerSecond (\s a -> s {_smsPromotionalMessagesPerSecond = a})

-- | (Not used) This property is retained only for backward compatibility.
smsHasCredential :: Lens' SMSChannelResponse (Maybe Bool)
smsHasCredential = lens _smsHasCredential (\s a -> s {_smsHasCredential = a})

-- | (Deprecated) An identifier for the SMS channel. This property is retained only for backward compatibility.
smsId :: Lens' SMSChannelResponse (Maybe Text)
smsId = lens _smsId (\s a -> s {_smsId = a})

-- | The date and time, in ISO 8601 format, when the SMS channel was enabled.
smsCreationDate :: Lens' SMSChannelResponse (Maybe Text)
smsCreationDate = lens _smsCreationDate (\s a -> s {_smsCreationDate = a})

-- | Specifies whether the SMS channel is enabled for the application.
smsEnabled :: Lens' SMSChannelResponse (Maybe Bool)
smsEnabled = lens _smsEnabled (\s a -> s {_smsEnabled = a})

-- | The current version of the SMS channel.
smsVersion :: Lens' SMSChannelResponse (Maybe Int)
smsVersion = lens _smsVersion (\s a -> s {_smsVersion = a})

-- | The registered short code to use when you send messages through the SMS channel.
smsShortCode :: Lens' SMSChannelResponse (Maybe Text)
smsShortCode = lens _smsShortCode (\s a -> s {_smsShortCode = a})

-- | Specifies whether the SMS channel is archived.
smsIsArchived :: Lens' SMSChannelResponse (Maybe Bool)
smsIsArchived = lens _smsIsArchived (\s a -> s {_smsIsArchived = a})

-- | The identity that displays on recipients' devices when they receive messages from the SMS channel.
smsSenderId :: Lens' SMSChannelResponse (Maybe Text)
smsSenderId = lens _smsSenderId (\s a -> s {_smsSenderId = a})

-- | The maximum number of transactional messages that you can send through the SMS channel each second.
smsTransactionalMessagesPerSecond :: Lens' SMSChannelResponse (Maybe Int)
smsTransactionalMessagesPerSecond = lens _smsTransactionalMessagesPerSecond (\s a -> s {_smsTransactionalMessagesPerSecond = a})

-- | The user who last modified the SMS channel.
smsLastModifiedBy :: Lens' SMSChannelResponse (Maybe Text)
smsLastModifiedBy = lens _smsLastModifiedBy (\s a -> s {_smsLastModifiedBy = a})

-- | The type of messaging or notification platform for the channel. For the SMS channel, this value is SMS.
smsPlatform :: Lens' SMSChannelResponse Text
smsPlatform = lens _smsPlatform (\s a -> s {_smsPlatform = a})

instance FromJSON SMSChannelResponse where
  parseJSON =
    withObject
      "SMSChannelResponse"
      ( \x ->
          SMSChannelResponse'
            <$> (x .:? "LastModifiedDate")
            <*> (x .:? "ApplicationId")
            <*> (x .:? "PromotionalMessagesPerSecond")
            <*> (x .:? "HasCredential")
            <*> (x .:? "Id")
            <*> (x .:? "CreationDate")
            <*> (x .:? "Enabled")
            <*> (x .:? "Version")
            <*> (x .:? "ShortCode")
            <*> (x .:? "IsArchived")
            <*> (x .:? "SenderId")
            <*> (x .:? "TransactionalMessagesPerSecond")
            <*> (x .:? "LastModifiedBy")
            <*> (x .: "Platform")
      )

instance Hashable SMSChannelResponse

instance NFData SMSChannelResponse
