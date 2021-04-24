{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.JourneySMSMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JourneySMSMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.MessageType
import Network.AWS.Prelude

-- | Specifies the sender ID and message type for an SMS message that's sent to participants in a journey.
--
--
--
-- /See:/ 'journeySMSMessage' smart constructor.
data JourneySMSMessage = JourneySMSMessage'
  { _jsmsmEntityId ::
      !(Maybe Text),
    _jsmsmSenderId :: !(Maybe Text),
    _jsmsmMessageType ::
      !(Maybe MessageType),
    _jsmsmTemplateId :: !(Maybe Text),
    _jsmsmOriginationNumber ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JourneySMSMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jsmsmEntityId' - The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.
--
-- * 'jsmsmSenderId' - The sender ID to display as the sender of the message on a recipient's device. Support for sender IDs varies by country or region. For more information, see <https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-countries.html Supported Countries and Regions> in the Amazon Pinpoint User Guide.
--
-- * 'jsmsmMessageType' - The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).
--
-- * 'jsmsmTemplateId' - The template ID received from the regulatory body for sending SMS in your country.
--
-- * 'jsmsmOriginationNumber' - The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.
journeySMSMessage ::
  JourneySMSMessage
journeySMSMessage =
  JourneySMSMessage'
    { _jsmsmEntityId = Nothing,
      _jsmsmSenderId = Nothing,
      _jsmsmMessageType = Nothing,
      _jsmsmTemplateId = Nothing,
      _jsmsmOriginationNumber = Nothing
    }

-- | The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.
jsmsmEntityId :: Lens' JourneySMSMessage (Maybe Text)
jsmsmEntityId = lens _jsmsmEntityId (\s a -> s {_jsmsmEntityId = a})

-- | The sender ID to display as the sender of the message on a recipient's device. Support for sender IDs varies by country or region. For more information, see <https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-countries.html Supported Countries and Regions> in the Amazon Pinpoint User Guide.
jsmsmSenderId :: Lens' JourneySMSMessage (Maybe Text)
jsmsmSenderId = lens _jsmsmSenderId (\s a -> s {_jsmsmSenderId = a})

-- | The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).
jsmsmMessageType :: Lens' JourneySMSMessage (Maybe MessageType)
jsmsmMessageType = lens _jsmsmMessageType (\s a -> s {_jsmsmMessageType = a})

-- | The template ID received from the regulatory body for sending SMS in your country.
jsmsmTemplateId :: Lens' JourneySMSMessage (Maybe Text)
jsmsmTemplateId = lens _jsmsmTemplateId (\s a -> s {_jsmsmTemplateId = a})

-- | The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.
jsmsmOriginationNumber :: Lens' JourneySMSMessage (Maybe Text)
jsmsmOriginationNumber = lens _jsmsmOriginationNumber (\s a -> s {_jsmsmOriginationNumber = a})

instance FromJSON JourneySMSMessage where
  parseJSON =
    withObject
      "JourneySMSMessage"
      ( \x ->
          JourneySMSMessage'
            <$> (x .:? "EntityId")
            <*> (x .:? "SenderId")
            <*> (x .:? "MessageType")
            <*> (x .:? "TemplateId")
            <*> (x .:? "OriginationNumber")
      )

instance Hashable JourneySMSMessage

instance NFData JourneySMSMessage

instance ToJSON JourneySMSMessage where
  toJSON JourneySMSMessage' {..} =
    object
      ( catMaybes
          [ ("EntityId" .=) <$> _jsmsmEntityId,
            ("SenderId" .=) <$> _jsmsmSenderId,
            ("MessageType" .=) <$> _jsmsmMessageType,
            ("TemplateId" .=) <$> _jsmsmTemplateId,
            ("OriginationNumber" .=)
              <$> _jsmsmOriginationNumber
          ]
      )
