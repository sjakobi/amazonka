{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.AndroidPushNotificationTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.AndroidPushNotificationTemplate where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | Specifies channel-specific content and settings for a message template that can be used in push notifications that are sent through the ADM (Amazon Device Messaging), Baidu (Baidu Cloud Push), or GCM (Firebase Cloud Messaging, formerly Google Cloud Messaging) channel.
--
--
--
-- /See:/ 'androidPushNotificationTemplate' smart constructor.
data AndroidPushNotificationTemplate = AndroidPushNotificationTemplate'
  { _aImageIconURL ::
      !( Maybe
           Text
       ),
    _aTitle ::
      !( Maybe
           Text
       ),
    _aBody ::
      !( Maybe
           Text
       ),
    _aImageURL ::
      !( Maybe
           Text
       ),
    _aAction ::
      !( Maybe
           Action
       ),
    _aSound ::
      !( Maybe
           Text
       ),
    _aURL ::
      !( Maybe
           Text
       ),
    _aSmallImageIconURL ::
      !( Maybe
           Text
       ),
    _aRawContent ::
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

-- | Creates a value of 'AndroidPushNotificationTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aImageIconURL' - The URL of the large icon image to display in the content view of a push notification that's based on the message template.
--
-- * 'aTitle' - The title to use in a push notification that's based on the message template. This title appears above the notification message on a recipient's device.
--
-- * 'aBody' - The message body to use in a push notification that's based on the message template.
--
-- * 'aImageURL' - The URL of an image to display in a push notification that's based on the message template.
--
-- * 'aAction' - The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:     * OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.     * DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.     * URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.
--
-- * 'aSound' - The sound to play when a recipient receives a push notification that's based on the message template. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.
--
-- * 'aURL' - The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.
--
-- * 'aSmallImageIconURL' - The URL of the small icon image to display in the status bar and the content view of a push notification that's based on the message template.
--
-- * 'aRawContent' - The raw, JSON-formatted string to use as the payload for a push notification that's based on the message template. If specified, this value overrides all other content for the message template.
androidPushNotificationTemplate ::
  AndroidPushNotificationTemplate
androidPushNotificationTemplate =
  AndroidPushNotificationTemplate'
    { _aImageIconURL =
        Nothing,
      _aTitle = Nothing,
      _aBody = Nothing,
      _aImageURL = Nothing,
      _aAction = Nothing,
      _aSound = Nothing,
      _aURL = Nothing,
      _aSmallImageIconURL = Nothing,
      _aRawContent = Nothing
    }

-- | The URL of the large icon image to display in the content view of a push notification that's based on the message template.
aImageIconURL :: Lens' AndroidPushNotificationTemplate (Maybe Text)
aImageIconURL = lens _aImageIconURL (\s a -> s {_aImageIconURL = a})

-- | The title to use in a push notification that's based on the message template. This title appears above the notification message on a recipient's device.
aTitle :: Lens' AndroidPushNotificationTemplate (Maybe Text)
aTitle = lens _aTitle (\s a -> s {_aTitle = a})

-- | The message body to use in a push notification that's based on the message template.
aBody :: Lens' AndroidPushNotificationTemplate (Maybe Text)
aBody = lens _aBody (\s a -> s {_aBody = a})

-- | The URL of an image to display in a push notification that's based on the message template.
aImageURL :: Lens' AndroidPushNotificationTemplate (Maybe Text)
aImageURL = lens _aImageURL (\s a -> s {_aImageURL = a})

-- | The action to occur if a recipient taps a push notification that's based on the message template. Valid values are:     * OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.     * DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.     * URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.
aAction :: Lens' AndroidPushNotificationTemplate (Maybe Action)
aAction = lens _aAction (\s a -> s {_aAction = a})

-- | The sound to play when a recipient receives a push notification that's based on the message template. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.
aSound :: Lens' AndroidPushNotificationTemplate (Maybe Text)
aSound = lens _aSound (\s a -> s {_aSound = a})

-- | The URL to open in a recipient's default mobile browser, if a recipient taps a push notification that's based on the message template and the value of the Action property is URL.
aURL :: Lens' AndroidPushNotificationTemplate (Maybe Text)
aURL = lens _aURL (\s a -> s {_aURL = a})

-- | The URL of the small icon image to display in the status bar and the content view of a push notification that's based on the message template.
aSmallImageIconURL :: Lens' AndroidPushNotificationTemplate (Maybe Text)
aSmallImageIconURL = lens _aSmallImageIconURL (\s a -> s {_aSmallImageIconURL = a})

-- | The raw, JSON-formatted string to use as the payload for a push notification that's based on the message template. If specified, this value overrides all other content for the message template.
aRawContent :: Lens' AndroidPushNotificationTemplate (Maybe Text)
aRawContent = lens _aRawContent (\s a -> s {_aRawContent = a})

instance FromJSON AndroidPushNotificationTemplate where
  parseJSON =
    withObject
      "AndroidPushNotificationTemplate"
      ( \x ->
          AndroidPushNotificationTemplate'
            <$> (x .:? "ImageIconUrl")
            <*> (x .:? "Title")
            <*> (x .:? "Body")
            <*> (x .:? "ImageUrl")
            <*> (x .:? "Action")
            <*> (x .:? "Sound")
            <*> (x .:? "Url")
            <*> (x .:? "SmallImageIconUrl")
            <*> (x .:? "RawContent")
      )

instance Hashable AndroidPushNotificationTemplate

instance NFData AndroidPushNotificationTemplate

instance ToJSON AndroidPushNotificationTemplate where
  toJSON AndroidPushNotificationTemplate' {..} =
    object
      ( catMaybes
          [ ("ImageIconUrl" .=) <$> _aImageIconURL,
            ("Title" .=) <$> _aTitle,
            ("Body" .=) <$> _aBody,
            ("ImageUrl" .=) <$> _aImageURL,
            ("Action" .=) <$> _aAction,
            ("Sound" .=) <$> _aSound,
            ("Url" .=) <$> _aURL,
            ("SmallImageIconUrl" .=) <$> _aSmallImageIconURL,
            ("RawContent" .=) <$> _aRawContent
          ]
      )
