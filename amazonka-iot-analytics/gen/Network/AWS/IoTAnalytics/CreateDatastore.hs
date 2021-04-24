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
-- Module      : Network.AWS.IoTAnalytics.CreateDatastore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a data store, which is a repository for messages.
module Network.AWS.IoTAnalytics.CreateDatastore
  ( -- * Creating a Request
    createDatastore,
    CreateDatastore,

    -- * Request Lenses
    cDatastoreStorage,
    cFileFormatConfiguration,
    cRetentionPeriod,
    cTags,
    cDatastoreName,

    -- * Destructuring the Response
    createDatastoreResponse,
    CreateDatastoreResponse,

    -- * Response Lenses
    cdrrsDatastoreARN,
    cdrrsRetentionPeriod,
    cdrrsDatastoreName,
    cdrrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createDatastore' smart constructor.
data CreateDatastore = CreateDatastore'
  { _cDatastoreStorage ::
      !(Maybe DatastoreStorage),
    _cFileFormatConfiguration ::
      !(Maybe FileFormatConfiguration),
    _cRetentionPeriod ::
      !(Maybe RetentionPeriod),
    _cTags :: !(Maybe (List1 Tag)),
    _cDatastoreName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateDatastore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDatastoreStorage' - Where data store data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is @serviceManagedS3@ . You cannot change this storage option after the data store is created.
--
-- * 'cFileFormatConfiguration' - Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON and <https://parquet.apache.org/ Parquet> . The default file format is JSON. You can specify only one format. You can't change the file format after you create the data store.
--
-- * 'cRetentionPeriod' - How long, in days, message data is kept for the data store. When @customerManagedS3@ storage is selected, this parameter is ignored.
--
-- * 'cTags' - Metadata which can be used to manage the data store.
--
-- * 'cDatastoreName' - The name of the data store.
createDatastore ::
  -- | 'cDatastoreName'
  Text ->
  CreateDatastore
createDatastore pDatastoreName_ =
  CreateDatastore'
    { _cDatastoreStorage = Nothing,
      _cFileFormatConfiguration = Nothing,
      _cRetentionPeriod = Nothing,
      _cTags = Nothing,
      _cDatastoreName = pDatastoreName_
    }

-- | Where data store data is stored. You can choose one of @serviceManagedS3@ or @customerManagedS3@ storage. If not specified, the default is @serviceManagedS3@ . You cannot change this storage option after the data store is created.
cDatastoreStorage :: Lens' CreateDatastore (Maybe DatastoreStorage)
cDatastoreStorage = lens _cDatastoreStorage (\s a -> s {_cDatastoreStorage = a})

-- | Contains the configuration information of file formats. AWS IoT Analytics data stores support JSON and <https://parquet.apache.org/ Parquet> . The default file format is JSON. You can specify only one format. You can't change the file format after you create the data store.
cFileFormatConfiguration :: Lens' CreateDatastore (Maybe FileFormatConfiguration)
cFileFormatConfiguration = lens _cFileFormatConfiguration (\s a -> s {_cFileFormatConfiguration = a})

-- | How long, in days, message data is kept for the data store. When @customerManagedS3@ storage is selected, this parameter is ignored.
cRetentionPeriod :: Lens' CreateDatastore (Maybe RetentionPeriod)
cRetentionPeriod = lens _cRetentionPeriod (\s a -> s {_cRetentionPeriod = a})

-- | Metadata which can be used to manage the data store.
cTags :: Lens' CreateDatastore (Maybe (NonEmpty Tag))
cTags = lens _cTags (\s a -> s {_cTags = a}) . mapping _List1

-- | The name of the data store.
cDatastoreName :: Lens' CreateDatastore Text
cDatastoreName = lens _cDatastoreName (\s a -> s {_cDatastoreName = a})

instance AWSRequest CreateDatastore where
  type Rs CreateDatastore = CreateDatastoreResponse
  request = postJSON ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          CreateDatastoreResponse'
            <$> (x .?> "datastoreArn")
            <*> (x .?> "retentionPeriod")
            <*> (x .?> "datastoreName")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateDatastore

instance NFData CreateDatastore

instance ToHeaders CreateDatastore where
  toHeaders = const mempty

instance ToJSON CreateDatastore where
  toJSON CreateDatastore' {..} =
    object
      ( catMaybes
          [ ("datastoreStorage" .=) <$> _cDatastoreStorage,
            ("fileFormatConfiguration" .=)
              <$> _cFileFormatConfiguration,
            ("retentionPeriod" .=) <$> _cRetentionPeriod,
            ("tags" .=) <$> _cTags,
            Just ("datastoreName" .= _cDatastoreName)
          ]
      )

instance ToPath CreateDatastore where
  toPath = const "/datastores"

instance ToQuery CreateDatastore where
  toQuery = const mempty

-- | /See:/ 'createDatastoreResponse' smart constructor.
data CreateDatastoreResponse = CreateDatastoreResponse'
  { _cdrrsDatastoreARN ::
      !(Maybe Text),
    _cdrrsRetentionPeriod ::
      !( Maybe
           RetentionPeriod
       ),
    _cdrrsDatastoreName ::
      !(Maybe Text),
    _cdrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateDatastoreResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdrrsDatastoreARN' - The ARN of the data store.
--
-- * 'cdrrsRetentionPeriod' - How long, in days, message data is kept for the data store.
--
-- * 'cdrrsDatastoreName' - The name of the data store.
--
-- * 'cdrrsResponseStatus' - -- | The response status code.
createDatastoreResponse ::
  -- | 'cdrrsResponseStatus'
  Int ->
  CreateDatastoreResponse
createDatastoreResponse pResponseStatus_ =
  CreateDatastoreResponse'
    { _cdrrsDatastoreARN =
        Nothing,
      _cdrrsRetentionPeriod = Nothing,
      _cdrrsDatastoreName = Nothing,
      _cdrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the data store.
cdrrsDatastoreARN :: Lens' CreateDatastoreResponse (Maybe Text)
cdrrsDatastoreARN = lens _cdrrsDatastoreARN (\s a -> s {_cdrrsDatastoreARN = a})

-- | How long, in days, message data is kept for the data store.
cdrrsRetentionPeriod :: Lens' CreateDatastoreResponse (Maybe RetentionPeriod)
cdrrsRetentionPeriod = lens _cdrrsRetentionPeriod (\s a -> s {_cdrrsRetentionPeriod = a})

-- | The name of the data store.
cdrrsDatastoreName :: Lens' CreateDatastoreResponse (Maybe Text)
cdrrsDatastoreName = lens _cdrrsDatastoreName (\s a -> s {_cdrrsDatastoreName = a})

-- | -- | The response status code.
cdrrsResponseStatus :: Lens' CreateDatastoreResponse Int
cdrrsResponseStatus = lens _cdrrsResponseStatus (\s a -> s {_cdrrsResponseStatus = a})

instance NFData CreateDatastoreResponse
