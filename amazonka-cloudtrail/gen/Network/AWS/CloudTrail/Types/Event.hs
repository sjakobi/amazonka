{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudTrail.Types.Event
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudTrail.Types.Event where

import Network.AWS.CloudTrail.Types.Resource
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.
--
--
--
-- /See:/ 'event' smart constructor.
data Event = Event'
  { _eCloudTrailEvent ::
      !(Maybe Text),
    _eEventId :: !(Maybe Text),
    _eEventSource :: !(Maybe Text),
    _eReadOnly :: !(Maybe Text),
    _eEventName :: !(Maybe Text),
    _eResources :: !(Maybe [Resource]),
    _eEventTime :: !(Maybe POSIX),
    _eAccessKeyId :: !(Maybe Text),
    _eUsername :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Event' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eCloudTrailEvent' - A JSON string that contains a representation of the event returned.
--
-- * 'eEventId' - The CloudTrail ID of the event returned.
--
-- * 'eEventSource' - The AWS service that the request was made to.
--
-- * 'eReadOnly' - Information about whether the event is a write event or a read event.
--
-- * 'eEventName' - The name of the event returned.
--
-- * 'eResources' - A list of resources referenced by the event returned.
--
-- * 'eEventTime' - The date and time of the event returned.
--
-- * 'eAccessKeyId' - The AWS access key ID that was used to sign the request. If the request was made with temporary security credentials, this is the access key ID of the temporary credentials.
--
-- * 'eUsername' - A user name or role name of the requester that called the API in the event returned.
event ::
  Event
event =
  Event'
    { _eCloudTrailEvent = Nothing,
      _eEventId = Nothing,
      _eEventSource = Nothing,
      _eReadOnly = Nothing,
      _eEventName = Nothing,
      _eResources = Nothing,
      _eEventTime = Nothing,
      _eAccessKeyId = Nothing,
      _eUsername = Nothing
    }

-- | A JSON string that contains a representation of the event returned.
eCloudTrailEvent :: Lens' Event (Maybe Text)
eCloudTrailEvent = lens _eCloudTrailEvent (\s a -> s {_eCloudTrailEvent = a})

-- | The CloudTrail ID of the event returned.
eEventId :: Lens' Event (Maybe Text)
eEventId = lens _eEventId (\s a -> s {_eEventId = a})

-- | The AWS service that the request was made to.
eEventSource :: Lens' Event (Maybe Text)
eEventSource = lens _eEventSource (\s a -> s {_eEventSource = a})

-- | Information about whether the event is a write event or a read event.
eReadOnly :: Lens' Event (Maybe Text)
eReadOnly = lens _eReadOnly (\s a -> s {_eReadOnly = a})

-- | The name of the event returned.
eEventName :: Lens' Event (Maybe Text)
eEventName = lens _eEventName (\s a -> s {_eEventName = a})

-- | A list of resources referenced by the event returned.
eResources :: Lens' Event [Resource]
eResources = lens _eResources (\s a -> s {_eResources = a}) . _Default . _Coerce

-- | The date and time of the event returned.
eEventTime :: Lens' Event (Maybe UTCTime)
eEventTime = lens _eEventTime (\s a -> s {_eEventTime = a}) . mapping _Time

-- | The AWS access key ID that was used to sign the request. If the request was made with temporary security credentials, this is the access key ID of the temporary credentials.
eAccessKeyId :: Lens' Event (Maybe Text)
eAccessKeyId = lens _eAccessKeyId (\s a -> s {_eAccessKeyId = a})

-- | A user name or role name of the requester that called the API in the event returned.
eUsername :: Lens' Event (Maybe Text)
eUsername = lens _eUsername (\s a -> s {_eUsername = a})

instance FromJSON Event where
  parseJSON =
    withObject
      "Event"
      ( \x ->
          Event'
            <$> (x .:? "CloudTrailEvent")
            <*> (x .:? "EventId")
            <*> (x .:? "EventSource")
            <*> (x .:? "ReadOnly")
            <*> (x .:? "EventName")
            <*> (x .:? "Resources" .!= mempty)
            <*> (x .:? "EventTime")
            <*> (x .:? "AccessKeyId")
            <*> (x .:? "Username")
      )

instance Hashable Event

instance NFData Event
