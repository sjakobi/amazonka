{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ADMMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ADMMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | Specifies the settings for a one-time message that's sent directly to an endpoint through the ADM (Amazon Device Messaging) channel.
--
--
--
-- /See:/ 'aDMMessage' smart constructor.
data ADMMessage = ADMMessage'
  { _admmSilentPush ::
      !(Maybe Bool),
    _admmImageIconURL :: !(Maybe Text),
    _admmExpiresAfter :: !(Maybe Text),
    _admmData :: !(Maybe (Map Text Text)),
    _admmTitle :: !(Maybe Text),
    _admmIconReference :: !(Maybe Text),
    _admmBody :: !(Maybe Text),
    _admmConsolidationKey :: !(Maybe Text),
    _admmSubstitutions :: !(Maybe (Map Text [Text])),
    _admmImageURL :: !(Maybe Text),
    _admmMD5 :: !(Maybe Text),
    _admmAction :: !(Maybe Action),
    _admmSound :: !(Maybe Text),
    _admmURL :: !(Maybe Text),
    _admmSmallImageIconURL :: !(Maybe Text),
    _admmRawContent :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ADMMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'admmSilentPush' - Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.
--
-- * 'admmImageIconURL' - The URL of the large icon image to display in the content view of the push notification.
--
-- * 'admmExpiresAfter' - The amount of time, in seconds, that ADM should store the message if the recipient's device is offline. Amazon Pinpoint specifies this value in the expiresAfter parameter when it sends the notification message to ADM.
--
-- * 'admmData' - The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.
--
-- * 'admmTitle' - The title to display above the notification message on the recipient's device.
--
-- * 'admmIconReference' - The icon image name of the asset saved in your app.
--
-- * 'admmBody' - The body of the notification message.
--
-- * 'admmConsolidationKey' - An arbitrary string that indicates that multiple messages are logically the same and that Amazon Device Messaging (ADM) can drop previously enqueued messages in favor of this message.
--
-- * 'admmSubstitutions' - The default message variables to use in the notification message. You can override the default variables with individual address variables.
--
-- * 'admmImageURL' - The URL of an image to display in the push notification.
--
-- * 'admmMD5' - The base64-encoded, MD5 checksum of the value specified by the Data property. ADM uses the MD5 value to verify the integrity of the data.
--
-- * 'admmAction' - The action to occur if the recipient taps the push notification. Valid values are:     * OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.     * DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.     * URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.
--
-- * 'admmSound' - The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.
--
-- * 'admmURL' - The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.
--
-- * 'admmSmallImageIconURL' - The URL of the small icon image to display in the status bar and the content view of the push notification.
--
-- * 'admmRawContent' - The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.
aDMMessage ::
  ADMMessage
aDMMessage =
  ADMMessage'
    { _admmSilentPush = Nothing,
      _admmImageIconURL = Nothing,
      _admmExpiresAfter = Nothing,
      _admmData = Nothing,
      _admmTitle = Nothing,
      _admmIconReference = Nothing,
      _admmBody = Nothing,
      _admmConsolidationKey = Nothing,
      _admmSubstitutions = Nothing,
      _admmImageURL = Nothing,
      _admmMD5 = Nothing,
      _admmAction = Nothing,
      _admmSound = Nothing,
      _admmURL = Nothing,
      _admmSmallImageIconURL = Nothing,
      _admmRawContent = Nothing
    }

-- | Specifies whether the notification is a silent push notification, which is a push notification that doesn't display on a recipient's device. Silent push notifications can be used for cases such as updating an app's configuration or supporting phone home functionality.
admmSilentPush :: Lens' ADMMessage (Maybe Bool)
admmSilentPush = lens _admmSilentPush (\s a -> s {_admmSilentPush = a})

-- | The URL of the large icon image to display in the content view of the push notification.
admmImageIconURL :: Lens' ADMMessage (Maybe Text)
admmImageIconURL = lens _admmImageIconURL (\s a -> s {_admmImageIconURL = a})

-- | The amount of time, in seconds, that ADM should store the message if the recipient's device is offline. Amazon Pinpoint specifies this value in the expiresAfter parameter when it sends the notification message to ADM.
admmExpiresAfter :: Lens' ADMMessage (Maybe Text)
admmExpiresAfter = lens _admmExpiresAfter (\s a -> s {_admmExpiresAfter = a})

-- | The JSON data payload to use for the push notification, if the notification is a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.
admmData :: Lens' ADMMessage (HashMap Text Text)
admmData = lens _admmData (\s a -> s {_admmData = a}) . _Default . _Map

-- | The title to display above the notification message on the recipient's device.
admmTitle :: Lens' ADMMessage (Maybe Text)
admmTitle = lens _admmTitle (\s a -> s {_admmTitle = a})

-- | The icon image name of the asset saved in your app.
admmIconReference :: Lens' ADMMessage (Maybe Text)
admmIconReference = lens _admmIconReference (\s a -> s {_admmIconReference = a})

-- | The body of the notification message.
admmBody :: Lens' ADMMessage (Maybe Text)
admmBody = lens _admmBody (\s a -> s {_admmBody = a})

-- | An arbitrary string that indicates that multiple messages are logically the same and that Amazon Device Messaging (ADM) can drop previously enqueued messages in favor of this message.
admmConsolidationKey :: Lens' ADMMessage (Maybe Text)
admmConsolidationKey = lens _admmConsolidationKey (\s a -> s {_admmConsolidationKey = a})

-- | The default message variables to use in the notification message. You can override the default variables with individual address variables.
admmSubstitutions :: Lens' ADMMessage (HashMap Text [Text])
admmSubstitutions = lens _admmSubstitutions (\s a -> s {_admmSubstitutions = a}) . _Default . _Map

-- | The URL of an image to display in the push notification.
admmImageURL :: Lens' ADMMessage (Maybe Text)
admmImageURL = lens _admmImageURL (\s a -> s {_admmImageURL = a})

-- | The base64-encoded, MD5 checksum of the value specified by the Data property. ADM uses the MD5 value to verify the integrity of the data.
admmMD5 :: Lens' ADMMessage (Maybe Text)
admmMD5 = lens _admmMD5 (\s a -> s {_admmMD5 = a})

-- | The action to occur if the recipient taps the push notification. Valid values are:     * OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.     * DEEP_LINK - Your app opens and displays a designated user interface in the app. This action uses the deep-linking features of the Android platform.     * URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.
admmAction :: Lens' ADMMessage (Maybe Action)
admmAction = lens _admmAction (\s a -> s {_admmAction = a})

-- | The sound to play when the recipient receives the push notification. You can use the default stream or specify the file name of a sound resource that's bundled in your app. On an Android platform, the sound file must reside in /res/raw/.
admmSound :: Lens' ADMMessage (Maybe Text)
admmSound = lens _admmSound (\s a -> s {_admmSound = a})

-- | The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.
admmURL :: Lens' ADMMessage (Maybe Text)
admmURL = lens _admmURL (\s a -> s {_admmURL = a})

-- | The URL of the small icon image to display in the status bar and the content view of the push notification.
admmSmallImageIconURL :: Lens' ADMMessage (Maybe Text)
admmSmallImageIconURL = lens _admmSmallImageIconURL (\s a -> s {_admmSmallImageIconURL = a})

-- | The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.
admmRawContent :: Lens' ADMMessage (Maybe Text)
admmRawContent = lens _admmRawContent (\s a -> s {_admmRawContent = a})

instance Hashable ADMMessage

instance NFData ADMMessage

instance ToJSON ADMMessage where
  toJSON ADMMessage' {..} =
    object
      ( catMaybes
          [ ("SilentPush" .=) <$> _admmSilentPush,
            ("ImageIconUrl" .=) <$> _admmImageIconURL,
            ("ExpiresAfter" .=) <$> _admmExpiresAfter,
            ("Data" .=) <$> _admmData,
            ("Title" .=) <$> _admmTitle,
            ("IconReference" .=) <$> _admmIconReference,
            ("Body" .=) <$> _admmBody,
            ("ConsolidationKey" .=) <$> _admmConsolidationKey,
            ("Substitutions" .=) <$> _admmSubstitutions,
            ("ImageUrl" .=) <$> _admmImageURL,
            ("MD5" .=) <$> _admmMD5,
            ("Action" .=) <$> _admmAction,
            ("Sound" .=) <$> _admmSound,
            ("Url" .=) <$> _admmURL,
            ("SmallImageIconUrl" .=) <$> _admmSmallImageIconURL,
            ("RawContent" .=) <$> _admmRawContent
          ]
      )
