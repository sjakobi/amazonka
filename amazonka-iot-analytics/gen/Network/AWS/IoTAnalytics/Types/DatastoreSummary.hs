{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.DatastoreSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatastoreSummary where

import Network.AWS.IoTAnalytics.Types.DatastoreStatus
import Network.AWS.IoTAnalytics.Types.DatastoreStorageSummary
import Network.AWS.IoTAnalytics.Types.FileFormatType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A summary of information about a data store.
--
--
--
-- /See:/ 'datastoreSummary' smart constructor.
data DatastoreSummary = DatastoreSummary'
  { _datLastMessageArrivalTime ::
      !(Maybe POSIX),
    _datStatus ::
      !(Maybe DatastoreStatus),
    _datCreationTime :: !(Maybe POSIX),
    _datDatastoreStorage ::
      !(Maybe DatastoreStorageSummary),
    _datLastUpdateTime :: !(Maybe POSIX),
    _datFileFormatType ::
      !(Maybe FileFormatType),
    _datDatastoreName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatastoreSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datLastMessageArrivalTime' - The last time when a new message arrived in the data store. AWS IoT Analytics updates this value at most once per minute for one data store. Hence, the @lastMessageArrivalTime@ value is an approximation. This feature only applies to messages that arrived in the data store after October 23, 2020.
--
-- * 'datStatus' - The status of the data store.
--
-- * 'datCreationTime' - When the data store was created.
--
-- * 'datDatastoreStorage' - Where data store data is stored.
--
-- * 'datLastUpdateTime' - The last time the data store was updated.
--
-- * 'datFileFormatType' - The file format of the data in the data store.
--
-- * 'datDatastoreName' - The name of the data store.
datastoreSummary ::
  DatastoreSummary
datastoreSummary =
  DatastoreSummary'
    { _datLastMessageArrivalTime =
        Nothing,
      _datStatus = Nothing,
      _datCreationTime = Nothing,
      _datDatastoreStorage = Nothing,
      _datLastUpdateTime = Nothing,
      _datFileFormatType = Nothing,
      _datDatastoreName = Nothing
    }

-- | The last time when a new message arrived in the data store. AWS IoT Analytics updates this value at most once per minute for one data store. Hence, the @lastMessageArrivalTime@ value is an approximation. This feature only applies to messages that arrived in the data store after October 23, 2020.
datLastMessageArrivalTime :: Lens' DatastoreSummary (Maybe UTCTime)
datLastMessageArrivalTime = lens _datLastMessageArrivalTime (\s a -> s {_datLastMessageArrivalTime = a}) . mapping _Time

-- | The status of the data store.
datStatus :: Lens' DatastoreSummary (Maybe DatastoreStatus)
datStatus = lens _datStatus (\s a -> s {_datStatus = a})

-- | When the data store was created.
datCreationTime :: Lens' DatastoreSummary (Maybe UTCTime)
datCreationTime = lens _datCreationTime (\s a -> s {_datCreationTime = a}) . mapping _Time

-- | Where data store data is stored.
datDatastoreStorage :: Lens' DatastoreSummary (Maybe DatastoreStorageSummary)
datDatastoreStorage = lens _datDatastoreStorage (\s a -> s {_datDatastoreStorage = a})

-- | The last time the data store was updated.
datLastUpdateTime :: Lens' DatastoreSummary (Maybe UTCTime)
datLastUpdateTime = lens _datLastUpdateTime (\s a -> s {_datLastUpdateTime = a}) . mapping _Time

-- | The file format of the data in the data store.
datFileFormatType :: Lens' DatastoreSummary (Maybe FileFormatType)
datFileFormatType = lens _datFileFormatType (\s a -> s {_datFileFormatType = a})

-- | The name of the data store.
datDatastoreName :: Lens' DatastoreSummary (Maybe Text)
datDatastoreName = lens _datDatastoreName (\s a -> s {_datDatastoreName = a})

instance FromJSON DatastoreSummary where
  parseJSON =
    withObject
      "DatastoreSummary"
      ( \x ->
          DatastoreSummary'
            <$> (x .:? "lastMessageArrivalTime")
            <*> (x .:? "status")
            <*> (x .:? "creationTime")
            <*> (x .:? "datastoreStorage")
            <*> (x .:? "lastUpdateTime")
            <*> (x .:? "fileFormatType")
            <*> (x .:? "datastoreName")
      )

instance Hashable DatastoreSummary

instance NFData DatastoreSummary
