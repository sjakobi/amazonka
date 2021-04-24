{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.PushNotificationTemplateResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.PushNotificationTemplateResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.APNSPushNotificationTemplate
import Network.AWS.Pinpoint.Types.AndroidPushNotificationTemplate
import Network.AWS.Pinpoint.Types.DefaultPushNotificationTemplate
import Network.AWS.Pinpoint.Types.TemplateType
import Network.AWS.Prelude

-- | Provides information about the content and settings for a message template that can be used in messages that are sent through a push notification channel.
--
--
--
-- /See:/ 'pushNotificationTemplateResponse' smart constructor.
data PushNotificationTemplateResponse = PushNotificationTemplateResponse'
  { _pTemplateDescription ::
      !( Maybe
           Text
       ),
    _pBaidu ::
      !( Maybe
           AndroidPushNotificationTemplate
       ),
    _pADM ::
      !( Maybe
           AndroidPushNotificationTemplate
       ),
    _pARN ::
      !( Maybe
           Text
       ),
    _pVersion ::
      !( Maybe
           Text
       ),
    _pDefaultSubstitutions ::
      !( Maybe
           Text
       ),
    _pAPNS ::
      !( Maybe
           APNSPushNotificationTemplate
       ),
    _pGCM ::
      !( Maybe
           AndroidPushNotificationTemplate
       ),
    _pTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _pRecommenderId ::
      !( Maybe
           Text
       ),
    _pDefault ::
      !( Maybe
           DefaultPushNotificationTemplate
       ),
    _pLastModifiedDate ::
      !Text,
    _pCreationDate ::
      !Text,
    _pTemplateType ::
      !TemplateType,
    _pTemplateName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PushNotificationTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pTemplateDescription' - The custom description of the message template.
--
-- * 'pBaidu' - The message template that's used for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
--
-- * 'pADM' - The message template that's used for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
--
-- * 'pARN' - The Amazon Resource Name (ARN) of the message template.
--
-- * 'pVersion' - The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
--
-- * 'pDefaultSubstitutions' - The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
--
-- * 'pAPNS' - The message template that's used for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
--
-- * 'pGCM' - The message template that's used for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
--
-- * 'pTags' - A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
--
-- * 'pRecommenderId' - The unique identifier for the recommender model that's used by the message template.
--
-- * 'pDefault' - The default message template that's used for push notification channels.
--
-- * 'pLastModifiedDate' - The date, in ISO 8601 format, when the message template was last modified.
--
-- * 'pCreationDate' - The date, in ISO 8601 format, when the message template was created.
--
-- * 'pTemplateType' - The type of channel that the message template is designed for. For a push notification template, this value is PUSH.
--
-- * 'pTemplateName' - The name of the message template.
pushNotificationTemplateResponse ::
  -- | 'pLastModifiedDate'
  Text ->
  -- | 'pCreationDate'
  Text ->
  -- | 'pTemplateType'
  TemplateType ->
  -- | 'pTemplateName'
  Text ->
  PushNotificationTemplateResponse
pushNotificationTemplateResponse
  pLastModifiedDate_
  pCreationDate_
  pTemplateType_
  pTemplateName_ =
    PushNotificationTemplateResponse'
      { _pTemplateDescription =
          Nothing,
        _pBaidu = Nothing,
        _pADM = Nothing,
        _pARN = Nothing,
        _pVersion = Nothing,
        _pDefaultSubstitutions = Nothing,
        _pAPNS = Nothing,
        _pGCM = Nothing,
        _pTags = Nothing,
        _pRecommenderId = Nothing,
        _pDefault = Nothing,
        _pLastModifiedDate = pLastModifiedDate_,
        _pCreationDate = pCreationDate_,
        _pTemplateType = pTemplateType_,
        _pTemplateName = pTemplateName_
      }

-- | The custom description of the message template.
pTemplateDescription :: Lens' PushNotificationTemplateResponse (Maybe Text)
pTemplateDescription = lens _pTemplateDescription (\s a -> s {_pTemplateDescription = a})

-- | The message template that's used for the Baidu (Baidu Cloud Push) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
pBaidu :: Lens' PushNotificationTemplateResponse (Maybe AndroidPushNotificationTemplate)
pBaidu = lens _pBaidu (\s a -> s {_pBaidu = a})

-- | The message template that's used for the ADM (Amazon Device Messaging) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
pADM :: Lens' PushNotificationTemplateResponse (Maybe AndroidPushNotificationTemplate)
pADM = lens _pADM (\s a -> s {_pADM = a})

-- | The Amazon Resource Name (ARN) of the message template.
pARN :: Lens' PushNotificationTemplateResponse (Maybe Text)
pARN = lens _pARN (\s a -> s {_pARN = a})

-- | The unique identifier, as an integer, for the active version of the message template, or the version of the template that you specified by using the version parameter in your request.
pVersion :: Lens' PushNotificationTemplateResponse (Maybe Text)
pVersion = lens _pVersion (\s a -> s {_pVersion = a})

-- | The JSON object that specifies the default values that are used for message variables in the message template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the default value for that variable.
pDefaultSubstitutions :: Lens' PushNotificationTemplateResponse (Maybe Text)
pDefaultSubstitutions = lens _pDefaultSubstitutions (\s a -> s {_pDefaultSubstitutions = a})

-- | The message template that's used for the APNs (Apple Push Notification service) channel. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
pAPNS :: Lens' PushNotificationTemplateResponse (Maybe APNSPushNotificationTemplate)
pAPNS = lens _pAPNS (\s a -> s {_pAPNS = a})

-- | The message template that's used for the GCM channel, which is used to send notifications through the Firebase Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service. This message template overrides the default template for push notification channels (DefaultPushNotificationTemplate).
pGCM :: Lens' PushNotificationTemplateResponse (Maybe AndroidPushNotificationTemplate)
pGCM = lens _pGCM (\s a -> s {_pGCM = a})

-- | A string-to-string map of key-value pairs that identifies the tags that are associated with the message template. Each tag consists of a required tag key and an associated tag value.
pTags :: Lens' PushNotificationTemplateResponse (HashMap Text Text)
pTags = lens _pTags (\s a -> s {_pTags = a}) . _Default . _Map

-- | The unique identifier for the recommender model that's used by the message template.
pRecommenderId :: Lens' PushNotificationTemplateResponse (Maybe Text)
pRecommenderId = lens _pRecommenderId (\s a -> s {_pRecommenderId = a})

-- | The default message template that's used for push notification channels.
pDefault :: Lens' PushNotificationTemplateResponse (Maybe DefaultPushNotificationTemplate)
pDefault = lens _pDefault (\s a -> s {_pDefault = a})

-- | The date, in ISO 8601 format, when the message template was last modified.
pLastModifiedDate :: Lens' PushNotificationTemplateResponse Text
pLastModifiedDate = lens _pLastModifiedDate (\s a -> s {_pLastModifiedDate = a})

-- | The date, in ISO 8601 format, when the message template was created.
pCreationDate :: Lens' PushNotificationTemplateResponse Text
pCreationDate = lens _pCreationDate (\s a -> s {_pCreationDate = a})

-- | The type of channel that the message template is designed for. For a push notification template, this value is PUSH.
pTemplateType :: Lens' PushNotificationTemplateResponse TemplateType
pTemplateType = lens _pTemplateType (\s a -> s {_pTemplateType = a})

-- | The name of the message template.
pTemplateName :: Lens' PushNotificationTemplateResponse Text
pTemplateName = lens _pTemplateName (\s a -> s {_pTemplateName = a})

instance FromJSON PushNotificationTemplateResponse where
  parseJSON =
    withObject
      "PushNotificationTemplateResponse"
      ( \x ->
          PushNotificationTemplateResponse'
            <$> (x .:? "TemplateDescription")
            <*> (x .:? "Baidu")
            <*> (x .:? "ADM")
            <*> (x .:? "Arn")
            <*> (x .:? "Version")
            <*> (x .:? "DefaultSubstitutions")
            <*> (x .:? "APNS")
            <*> (x .:? "GCM")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "RecommenderId")
            <*> (x .:? "Default")
            <*> (x .: "LastModifiedDate")
            <*> (x .: "CreationDate")
            <*> (x .: "TemplateType")
            <*> (x .: "TemplateName")
      )

instance Hashable PushNotificationTemplateResponse

instance NFData PushNotificationTemplateResponse
