{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.Channel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.Channel where

import Network.AWS.IoTAnalytics.Types.ChannelStatus
import Network.AWS.IoTAnalytics.Types.ChannelStorage
import Network.AWS.IoTAnalytics.Types.RetentionPeriod
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A collection of data from an MQTT topic. Channels archive the raw, unprocessed messages before publishing the data to a pipeline.
--
--
--
-- /See:/ 'channel' smart constructor.
data Channel = Channel'
  { _chaLastMessageArrivalTime ::
      !(Maybe POSIX),
    _chaStatus :: !(Maybe ChannelStatus),
    _chaCreationTime :: !(Maybe POSIX),
    _chaLastUpdateTime :: !(Maybe POSIX),
    _chaArn :: !(Maybe Text),
    _chaName :: !(Maybe Text),
    _chaRetentionPeriod :: !(Maybe RetentionPeriod),
    _chaStorage :: !(Maybe ChannelStorage)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Channel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaLastMessageArrivalTime' - The last time when a new message arrived in the channel. AWS IoT Analytics updates this value at most once per minute for one channel. Hence, the @lastMessageArrivalTime@ value is an approximation. This feature only applies to messages that arrived in the data store after October 23, 2020.
--
-- * 'chaStatus' - The status of the channel.
--
-- * 'chaCreationTime' - When the channel was created.
--
-- * 'chaLastUpdateTime' - When the channel was last updated.
--
-- * 'chaArn' - The ARN of the channel.
--
-- * 'chaName' - The name of the channel.
--
-- * 'chaRetentionPeriod' - How long, in days, message data is kept for the channel.
--
-- * 'chaStorage' - Where channel data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is @serviceManagedS3@ . You cannot change this storage option after the channel is created.
channel ::
  Channel
channel =
  Channel'
    { _chaLastMessageArrivalTime = Nothing,
      _chaStatus = Nothing,
      _chaCreationTime = Nothing,
      _chaLastUpdateTime = Nothing,
      _chaArn = Nothing,
      _chaName = Nothing,
      _chaRetentionPeriod = Nothing,
      _chaStorage = Nothing
    }

-- | The last time when a new message arrived in the channel. AWS IoT Analytics updates this value at most once per minute for one channel. Hence, the @lastMessageArrivalTime@ value is an approximation. This feature only applies to messages that arrived in the data store after October 23, 2020.
chaLastMessageArrivalTime :: Lens' Channel (Maybe UTCTime)
chaLastMessageArrivalTime = lens _chaLastMessageArrivalTime (\s a -> s {_chaLastMessageArrivalTime = a}) . mapping _Time

-- | The status of the channel.
chaStatus :: Lens' Channel (Maybe ChannelStatus)
chaStatus = lens _chaStatus (\s a -> s {_chaStatus = a})

-- | When the channel was created.
chaCreationTime :: Lens' Channel (Maybe UTCTime)
chaCreationTime = lens _chaCreationTime (\s a -> s {_chaCreationTime = a}) . mapping _Time

-- | When the channel was last updated.
chaLastUpdateTime :: Lens' Channel (Maybe UTCTime)
chaLastUpdateTime = lens _chaLastUpdateTime (\s a -> s {_chaLastUpdateTime = a}) . mapping _Time

-- | The ARN of the channel.
chaArn :: Lens' Channel (Maybe Text)
chaArn = lens _chaArn (\s a -> s {_chaArn = a})

-- | The name of the channel.
chaName :: Lens' Channel (Maybe Text)
chaName = lens _chaName (\s a -> s {_chaName = a})

-- | How long, in days, message data is kept for the channel.
chaRetentionPeriod :: Lens' Channel (Maybe RetentionPeriod)
chaRetentionPeriod = lens _chaRetentionPeriod (\s a -> s {_chaRetentionPeriod = a})

-- | Where channel data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is @serviceManagedS3@ . You cannot change this storage option after the channel is created.
chaStorage :: Lens' Channel (Maybe ChannelStorage)
chaStorage = lens _chaStorage (\s a -> s {_chaStorage = a})

instance FromJSON Channel where
  parseJSON =
    withObject
      "Channel"
      ( \x ->
          Channel'
            <$> (x .:? "lastMessageArrivalTime")
            <*> (x .:? "status")
            <*> (x .:? "creationTime")
            <*> (x .:? "lastUpdateTime")
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "retentionPeriod")
            <*> (x .:? "storage")
      )

instance Hashable Channel

instance NFData Channel
