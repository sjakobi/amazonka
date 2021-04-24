{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSPushNotificationTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSPushNotificationTemplate where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | Specifies channel-specific content and settings for a message template that can be used in push notifications that are sent through the APNs (Apple Push Notification service) channel.
--
--
--
-- /See:/ 'apnsPushNotificationTemplate' smart constructor.
data APNSPushNotificationTemplate = APNSPushNotificationTemplate'
  { _apntTitle ::
      !(Maybe Text),
    _apntBody ::
      !(Maybe Text),
    _apntMediaURL ::
      !(Maybe Text),
    _apntAction ::
      !( Maybe
           Action
       ),
    _apntSound ::
      !(Maybe Text),
    _apntURL ::
      !(Maybe Text),
    _apntRawContent ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'APNSPushNotificationTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apntTitle' - The title to use in push notifications that are based on the message template. This title appears above the notification message on a recipient's device.
--
-- * 'apntBody' - The message body to use in push notifications that are based on the message template.
--
-- * 'apntMediaURL' - The URL of an image or video to display in push notifications that are based on the message template.
--
-- * 'apntAction' - The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:     * OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.     * DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.     * URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.
--
-- * 'apntSound' - The key for the sound to play when the recipient receives a push notification that's based on the message template. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.
--
-- * 'apntURL' - The URL to open in the recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.
--
-- * 'apntRawContent' - The raw, JSON-formatted string to use as the payload for push notifications that are based on the message template. If specified, this value overrides all other content for the message template.
apnsPushNotificationTemplate ::
  APNSPushNotificationTemplate
apnsPushNotificationTemplate =
  APNSPushNotificationTemplate'
    { _apntTitle = Nothing,
      _apntBody = Nothing,
      _apntMediaURL = Nothing,
      _apntAction = Nothing,
      _apntSound = Nothing,
      _apntURL = Nothing,
      _apntRawContent = Nothing
    }

-- | The title to use in push notifications that are based on the message template. This title appears above the notification message on a recipient's device.
apntTitle :: Lens' APNSPushNotificationTemplate (Maybe Text)
apntTitle = lens _apntTitle (\s a -> s {_apntTitle = a})

-- | The message body to use in push notifications that are based on the message template.
apntBody :: Lens' APNSPushNotificationTemplate (Maybe Text)
apntBody = lens _apntBody (\s a -> s {_apntBody = a})

-- | The URL of an image or video to display in push notifications that are based on the message template.
apntMediaURL :: Lens' APNSPushNotificationTemplate (Maybe Text)
apntMediaURL = lens _apntMediaURL (\s a -> s {_apntMediaURL = a})

-- | The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:     * OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.     * DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.     * URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.
apntAction :: Lens' APNSPushNotificationTemplate (Maybe Action)
apntAction = lens _apntAction (\s a -> s {_apntAction = a})

-- | The key for the sound to play when the recipient receives a push notification that's based on the message template. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.
apntSound :: Lens' APNSPushNotificationTemplate (Maybe Text)
apntSound = lens _apntSound (\s a -> s {_apntSound = a})

-- | The URL to open in the recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.
apntURL :: Lens' APNSPushNotificationTemplate (Maybe Text)
apntURL = lens _apntURL (\s a -> s {_apntURL = a})

-- | The raw, JSON-formatted string to use as the payload for push notifications that are based on the message template. If specified, this value overrides all other content for the message template.
apntRawContent :: Lens' APNSPushNotificationTemplate (Maybe Text)
apntRawContent = lens _apntRawContent (\s a -> s {_apntRawContent = a})

instance FromJSON APNSPushNotificationTemplate where
  parseJSON =
    withObject
      "APNSPushNotificationTemplate"
      ( \x ->
          APNSPushNotificationTemplate'
            <$> (x .:? "Title")
            <*> (x .:? "Body")
            <*> (x .:? "MediaUrl")
            <*> (x .:? "Action")
            <*> (x .:? "Sound")
            <*> (x .:? "Url")
            <*> (x .:? "RawContent")
      )

instance Hashable APNSPushNotificationTemplate

instance NFData APNSPushNotificationTemplate

instance ToJSON APNSPushNotificationTemplate where
  toJSON APNSPushNotificationTemplate' {..} =
    object
      ( catMaybes
          [ ("Title" .=) <$> _apntTitle,
            ("Body" .=) <$> _apntBody,
            ("MediaUrl" .=) <$> _apntMediaURL,
            ("Action" .=) <$> _apntAction,
            ("Sound" .=) <$> _apntSound,
            ("Url" .=) <$> _apntURL,
            ("RawContent" .=) <$> _apntRawContent
          ]
      )
