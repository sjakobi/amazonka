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
-- Module      : Network.AWS.CognitoSync.ListRecords
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.
--
--
-- ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
module Network.AWS.CognitoSync.ListRecords
  ( -- * Creating a Request
    listRecords,
    ListRecords,

    -- * Request Lenses
    lrNextToken,
    lrLastSyncCount,
    lrMaxResults,
    lrSyncSessionToken,
    lrIdentityPoolId,
    lrIdentityId,
    lrDatasetName,

    -- * Destructuring the Response
    listRecordsResponse,
    ListRecordsResponse,

    -- * Response Lenses
    lrrrsNextToken,
    lrrrsRecords,
    lrrrsDatasetSyncCount,
    lrrrsDatasetDeletedAfterRequestedSyncCount,
    lrrrsCount,
    lrrrsLastModifiedBy,
    lrrrsDatasetExists,
    lrrrsSyncSessionToken,
    lrrrsMergedDatasetNames,
    lrrrsResponseStatus,
  )
where

import Network.AWS.CognitoSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | A request for a list of records.
--
-- /See:/ 'listRecords' smart constructor.
data ListRecords = ListRecords'
  { _lrNextToken ::
      !(Maybe Text),
    _lrLastSyncCount :: !(Maybe Integer),
    _lrMaxResults :: !(Maybe Int),
    _lrSyncSessionToken :: !(Maybe Text),
    _lrIdentityPoolId :: !Text,
    _lrIdentityId :: !Text,
    _lrDatasetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRecords' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrNextToken' - A pagination token for obtaining the next page of results.
--
-- * 'lrLastSyncCount' - The last server sync count for this record.
--
-- * 'lrMaxResults' - The maximum number of results to be returned.
--
-- * 'lrSyncSessionToken' - A token containing a session ID, identity ID, and expiration.
--
-- * 'lrIdentityPoolId' - A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
--
-- * 'lrIdentityId' - A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
--
-- * 'lrDatasetName' - A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
listRecords ::
  -- | 'lrIdentityPoolId'
  Text ->
  -- | 'lrIdentityId'
  Text ->
  -- | 'lrDatasetName'
  Text ->
  ListRecords
listRecords
  pIdentityPoolId_
  pIdentityId_
  pDatasetName_ =
    ListRecords'
      { _lrNextToken = Nothing,
        _lrLastSyncCount = Nothing,
        _lrMaxResults = Nothing,
        _lrSyncSessionToken = Nothing,
        _lrIdentityPoolId = pIdentityPoolId_,
        _lrIdentityId = pIdentityId_,
        _lrDatasetName = pDatasetName_
      }

-- | A pagination token for obtaining the next page of results.
lrNextToken :: Lens' ListRecords (Maybe Text)
lrNextToken = lens _lrNextToken (\s a -> s {_lrNextToken = a})

-- | The last server sync count for this record.
lrLastSyncCount :: Lens' ListRecords (Maybe Integer)
lrLastSyncCount = lens _lrLastSyncCount (\s a -> s {_lrLastSyncCount = a})

-- | The maximum number of results to be returned.
lrMaxResults :: Lens' ListRecords (Maybe Int)
lrMaxResults = lens _lrMaxResults (\s a -> s {_lrMaxResults = a})

-- | A token containing a session ID, identity ID, and expiration.
lrSyncSessionToken :: Lens' ListRecords (Maybe Text)
lrSyncSessionToken = lens _lrSyncSessionToken (\s a -> s {_lrSyncSessionToken = a})

-- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
lrIdentityPoolId :: Lens' ListRecords Text
lrIdentityPoolId = lens _lrIdentityPoolId (\s a -> s {_lrIdentityPoolId = a})

-- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is unique within a region.
lrIdentityId :: Lens' ListRecords Text
lrIdentityId = lens _lrIdentityId (\s a -> s {_lrIdentityId = a})

-- | A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).
lrDatasetName :: Lens' ListRecords Text
lrDatasetName = lens _lrDatasetName (\s a -> s {_lrDatasetName = a})

instance AWSRequest ListRecords where
  type Rs ListRecords = ListRecordsResponse
  request = get cognitoSync
  response =
    receiveJSON
      ( \s h x ->
          ListRecordsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Records" .!@ mempty)
            <*> (x .?> "DatasetSyncCount")
            <*> (x .?> "DatasetDeletedAfterRequestedSyncCount")
            <*> (x .?> "Count")
            <*> (x .?> "LastModifiedBy")
            <*> (x .?> "DatasetExists")
            <*> (x .?> "SyncSessionToken")
            <*> (x .?> "MergedDatasetNames" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListRecords

instance NFData ListRecords

instance ToHeaders ListRecords where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListRecords where
  toPath ListRecords' {..} =
    mconcat
      [ "/identitypools/",
        toBS _lrIdentityPoolId,
        "/identities/",
        toBS _lrIdentityId,
        "/datasets/",
        toBS _lrDatasetName,
        "/records"
      ]

instance ToQuery ListRecords where
  toQuery ListRecords' {..} =
    mconcat
      [ "nextToken" =: _lrNextToken,
        "lastSyncCount" =: _lrLastSyncCount,
        "maxResults" =: _lrMaxResults,
        "syncSessionToken" =: _lrSyncSessionToken
      ]

-- | Returned for a successful ListRecordsRequest.
--
-- /See:/ 'listRecordsResponse' smart constructor.
data ListRecordsResponse = ListRecordsResponse'
  { _lrrrsNextToken ::
      !(Maybe Text),
    _lrrrsRecords ::
      !(Maybe [Record]),
    _lrrrsDatasetSyncCount ::
      !(Maybe Integer),
    _lrrrsDatasetDeletedAfterRequestedSyncCount ::
      !(Maybe Bool),
    _lrrrsCount :: !(Maybe Int),
    _lrrrsLastModifiedBy ::
      !(Maybe Text),
    _lrrrsDatasetExists ::
      !(Maybe Bool),
    _lrrrsSyncSessionToken ::
      !(Maybe Text),
    _lrrrsMergedDatasetNames ::
      !(Maybe [Text]),
    _lrrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRecordsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrsNextToken' - A pagination token for obtaining the next page of results.
--
-- * 'lrrrsRecords' - A list of all records.
--
-- * 'lrrrsDatasetSyncCount' - Server sync count for this dataset.
--
-- * 'lrrrsDatasetDeletedAfterRequestedSyncCount' - A boolean value specifying whether to delete the dataset locally.
--
-- * 'lrrrsCount' - Total number of records.
--
-- * 'lrrrsLastModifiedBy' - The user/device that made the last change to this record.
--
-- * 'lrrrsDatasetExists' - Indicates whether the dataset exists.
--
-- * 'lrrrsSyncSessionToken' - A token containing a session ID, identity ID, and expiration.
--
-- * 'lrrrsMergedDatasetNames' - Names of merged datasets.
--
-- * 'lrrrsResponseStatus' - -- | The response status code.
listRecordsResponse ::
  -- | 'lrrrsResponseStatus'
  Int ->
  ListRecordsResponse
listRecordsResponse pResponseStatus_ =
  ListRecordsResponse'
    { _lrrrsNextToken = Nothing,
      _lrrrsRecords = Nothing,
      _lrrrsDatasetSyncCount = Nothing,
      _lrrrsDatasetDeletedAfterRequestedSyncCount =
        Nothing,
      _lrrrsCount = Nothing,
      _lrrrsLastModifiedBy = Nothing,
      _lrrrsDatasetExists = Nothing,
      _lrrrsSyncSessionToken = Nothing,
      _lrrrsMergedDatasetNames = Nothing,
      _lrrrsResponseStatus = pResponseStatus_
    }

-- | A pagination token for obtaining the next page of results.
lrrrsNextToken :: Lens' ListRecordsResponse (Maybe Text)
lrrrsNextToken = lens _lrrrsNextToken (\s a -> s {_lrrrsNextToken = a})

-- | A list of all records.
lrrrsRecords :: Lens' ListRecordsResponse [Record]
lrrrsRecords = lens _lrrrsRecords (\s a -> s {_lrrrsRecords = a}) . _Default . _Coerce

-- | Server sync count for this dataset.
lrrrsDatasetSyncCount :: Lens' ListRecordsResponse (Maybe Integer)
lrrrsDatasetSyncCount = lens _lrrrsDatasetSyncCount (\s a -> s {_lrrrsDatasetSyncCount = a})

-- | A boolean value specifying whether to delete the dataset locally.
lrrrsDatasetDeletedAfterRequestedSyncCount :: Lens' ListRecordsResponse (Maybe Bool)
lrrrsDatasetDeletedAfterRequestedSyncCount = lens _lrrrsDatasetDeletedAfterRequestedSyncCount (\s a -> s {_lrrrsDatasetDeletedAfterRequestedSyncCount = a})

-- | Total number of records.
lrrrsCount :: Lens' ListRecordsResponse (Maybe Int)
lrrrsCount = lens _lrrrsCount (\s a -> s {_lrrrsCount = a})

-- | The user/device that made the last change to this record.
lrrrsLastModifiedBy :: Lens' ListRecordsResponse (Maybe Text)
lrrrsLastModifiedBy = lens _lrrrsLastModifiedBy (\s a -> s {_lrrrsLastModifiedBy = a})

-- | Indicates whether the dataset exists.
lrrrsDatasetExists :: Lens' ListRecordsResponse (Maybe Bool)
lrrrsDatasetExists = lens _lrrrsDatasetExists (\s a -> s {_lrrrsDatasetExists = a})

-- | A token containing a session ID, identity ID, and expiration.
lrrrsSyncSessionToken :: Lens' ListRecordsResponse (Maybe Text)
lrrrsSyncSessionToken = lens _lrrrsSyncSessionToken (\s a -> s {_lrrrsSyncSessionToken = a})

-- | Names of merged datasets.
lrrrsMergedDatasetNames :: Lens' ListRecordsResponse [Text]
lrrrsMergedDatasetNames = lens _lrrrsMergedDatasetNames (\s a -> s {_lrrrsMergedDatasetNames = a}) . _Default . _Coerce

-- | -- | The response status code.
lrrrsResponseStatus :: Lens' ListRecordsResponse Int
lrrrsResponseStatus = lens _lrrrsResponseStatus (\s a -> s {_lrrrsResponseStatus = a})

instance NFData ListRecordsResponse
