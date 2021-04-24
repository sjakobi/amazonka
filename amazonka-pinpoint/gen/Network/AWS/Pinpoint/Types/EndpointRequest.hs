{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EndpointRequest where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ChannelType
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointUser
import Network.AWS.Prelude

-- | Specifies the channel type and other settings for an endpoint.
--
--
--
-- /See:/ 'endpointRequest' smart constructor.
data EndpointRequest = EndpointRequest'
  { _endUser ::
      !(Maybe EndpointUser),
    _endAddress :: !(Maybe Text),
    _endChannelType :: !(Maybe ChannelType),
    _endOptOut :: !(Maybe Text),
    _endDemographic ::
      !(Maybe EndpointDemographic),
    _endAttributes ::
      !(Maybe (Map Text [Text])),
    _endEndpointStatus :: !(Maybe Text),
    _endMetrics ::
      !(Maybe (Map Text Double)),
    _endRequestId :: !(Maybe Text),
    _endEffectiveDate :: !(Maybe Text),
    _endLocation ::
      !(Maybe EndpointLocation)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'endUser' - One or more custom attributes that describe the user who's associated with the endpoint.
--
-- * 'endAddress' - The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For a push-notification channel, use the token provided by the push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.
--
-- * 'endChannelType' - The channel to use when sending messages or push notifications to the endpoint.
--
-- * 'endOptOut' - Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.
--
-- * 'endDemographic' - The demographic information for the endpoint, such as the time zone and platform.
--
-- * 'endAttributes' - One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: ["Science", "Music", "Travel"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive. An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.
--
-- * 'endEndpointStatus' - Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint. Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.
--
-- * 'endMetrics' - One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.
--
-- * 'endRequestId' - The unique identifier for the most recent request to update the endpoint.
--
-- * 'endEffectiveDate' - The date and time, in ISO 8601 format, when the endpoint is updated.
--
-- * 'endLocation' - The geographic information for the endpoint.
endpointRequest ::
  EndpointRequest
endpointRequest =
  EndpointRequest'
    { _endUser = Nothing,
      _endAddress = Nothing,
      _endChannelType = Nothing,
      _endOptOut = Nothing,
      _endDemographic = Nothing,
      _endAttributes = Nothing,
      _endEndpointStatus = Nothing,
      _endMetrics = Nothing,
      _endRequestId = Nothing,
      _endEffectiveDate = Nothing,
      _endLocation = Nothing
    }

-- | One or more custom attributes that describe the user who's associated with the endpoint.
endUser :: Lens' EndpointRequest (Maybe EndpointUser)
endUser = lens _endUser (\s a -> s {_endUser = a})

-- | The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For a push-notification channel, use the token provided by the push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.
endAddress :: Lens' EndpointRequest (Maybe Text)
endAddress = lens _endAddress (\s a -> s {_endAddress = a})

-- | The channel to use when sending messages or push notifications to the endpoint.
endChannelType :: Lens' EndpointRequest (Maybe ChannelType)
endChannelType = lens _endChannelType (\s a -> s {_endChannelType = a})

-- | Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.
endOptOut :: Lens' EndpointRequest (Maybe Text)
endOptOut = lens _endOptOut (\s a -> s {_endOptOut = a})

-- | The demographic information for the endpoint, such as the time zone and platform.
endDemographic :: Lens' EndpointRequest (Maybe EndpointDemographic)
endDemographic = lens _endDemographic (\s a -> s {_endDemographic = a})

-- | One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: ["Science", "Music", "Travel"]. You can use these attributes as filter criteria when you create segments. Attribute names are case sensitive. An attribute name can contain up to 50 characters. An attribute value can contain up to 100 characters. When you define the name of a custom attribute, avoid using the following characters: number sign (#), colon (:), question mark (?), backslash (\), and slash (/). The Amazon Pinpoint console can't display attribute names that contain these characters. This restriction doesn't apply to attribute values.
endAttributes :: Lens' EndpointRequest (HashMap Text [Text])
endAttributes = lens _endAttributes (\s a -> s {_endAttributes = a}) . _Default . _Map

-- | Specifies whether to send messages or push notifications to the endpoint. Valid values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint. Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.
endEndpointStatus :: Lens' EndpointRequest (Maybe Text)
endEndpointStatus = lens _endEndpointStatus (\s a -> s {_endEndpointStatus = a})

-- | One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.
endMetrics :: Lens' EndpointRequest (HashMap Text Double)
endMetrics = lens _endMetrics (\s a -> s {_endMetrics = a}) . _Default . _Map

-- | The unique identifier for the most recent request to update the endpoint.
endRequestId :: Lens' EndpointRequest (Maybe Text)
endRequestId = lens _endRequestId (\s a -> s {_endRequestId = a})

-- | The date and time, in ISO 8601 format, when the endpoint is updated.
endEffectiveDate :: Lens' EndpointRequest (Maybe Text)
endEffectiveDate = lens _endEffectiveDate (\s a -> s {_endEffectiveDate = a})

-- | The geographic information for the endpoint.
endLocation :: Lens' EndpointRequest (Maybe EndpointLocation)
endLocation = lens _endLocation (\s a -> s {_endLocation = a})

instance Hashable EndpointRequest

instance NFData EndpointRequest

instance ToJSON EndpointRequest where
  toJSON EndpointRequest' {..} =
    object
      ( catMaybes
          [ ("User" .=) <$> _endUser,
            ("Address" .=) <$> _endAddress,
            ("ChannelType" .=) <$> _endChannelType,
            ("OptOut" .=) <$> _endOptOut,
            ("Demographic" .=) <$> _endDemographic,
            ("Attributes" .=) <$> _endAttributes,
            ("EndpointStatus" .=) <$> _endEndpointStatus,
            ("Metrics" .=) <$> _endMetrics,
            ("RequestId" .=) <$> _endRequestId,
            ("EffectiveDate" .=) <$> _endEffectiveDate,
            ("Location" .=) <$> _endLocation
          ]
      )
