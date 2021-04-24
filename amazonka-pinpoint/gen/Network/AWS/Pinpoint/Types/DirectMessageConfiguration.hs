{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.DirectMessageConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.DirectMessageConfiguration where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ADMMessage
import Network.AWS.Pinpoint.Types.APNSMessage
import Network.AWS.Pinpoint.Types.BaiduMessage
import Network.AWS.Pinpoint.Types.DefaultMessage
import Network.AWS.Pinpoint.Types.DefaultPushNotificationMessage
import Network.AWS.Pinpoint.Types.EmailMessage
import Network.AWS.Pinpoint.Types.GCMMessage
import Network.AWS.Pinpoint.Types.SMSMessage
import Network.AWS.Pinpoint.Types.VoiceMessage
import Network.AWS.Prelude

-- | Specifies the settings and content for the default message and any default messages that you tailored for specific channels.
--
--
--
-- /See:/ 'directMessageConfiguration' smart constructor.
data DirectMessageConfiguration = DirectMessageConfiguration'
  { _dmcADMMessage ::
      !( Maybe
           ADMMessage
       ),
    _dmcDefaultMessage ::
      !( Maybe
           DefaultMessage
       ),
    _dmcVoiceMessage ::
      !( Maybe
           VoiceMessage
       ),
    _dmcGCMMessage ::
      !( Maybe
           GCMMessage
       ),
    _dmcAPNSMessage ::
      !( Maybe
           APNSMessage
       ),
    _dmcEmailMessage ::
      !( Maybe
           EmailMessage
       ),
    _dmcSMSMessage ::
      !( Maybe
           SMSMessage
       ),
    _dmcDefaultPushNotificationMessage ::
      !( Maybe
           DefaultPushNotificationMessage
       ),
    _dmcBaiduMessage ::
      !( Maybe
           BaiduMessage
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

-- | Creates a value of 'DirectMessageConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmcADMMessage' - The default push notification message for the ADM (Amazon Device Messaging) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).
--
-- * 'dmcDefaultMessage' - The default message for all channels.
--
-- * 'dmcVoiceMessage' - The default message for the voice channel. This message overrides the default message (DefaultMessage).
--
-- * 'dmcGCMMessage' - The default push notification message for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message overrides the default push notification message (DefaultPushNotificationMessage).
--
-- * 'dmcAPNSMessage' - The default push notification message for the APNs (Apple Push Notification service) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).
--
-- * 'dmcEmailMessage' - The default message for the email channel. This message overrides the default message (DefaultMessage).
--
-- * 'dmcSMSMessage' - The default message for the SMS channel. This message overrides the default message (DefaultMessage).
--
-- * 'dmcDefaultPushNotificationMessage' - The default push notification message for all push notification channels.
--
-- * 'dmcBaiduMessage' - The default push notification message for the Baidu (Baidu Cloud Push) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).
directMessageConfiguration ::
  DirectMessageConfiguration
directMessageConfiguration =
  DirectMessageConfiguration'
    { _dmcADMMessage =
        Nothing,
      _dmcDefaultMessage = Nothing,
      _dmcVoiceMessage = Nothing,
      _dmcGCMMessage = Nothing,
      _dmcAPNSMessage = Nothing,
      _dmcEmailMessage = Nothing,
      _dmcSMSMessage = Nothing,
      _dmcDefaultPushNotificationMessage = Nothing,
      _dmcBaiduMessage = Nothing
    }

-- | The default push notification message for the ADM (Amazon Device Messaging) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).
dmcADMMessage :: Lens' DirectMessageConfiguration (Maybe ADMMessage)
dmcADMMessage = lens _dmcADMMessage (\s a -> s {_dmcADMMessage = a})

-- | The default message for all channels.
dmcDefaultMessage :: Lens' DirectMessageConfiguration (Maybe DefaultMessage)
dmcDefaultMessage = lens _dmcDefaultMessage (\s a -> s {_dmcDefaultMessage = a})

-- | The default message for the voice channel. This message overrides the default message (DefaultMessage).
dmcVoiceMessage :: Lens' DirectMessageConfiguration (Maybe VoiceMessage)
dmcVoiceMessage = lens _dmcVoiceMessage (\s a -> s {_dmcVoiceMessage = a})

-- | The default push notification message for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message overrides the default push notification message (DefaultPushNotificationMessage).
dmcGCMMessage :: Lens' DirectMessageConfiguration (Maybe GCMMessage)
dmcGCMMessage = lens _dmcGCMMessage (\s a -> s {_dmcGCMMessage = a})

-- | The default push notification message for the APNs (Apple Push Notification service) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).
dmcAPNSMessage :: Lens' DirectMessageConfiguration (Maybe APNSMessage)
dmcAPNSMessage = lens _dmcAPNSMessage (\s a -> s {_dmcAPNSMessage = a})

-- | The default message for the email channel. This message overrides the default message (DefaultMessage).
dmcEmailMessage :: Lens' DirectMessageConfiguration (Maybe EmailMessage)
dmcEmailMessage = lens _dmcEmailMessage (\s a -> s {_dmcEmailMessage = a})

-- | The default message for the SMS channel. This message overrides the default message (DefaultMessage).
dmcSMSMessage :: Lens' DirectMessageConfiguration (Maybe SMSMessage)
dmcSMSMessage = lens _dmcSMSMessage (\s a -> s {_dmcSMSMessage = a})

-- | The default push notification message for all push notification channels.
dmcDefaultPushNotificationMessage :: Lens' DirectMessageConfiguration (Maybe DefaultPushNotificationMessage)
dmcDefaultPushNotificationMessage = lens _dmcDefaultPushNotificationMessage (\s a -> s {_dmcDefaultPushNotificationMessage = a})

-- | The default push notification message for the Baidu (Baidu Cloud Push) channel. This message overrides the default push notification message (DefaultPushNotificationMessage).
dmcBaiduMessage :: Lens' DirectMessageConfiguration (Maybe BaiduMessage)
dmcBaiduMessage = lens _dmcBaiduMessage (\s a -> s {_dmcBaiduMessage = a})

instance Hashable DirectMessageConfiguration

instance NFData DirectMessageConfiguration

instance ToJSON DirectMessageConfiguration where
  toJSON DirectMessageConfiguration' {..} =
    object
      ( catMaybes
          [ ("ADMMessage" .=) <$> _dmcADMMessage,
            ("DefaultMessage" .=) <$> _dmcDefaultMessage,
            ("VoiceMessage" .=) <$> _dmcVoiceMessage,
            ("GCMMessage" .=) <$> _dmcGCMMessage,
            ("APNSMessage" .=) <$> _dmcAPNSMessage,
            ("EmailMessage" .=) <$> _dmcEmailMessage,
            ("SMSMessage" .=) <$> _dmcSMSMessage,
            ("DefaultPushNotificationMessage" .=)
              <$> _dmcDefaultPushNotificationMessage,
            ("BaiduMessage" .=) <$> _dmcBaiduMessage
          ]
      )
