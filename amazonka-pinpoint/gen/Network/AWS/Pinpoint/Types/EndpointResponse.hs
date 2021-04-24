{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.EndpointResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.EndpointResponse where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.ChannelType
import Network.AWS.Pinpoint.Types.EndpointDemographic
import Network.AWS.Pinpoint.Types.EndpointLocation
import Network.AWS.Pinpoint.Types.EndpointUser
import Network.AWS.Prelude

-- | Provides information about the channel type and other settings for an endpoint.
--
--
--
-- /See:/ 'endpointResponse' smart constructor.
data EndpointResponse = EndpointResponse'
  { _erApplicationId ::
      !(Maybe Text),
    _erUser :: !(Maybe EndpointUser),
    _erAddress :: !(Maybe Text),
    _erChannelType ::
      !(Maybe ChannelType),
    _erCohortId :: !(Maybe Text),
    _erId :: !(Maybe Text),
    _erCreationDate :: !(Maybe Text),
    _erOptOut :: !(Maybe Text),
    _erDemographic ::
      !(Maybe EndpointDemographic),
    _erAttributes ::
      !(Maybe (Map Text [Text])),
    _erEndpointStatus :: !(Maybe Text),
    _erMetrics ::
      !(Maybe (Map Text Double)),
    _erRequestId :: !(Maybe Text),
    _erEffectiveDate :: !(Maybe Text),
    _erLocation ::
      !(Maybe EndpointLocation)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erApplicationId' - The unique identifier for the application that's associated with the endpoint.
--
-- * 'erUser' - One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.
--
-- * 'erAddress' - The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For example, the address for a push-notification channel is typically the token provided by a push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. The address for the SMS channel is a phone number in E.164 format, such as +12065550100. The address for the email channel is an email address.
--
-- * 'erChannelType' - The channel that's used when sending messages or push notifications to the endpoint.
--
-- * 'erCohortId' - A number from 0-99 that represents the cohort that the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an application. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for campaigns.
--
-- * 'erId' - The unique identifier that you assigned to the endpoint. The identifier should be a globally unique identifier (GUID) to ensure that it doesn't conflict with other endpoint identifiers that are associated with the application.
--
-- * 'erCreationDate' - The date and time, in ISO 8601 format, when the endpoint was created.
--
-- * 'erOptOut' - Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.
--
-- * 'erDemographic' - The demographic information for the endpoint, such as the time zone and platform.
--
-- * 'erAttributes' - One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: ["Science", "Music", "Travel"]. You can use these attributes as filter criteria when you create segments.
--
-- * 'erEndpointStatus' - Specifies whether messages or push notifications are sent to the endpoint. Possible values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint. Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.
--
-- * 'erMetrics' - One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.
--
-- * 'erRequestId' - The unique identifier for the most recent request to update the endpoint.
--
-- * 'erEffectiveDate' - The date and time, in ISO 8601 format, when the endpoint was last updated.
--
-- * 'erLocation' - The geographic information for the endpoint.
endpointResponse ::
  EndpointResponse
endpointResponse =
  EndpointResponse'
    { _erApplicationId = Nothing,
      _erUser = Nothing,
      _erAddress = Nothing,
      _erChannelType = Nothing,
      _erCohortId = Nothing,
      _erId = Nothing,
      _erCreationDate = Nothing,
      _erOptOut = Nothing,
      _erDemographic = Nothing,
      _erAttributes = Nothing,
      _erEndpointStatus = Nothing,
      _erMetrics = Nothing,
      _erRequestId = Nothing,
      _erEffectiveDate = Nothing,
      _erLocation = Nothing
    }

-- | The unique identifier for the application that's associated with the endpoint.
erApplicationId :: Lens' EndpointResponse (Maybe Text)
erApplicationId = lens _erApplicationId (\s a -> s {_erApplicationId = a})

-- | One or more custom user attributes that your app reports to Amazon Pinpoint for the user who's associated with the endpoint.
erUser :: Lens' EndpointResponse (Maybe EndpointUser)
erUser = lens _erUser (\s a -> s {_erUser = a})

-- | The destination address for messages or push notifications that you send to the endpoint. The address varies by channel. For example, the address for a push-notification channel is typically the token provided by a push notification service, such as an Apple Push Notification service (APNs) device token or a Firebase Cloud Messaging (FCM) registration token. The address for the SMS channel is a phone number in E.164 format, such as +12065550100. The address for the email channel is an email address.
erAddress :: Lens' EndpointResponse (Maybe Text)
erAddress = lens _erAddress (\s a -> s {_erAddress = a})

-- | The channel that's used when sending messages or push notifications to the endpoint.
erChannelType :: Lens' EndpointResponse (Maybe ChannelType)
erChannelType = lens _erChannelType (\s a -> s {_erChannelType = a})

-- | A number from 0-99 that represents the cohort that the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an application. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for campaigns.
erCohortId :: Lens' EndpointResponse (Maybe Text)
erCohortId = lens _erCohortId (\s a -> s {_erCohortId = a})

-- | The unique identifier that you assigned to the endpoint. The identifier should be a globally unique identifier (GUID) to ensure that it doesn't conflict with other endpoint identifiers that are associated with the application.
erId :: Lens' EndpointResponse (Maybe Text)
erId = lens _erId (\s a -> s {_erId = a})

-- | The date and time, in ISO 8601 format, when the endpoint was created.
erCreationDate :: Lens' EndpointResponse (Maybe Text)
erCreationDate = lens _erCreationDate (\s a -> s {_erCreationDate = a})

-- | Specifies whether the user who's associated with the endpoint has opted out of receiving messages and push notifications from you. Possible values are: ALL, the user has opted out and doesn't want to receive any messages or push notifications; and, NONE, the user hasn't opted out and wants to receive all messages and push notifications.
erOptOut :: Lens' EndpointResponse (Maybe Text)
erOptOut = lens _erOptOut (\s a -> s {_erOptOut = a})

-- | The demographic information for the endpoint, such as the time zone and platform.
erDemographic :: Lens' EndpointResponse (Maybe EndpointDemographic)
erDemographic = lens _erDemographic (\s a -> s {_erDemographic = a})

-- | One or more custom attributes that describe the endpoint by associating a name with an array of values. For example, the value of a custom attribute named Interests might be: ["Science", "Music", "Travel"]. You can use these attributes as filter criteria when you create segments.
erAttributes :: Lens' EndpointResponse (HashMap Text [Text])
erAttributes = lens _erAttributes (\s a -> s {_erAttributes = a}) . _Default . _Map

-- | Specifies whether messages or push notifications are sent to the endpoint. Possible values are: ACTIVE, messages are sent to the endpoint; and, INACTIVE, messages aren’t sent to the endpoint. Amazon Pinpoint automatically sets this value to ACTIVE when you create an endpoint or update an existing endpoint. Amazon Pinpoint automatically sets this value to INACTIVE if you update another endpoint that has the same address specified by the Address property.
erEndpointStatus :: Lens' EndpointResponse (Maybe Text)
erEndpointStatus = lens _erEndpointStatus (\s a -> s {_erEndpointStatus = a})

-- | One or more custom metrics that your app reports to Amazon Pinpoint for the endpoint.
erMetrics :: Lens' EndpointResponse (HashMap Text Double)
erMetrics = lens _erMetrics (\s a -> s {_erMetrics = a}) . _Default . _Map

-- | The unique identifier for the most recent request to update the endpoint.
erRequestId :: Lens' EndpointResponse (Maybe Text)
erRequestId = lens _erRequestId (\s a -> s {_erRequestId = a})

-- | The date and time, in ISO 8601 format, when the endpoint was last updated.
erEffectiveDate :: Lens' EndpointResponse (Maybe Text)
erEffectiveDate = lens _erEffectiveDate (\s a -> s {_erEffectiveDate = a})

-- | The geographic information for the endpoint.
erLocation :: Lens' EndpointResponse (Maybe EndpointLocation)
erLocation = lens _erLocation (\s a -> s {_erLocation = a})

instance FromJSON EndpointResponse where
  parseJSON =
    withObject
      "EndpointResponse"
      ( \x ->
          EndpointResponse'
            <$> (x .:? "ApplicationId")
            <*> (x .:? "User")
            <*> (x .:? "Address")
            <*> (x .:? "ChannelType")
            <*> (x .:? "CohortId")
            <*> (x .:? "Id")
            <*> (x .:? "CreationDate")
            <*> (x .:? "OptOut")
            <*> (x .:? "Demographic")
            <*> (x .:? "Attributes" .!= mempty)
            <*> (x .:? "EndpointStatus")
            <*> (x .:? "Metrics" .!= mempty)
            <*> (x .:? "RequestId")
            <*> (x .:? "EffectiveDate")
            <*> (x .:? "Location")
      )

instance Hashable EndpointResponse

instance NFData EndpointResponse
