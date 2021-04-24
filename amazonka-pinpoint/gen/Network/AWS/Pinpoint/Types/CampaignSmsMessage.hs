{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.CampaignSmsMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.CampaignSmsMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.MessageType
import Network.AWS.Prelude

-- | Specifies the content and settings for an SMS message that's sent to recipients of a campaign.
--
--
--
-- /See:/ 'campaignSmsMessage' smart constructor.
data CampaignSmsMessage = CampaignSmsMessage'
  { _csmEntityId ::
      !(Maybe Text),
    _csmBody :: !(Maybe Text),
    _csmSenderId :: !(Maybe Text),
    _csmMessageType ::
      !(Maybe MessageType),
    _csmTemplateId :: !(Maybe Text),
    _csmOriginationNumber ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CampaignSmsMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csmEntityId' - The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.
--
-- * 'csmBody' - The body of the SMS message.
--
-- * 'csmSenderId' - The sender ID to display on recipients' devices when they receive the SMS message.
--
-- * 'csmMessageType' - The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).
--
-- * 'csmTemplateId' - The template ID received from the regulatory body for sending SMS in your country.
--
-- * 'csmOriginationNumber' - The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.
campaignSmsMessage ::
  CampaignSmsMessage
campaignSmsMessage =
  CampaignSmsMessage'
    { _csmEntityId = Nothing,
      _csmBody = Nothing,
      _csmSenderId = Nothing,
      _csmMessageType = Nothing,
      _csmTemplateId = Nothing,
      _csmOriginationNumber = Nothing
    }

-- | The entity ID or Principal Entity (PE) id received from the regulatory body for sending SMS in your country.
csmEntityId :: Lens' CampaignSmsMessage (Maybe Text)
csmEntityId = lens _csmEntityId (\s a -> s {_csmEntityId = a})

-- | The body of the SMS message.
csmBody :: Lens' CampaignSmsMessage (Maybe Text)
csmBody = lens _csmBody (\s a -> s {_csmBody = a})

-- | The sender ID to display on recipients' devices when they receive the SMS message.
csmSenderId :: Lens' CampaignSmsMessage (Maybe Text)
csmSenderId = lens _csmSenderId (\s a -> s {_csmSenderId = a})

-- | The SMS message type. Valid values are TRANSACTIONAL (for messages that are critical or time-sensitive, such as a one-time passwords) and PROMOTIONAL (for messsages that aren't critical or time-sensitive, such as marketing messages).
csmMessageType :: Lens' CampaignSmsMessage (Maybe MessageType)
csmMessageType = lens _csmMessageType (\s a -> s {_csmMessageType = a})

-- | The template ID received from the regulatory body for sending SMS in your country.
csmTemplateId :: Lens' CampaignSmsMessage (Maybe Text)
csmTemplateId = lens _csmTemplateId (\s a -> s {_csmTemplateId = a})

-- | The long code to send the SMS message from. This value should be one of the dedicated long codes that's assigned to your AWS account. Although it isn't required, we recommend that you specify the long code using an E.164 format to ensure prompt and accurate delivery of the message. For example, +12065550100.
csmOriginationNumber :: Lens' CampaignSmsMessage (Maybe Text)
csmOriginationNumber = lens _csmOriginationNumber (\s a -> s {_csmOriginationNumber = a})

instance FromJSON CampaignSmsMessage where
  parseJSON =
    withObject
      "CampaignSmsMessage"
      ( \x ->
          CampaignSmsMessage'
            <$> (x .:? "EntityId")
            <*> (x .:? "Body")
            <*> (x .:? "SenderId")
            <*> (x .:? "MessageType")
            <*> (x .:? "TemplateId")
            <*> (x .:? "OriginationNumber")
      )

instance Hashable CampaignSmsMessage

instance NFData CampaignSmsMessage

instance ToJSON CampaignSmsMessage where
  toJSON CampaignSmsMessage' {..} =
    object
      ( catMaybes
          [ ("EntityId" .=) <$> _csmEntityId,
            ("Body" .=) <$> _csmBody,
            ("SenderId" .=) <$> _csmSenderId,
            ("MessageType" .=) <$> _csmMessageType,
            ("TemplateId" .=) <$> _csmTemplateId,
            ("OriginationNumber" .=) <$> _csmOriginationNumber
          ]
      )
