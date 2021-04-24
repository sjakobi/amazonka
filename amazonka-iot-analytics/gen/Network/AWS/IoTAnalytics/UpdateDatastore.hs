{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.UpdateDatastore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the settings of a data store.
module Network.AWS.IoTAnalytics.UpdateDatastore
  ( -- * Creating a Request
    updateDatastore,
    UpdateDatastore,

    -- * Request Lenses
    udDatastoreStorage,
    udFileFormatConfiguration,
    udRetentionPeriod,
    udDatastoreName,

    -- * Destructuring the Response
    updateDatastoreResponse,
    UpdateDatastoreResponse,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateDatastore' smart constructor.
data UpdateDatastore = UpdateDatastore'
  { _udDatastoreStorage ::
      !(Maybe DatastoreStorage),
    _udFileFormatConfiguration ::
      !(Maybe FileFormatConfiguration),
    _udRetentionPeriod ::
      !(Maybe RetentionPeriod),
    _udDatastoreName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateDatastore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udDatastoreStorage' - Where data store data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is@serviceManagedS3@ . You cannot change this storage option after the data store is created.
--
-- * 'udFileFormatConfiguration' - Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON and <https://parquet.apache.org/ Parquet> . The default file format is JSON. You can specify only one format. You can't change the file format after you create the data store.
--
-- * 'udRetentionPeriod' - How long, in days, message data is kept for the data store. The retention period cannot be updated if the data store's S3 storage is customer-managed.
--
-- * 'udDatastoreName' - The name of the data store to be updated.
updateDatastore ::
  -- | 'udDatastoreName'
  Text ->
  UpdateDatastore
updateDatastore pDatastoreName_ =
  UpdateDatastore'
    { _udDatastoreStorage = Nothing,
      _udFileFormatConfiguration = Nothing,
      _udRetentionPeriod = Nothing,
      _udDatastoreName = pDatastoreName_
    }

-- | Where data store data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is@serviceManagedS3@ . You cannot change this storage option after the data store is created.
udDatastoreStorage :: Lens' UpdateDatastore (Maybe DatastoreStorage)
udDatastoreStorage = lens _udDatastoreStorage (\s a -> s {_udDatastoreStorage = a})

-- | Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON and <https://parquet.apache.org/ Parquet> . The default file format is JSON. You can specify only one format. You can't change the file format after you create the data store.
udFileFormatConfiguration :: Lens' UpdateDatastore (Maybe FileFormatConfiguration)
udFileFormatConfiguration = lens _udFileFormatConfiguration (\s a -> s {_udFileFormatConfiguration = a})

-- | How long, in days, message data is kept for the data store. The retention period cannot be updated if the data store's S3 storage is customer-managed.
udRetentionPeriod :: Lens' UpdateDatastore (Maybe RetentionPeriod)
udRetentionPeriod = lens _udRetentionPeriod (\s a -> s {_udRetentionPeriod = a})

-- | The name of the data store to be updated.
udDatastoreName :: Lens' UpdateDatastore Text
udDatastoreName = lens _udDatastoreName (\s a -> s {_udDatastoreName = a})

instance AWSRequest UpdateDatastore where
  type Rs UpdateDatastore = UpdateDatastoreResponse
  request = putJSON ioTAnalytics
  response = receiveNull UpdateDatastoreResponse'

instance Hashable UpdateDatastore

instance NFData UpdateDatastore

instance ToHeaders UpdateDatastore where
  toHeaders = const mempty

instance ToJSON UpdateDatastore where
  toJSON UpdateDatastore' {..} =
    object
      ( catMaybes
          [ ("datastoreStorage" .=) <$> _udDatastoreStorage,
            ("fileFormatConfiguration" .=)
              <$> _udFileFormatConfiguration,
            ("retentionPeriod" .=) <$> _udRetentionPeriod
          ]
      )

instance ToPath UpdateDatastore where
  toPath UpdateDatastore' {..} =
    mconcat ["/datastores/", toBS _udDatastoreName]

instance ToQuery UpdateDatastore where
  toQuery = const mempty

-- | /See:/ 'updateDatastoreResponse' smart constructor.
data UpdateDatastoreResponse = UpdateDatastoreResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateDatastoreResponse' with the minimum fields required to make a request.
updateDatastoreResponse ::
  UpdateDatastoreResponse
updateDatastoreResponse = UpdateDatastoreResponse'

instance NFData UpdateDatastoreResponse
