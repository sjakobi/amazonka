{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSMessage where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.Action
import Network.AWS.Prelude

-- | Specifies the settings for a one-time message that's sent directly to an endpoint through the APNs (Apple Push Notification service) channel.
--
--
--
-- /See:/ 'apnsMessage' smart constructor.
data APNSMessage = APNSMessage'
  { _amSilentPush ::
      !(Maybe Bool),
    _amCollapseId :: !(Maybe Text),
    _amData :: !(Maybe (Map Text Text)),
    _amCategory :: !(Maybe Text),
    _amTitle :: !(Maybe Text),
    _amBody :: !(Maybe Text),
    _amTimeToLive :: !(Maybe Int),
    _amAPNSPushType :: !(Maybe Text),
    _amPreferredAuthenticationMethod ::
      !(Maybe Text),
    _amPriority :: !(Maybe Text),
    _amMediaURL :: !(Maybe Text),
    _amSubstitutions :: !(Maybe (Map Text [Text])),
    _amAction :: !(Maybe Action),
    _amSound :: !(Maybe Text),
    _amThreadId :: !(Maybe Text),
    _amURL :: !(Maybe Text),
    _amRawContent :: !(Maybe Text),
    _amBadge :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'APNSMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amSilentPush' - Specifies whether the notification is a silent push notification. A silent (or background) push notification isn't displayed on recipients' devices. You can use silent push notifications to make small updates to your app, or to display messages in an in-app message center. Amazon Pinpoint uses this property to determine the correct value for the apns-push-type request header when it sends the notification message to APNs. If you specify a value of true for this property, Amazon Pinpoint sets the value for the apns-push-type header field to background.
--
-- * 'amCollapseId' - An arbitrary identifier that, if assigned to multiple messages, APNs uses to coalesce the messages into a single push notification instead of delivering each message individually. This value can't exceed 64 bytes. Amazon Pinpoint specifies this value in the apns-collapse-id request header when it sends the notification message to APNs.
--
-- * 'amData' - The JSON payload to use for a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.
--
-- * 'amCategory' - The key that indicates the notification type for the push notification. This key is a value that's defined by the identifier property of one of your app's registered categories.
--
-- * 'amTitle' - The title to display above the notification message on the recipient's device.
--
-- * 'amBody' - The body of the notification message.
--
-- * 'amTimeToLive' - The amount of time, in seconds, that APNs should store and attempt to deliver the push notification, if the service is unable to deliver the notification the first time. If this value is 0, APNs treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again. Amazon Pinpoint specifies this value in the apns-expiration request header when it sends the notification message to APNs.
--
-- * 'amAPNSPushType' - The type of push notification to send. Valid values are:     * alert - For a standard notification that's displayed on recipients' devices and prompts a recipient to interact with the notification.     * background - For a silent notification that delivers content in the background and isn't displayed on recipients' devices.     * complication - For a notification that contains update information for an app’s complication timeline.     * fileprovider - For a notification that signals changes to a File Provider extension.     * mdm - For a notification that tells managed devices to contact the MDM server.     * voip - For a notification that provides information about an incoming VoIP call. Amazon Pinpoint specifies this value in the apns-push-type request header when it sends the notification message to APNs. If you don't specify a value for this property, Amazon Pinpoint sets the value to alert or background automatically, based on the value that you specify for the SilentPush or RawContent property of the message. For more information about the apns-push-type request header, see <https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns Sending Notification Requests to APNs> on the Apple Developer website.
--
-- * 'amPreferredAuthenticationMethod' - The authentication method that you want Amazon Pinpoint to use when authenticating with APNs, CERTIFICATE or TOKEN.
--
-- * 'amPriority' - para>5 - Low priority, the notification might be delayed, delivered as part of a group, or throttled. /listitem>     * 10 - High priority, the notification is sent immediately. This is the default value. A high priority notification should trigger an alert, play a sound, or badge your app's icon on the recipient's device. /para> Amazon Pinpoint specifies this value in the apns-priority request header when it sends the notification message to APNs. The equivalent values for Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), are normal, for 5, and high, for 10. If you specify an FCM value for this property, Amazon Pinpoint accepts and converts the value to the corresponding APNs value.
--
-- * 'amMediaURL' - The URL of an image or video to display in the push notification.
--
-- * 'amSubstitutions' - The default message variables to use in the notification message. You can override these default variables with individual address variables.
--
-- * 'amAction' - The action to occur if the recipient taps the push notification. Valid values are:     * OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.     * DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.     * URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.
--
-- * 'amSound' - The key for the sound to play when the recipient receives the push notification. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.
--
-- * 'amThreadId' - The key that represents your app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.
--
-- * 'amURL' - The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.
--
-- * 'amRawContent' - The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.
--
-- * 'amBadge' - The key that indicates whether and how to modify the badge of your app's icon when the recipient receives the push notification. If this key isn't included in the dictionary, the badge doesn't change. To remove the badge, set this value to 0.
apnsMessage ::
  APNSMessage
apnsMessage =
  APNSMessage'
    { _amSilentPush = Nothing,
      _amCollapseId = Nothing,
      _amData = Nothing,
      _amCategory = Nothing,
      _amTitle = Nothing,
      _amBody = Nothing,
      _amTimeToLive = Nothing,
      _amAPNSPushType = Nothing,
      _amPreferredAuthenticationMethod = Nothing,
      _amPriority = Nothing,
      _amMediaURL = Nothing,
      _amSubstitutions = Nothing,
      _amAction = Nothing,
      _amSound = Nothing,
      _amThreadId = Nothing,
      _amURL = Nothing,
      _amRawContent = Nothing,
      _amBadge = Nothing
    }

-- | Specifies whether the notification is a silent push notification. A silent (or background) push notification isn't displayed on recipients' devices. You can use silent push notifications to make small updates to your app, or to display messages in an in-app message center. Amazon Pinpoint uses this property to determine the correct value for the apns-push-type request header when it sends the notification message to APNs. If you specify a value of true for this property, Amazon Pinpoint sets the value for the apns-push-type header field to background.
amSilentPush :: Lens' APNSMessage (Maybe Bool)
amSilentPush = lens _amSilentPush (\s a -> s {_amSilentPush = a})

-- | An arbitrary identifier that, if assigned to multiple messages, APNs uses to coalesce the messages into a single push notification instead of delivering each message individually. This value can't exceed 64 bytes. Amazon Pinpoint specifies this value in the apns-collapse-id request header when it sends the notification message to APNs.
amCollapseId :: Lens' APNSMessage (Maybe Text)
amCollapseId = lens _amCollapseId (\s a -> s {_amCollapseId = a})

-- | The JSON payload to use for a silent push notification. This payload is added to the data.pinpoint.jsonBody object of the notification.
amData :: Lens' APNSMessage (HashMap Text Text)
amData = lens _amData (\s a -> s {_amData = a}) . _Default . _Map

-- | The key that indicates the notification type for the push notification. This key is a value that's defined by the identifier property of one of your app's registered categories.
amCategory :: Lens' APNSMessage (Maybe Text)
amCategory = lens _amCategory (\s a -> s {_amCategory = a})

-- | The title to display above the notification message on the recipient's device.
amTitle :: Lens' APNSMessage (Maybe Text)
amTitle = lens _amTitle (\s a -> s {_amTitle = a})

-- | The body of the notification message.
amBody :: Lens' APNSMessage (Maybe Text)
amBody = lens _amBody (\s a -> s {_amBody = a})

-- | The amount of time, in seconds, that APNs should store and attempt to deliver the push notification, if the service is unable to deliver the notification the first time. If this value is 0, APNs treats the notification as if it expires immediately and the service doesn't store or try to deliver the notification again. Amazon Pinpoint specifies this value in the apns-expiration request header when it sends the notification message to APNs.
amTimeToLive :: Lens' APNSMessage (Maybe Int)
amTimeToLive = lens _amTimeToLive (\s a -> s {_amTimeToLive = a})

-- | The type of push notification to send. Valid values are:     * alert - For a standard notification that's displayed on recipients' devices and prompts a recipient to interact with the notification.     * background - For a silent notification that delivers content in the background and isn't displayed on recipients' devices.     * complication - For a notification that contains update information for an app’s complication timeline.     * fileprovider - For a notification that signals changes to a File Provider extension.     * mdm - For a notification that tells managed devices to contact the MDM server.     * voip - For a notification that provides information about an incoming VoIP call. Amazon Pinpoint specifies this value in the apns-push-type request header when it sends the notification message to APNs. If you don't specify a value for this property, Amazon Pinpoint sets the value to alert or background automatically, based on the value that you specify for the SilentPush or RawContent property of the message. For more information about the apns-push-type request header, see <https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns Sending Notification Requests to APNs> on the Apple Developer website.
amAPNSPushType :: Lens' APNSMessage (Maybe Text)
amAPNSPushType = lens _amAPNSPushType (\s a -> s {_amAPNSPushType = a})

-- | The authentication method that you want Amazon Pinpoint to use when authenticating with APNs, CERTIFICATE or TOKEN.
amPreferredAuthenticationMethod :: Lens' APNSMessage (Maybe Text)
amPreferredAuthenticationMethod = lens _amPreferredAuthenticationMethod (\s a -> s {_amPreferredAuthenticationMethod = a})

-- | para>5 - Low priority, the notification might be delayed, delivered as part of a group, or throttled. /listitem>     * 10 - High priority, the notification is sent immediately. This is the default value. A high priority notification should trigger an alert, play a sound, or badge your app's icon on the recipient's device. /para> Amazon Pinpoint specifies this value in the apns-priority request header when it sends the notification message to APNs. The equivalent values for Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), are normal, for 5, and high, for 10. If you specify an FCM value for this property, Amazon Pinpoint accepts and converts the value to the corresponding APNs value.
amPriority :: Lens' APNSMessage (Maybe Text)
amPriority = lens _amPriority (\s a -> s {_amPriority = a})

-- | The URL of an image or video to display in the push notification.
amMediaURL :: Lens' APNSMessage (Maybe Text)
amMediaURL = lens _amMediaURL (\s a -> s {_amMediaURL = a})

-- | The default message variables to use in the notification message. You can override these default variables with individual address variables.
amSubstitutions :: Lens' APNSMessage (HashMap Text [Text])
amSubstitutions = lens _amSubstitutions (\s a -> s {_amSubstitutions = a}) . _Default . _Map

-- | The action to occur if the recipient taps the push notification. Valid values are:     * OPEN_APP - Your app opens or it becomes the foreground app if it was sent to the background. This is the default action.     * DEEP_LINK - Your app opens and displays a designated user interface in the app. This setting uses the deep-linking features of the iOS platform.     * URL - The default mobile browser on the recipient's device opens and loads the web page at a URL that you specify.
amAction :: Lens' APNSMessage (Maybe Action)
amAction = lens _amAction (\s a -> s {_amAction = a})

-- | The key for the sound to play when the recipient receives the push notification. The value for this key is the name of a sound file in your app's main bundle or the Library/Sounds folder in your app's data container. If the sound file can't be found or you specify default for the value, the system plays the default alert sound.
amSound :: Lens' APNSMessage (Maybe Text)
amSound = lens _amSound (\s a -> s {_amSound = a})

-- | The key that represents your app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.
amThreadId :: Lens' APNSMessage (Maybe Text)
amThreadId = lens _amThreadId (\s a -> s {_amThreadId = a})

-- | The URL to open in the recipient's default mobile browser, if a recipient taps the push notification and the value of the Action property is URL.
amURL :: Lens' APNSMessage (Maybe Text)
amURL = lens _amURL (\s a -> s {_amURL = a})

-- | The raw, JSON-formatted string to use as the payload for the notification message. If specified, this value overrides all other content for the message.
amRawContent :: Lens' APNSMessage (Maybe Text)
amRawContent = lens _amRawContent (\s a -> s {_amRawContent = a})

-- | The key that indicates whether and how to modify the badge of your app's icon when the recipient receives the push notification. If this key isn't included in the dictionary, the badge doesn't change. To remove the badge, set this value to 0.
amBadge :: Lens' APNSMessage (Maybe Int)
amBadge = lens _amBadge (\s a -> s {_amBadge = a})

instance Hashable APNSMessage

instance NFData APNSMessage

instance ToJSON APNSMessage where
  toJSON APNSMessage' {..} =
    object
      ( catMaybes
          [ ("SilentPush" .=) <$> _amSilentPush,
            ("CollapseId" .=) <$> _amCollapseId,
            ("Data" .=) <$> _amData,
            ("Category" .=) <$> _amCategory,
            ("Title" .=) <$> _amTitle,
            ("Body" .=) <$> _amBody,
            ("TimeToLive" .=) <$> _amTimeToLive,
            ("APNSPushType" .=) <$> _amAPNSPushType,
            ("PreferredAuthenticationMethod" .=)
              <$> _amPreferredAuthenticationMethod,
            ("Priority" .=) <$> _amPriority,
            ("MediaUrl" .=) <$> _amMediaURL,
            ("Substitutions" .=) <$> _amSubstitutions,
            ("Action" .=) <$> _amAction,
            ("Sound" .=) <$> _amSound,
            ("ThreadId" .=) <$> _amThreadId,
            ("Url" .=) <$> _amURL,
            ("RawContent" .=) <$> _amRawContent,
            ("Badge" .=) <$> _amBadge
          ]
      )
