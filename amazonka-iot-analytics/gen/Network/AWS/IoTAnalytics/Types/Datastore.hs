{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.Datastore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.Datastore where

import Network.AWS.IoTAnalytics.Types.DatastoreStatus
import Network.AWS.IoTAnalytics.Types.DatastoreStorage
import Network.AWS.IoTAnalytics.Types.FileFormatConfiguration
import Network.AWS.IoTAnalytics.Types.RetentionPeriod
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a data store.
--
--
--
-- /See:/ 'datastore' smart constructor.
data Datastore = Datastore'
  { _dLastMessageArrivalTime ::
      !(Maybe POSIX),
    _dStatus :: !(Maybe DatastoreStatus),
    _dCreationTime :: !(Maybe POSIX),
    _dLastUpdateTime :: !(Maybe POSIX),
    _dArn :: !(Maybe Text),
    _dFileFormatConfiguration ::
      !(Maybe FileFormatConfiguration),
    _dName :: !(Maybe Text),
    _dRetentionPeriod :: !(Maybe RetentionPeriod),
    _dStorage :: !(Maybe DatastoreStorage)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Datastore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dLastMessageArrivalTime' - The last time when a new message arrived in the data store. AWS IoT Analytics updates this value at most once per minute for one data store. Hence, the @lastMessageArrivalTime@ value is an approximation. This feature only applies to messages that arrived in the data store after October 23, 2020.
--
-- * 'dStatus' - The status of a data store:     * CREATING    * The data store is being created.     * ACTIVE    * The data store has been created and can be used.     * DELETING    * The data store is being deleted.
--
-- * 'dCreationTime' - When the data store was created.
--
-- * 'dLastUpdateTime' - The last time the data store was updated.
--
-- * 'dArn' - The ARN of the data store.
--
-- * 'dFileFormatConfiguration' - Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON and <https://parquet.apache.org/ Parquet> . The default file format is JSON. You can specify only one format. You can't change the file format after you create the data store.
--
-- * 'dName' - The name of the data store.
--
-- * 'dRetentionPeriod' - How long, in days, message data is kept for the data store. When @customerManagedS3@ storage is selected, this parameter is ignored.
--
-- * 'dStorage' - Where data store data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is @serviceManagedS3@ . You cannot change this storage option after the data store is created.
datastore ::
  Datastore
datastore =
  Datastore'
    { _dLastMessageArrivalTime = Nothing,
      _dStatus = Nothing,
      _dCreationTime = Nothing,
      _dLastUpdateTime = Nothing,
      _dArn = Nothing,
      _dFileFormatConfiguration = Nothing,
      _dName = Nothing,
      _dRetentionPeriod = Nothing,
      _dStorage = Nothing
    }

-- | The last time when a new message arrived in the data store. AWS IoT Analytics updates this value at most once per minute for one data store. Hence, the @lastMessageArrivalTime@ value is an approximation. This feature only applies to messages that arrived in the data store after October 23, 2020.
dLastMessageArrivalTime :: Lens' Datastore (Maybe UTCTime)
dLastMessageArrivalTime = lens _dLastMessageArrivalTime (\s a -> s {_dLastMessageArrivalTime = a}) . mapping _Time

-- | The status of a data store:     * CREATING    * The data store is being created.     * ACTIVE    * The data store has been created and can be used.     * DELETING    * The data store is being deleted.
dStatus :: Lens' Datastore (Maybe DatastoreStatus)
dStatus = lens _dStatus (\s a -> s {_dStatus = a})

-- | When the data store was created.
dCreationTime :: Lens' Datastore (Maybe UTCTime)
dCreationTime = lens _dCreationTime (\s a -> s {_dCreationTime = a}) . mapping _Time

-- | The last time the data store was updated.
dLastUpdateTime :: Lens' Datastore (Maybe UTCTime)
dLastUpdateTime = lens _dLastUpdateTime (\s a -> s {_dLastUpdateTime = a}) . mapping _Time

-- | The ARN of the data store.
dArn :: Lens' Datastore (Maybe Text)
dArn = lens _dArn (\s a -> s {_dArn = a})

-- | Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON and <https://parquet.apache.org/ Parquet> . The default file format is JSON. You can specify only one format. You can't change the file format after you create the data store.
dFileFormatConfiguration :: Lens' Datastore (Maybe FileFormatConfiguration)
dFileFormatConfiguration = lens _dFileFormatConfiguration (\s a -> s {_dFileFormatConfiguration = a})

-- | The name of the data store.
dName :: Lens' Datastore (Maybe Text)
dName = lens _dName (\s a -> s {_dName = a})

-- | How long, in days, message data is kept for the data store. When @customerManagedS3@ storage is selected, this parameter is ignored.
dRetentionPeriod :: Lens' Datastore (Maybe RetentionPeriod)
dRetentionPeriod = lens _dRetentionPeriod (\s a -> s {_dRetentionPeriod = a})

-- | Where data store data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is @serviceManagedS3@ . You cannot change this storage option after the data store is created.
dStorage :: Lens' Datastore (Maybe DatastoreStorage)
dStorage = lens _dStorage (\s a -> s {_dStorage = a})

instance FromJSON Datastore where
  parseJSON =
    withObject
      "Datastore"
      ( \x ->
          Datastore'
            <$> (x .:? "lastMessageArrivalTime")
            <*> (x .:? "status")
            <*> (x .:? "creationTime")
            <*> (x .:? "lastUpdateTime")
            <*> (x .:? "arn")
            <*> (x .:? "fileFormatConfiguration")
            <*> (x .:? "name")
            <*> (x .:? "retentionPeriod")
            <*> (x .:? "storage")
      )

instance Hashable Datastore

instance NFData Datastore
