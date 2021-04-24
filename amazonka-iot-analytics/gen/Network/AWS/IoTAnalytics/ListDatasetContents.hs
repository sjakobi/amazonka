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
-- Module      : Network.AWS.IoTAnalytics.ListDatasetContents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists information about data set contents that have been created.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoTAnalytics.ListDatasetContents
  ( -- * Creating a Request
    listDatasetContents,
    ListDatasetContents,

    -- * Request Lenses
    ldcNextToken,
    ldcMaxResults,
    ldcScheduledBefore,
    ldcScheduledOnOrAfter,
    ldcDatasetName,

    -- * Destructuring the Response
    listDatasetContentsResponse,
    ListDatasetContentsResponse,

    -- * Response Lenses
    ldcrrsNextToken,
    ldcrrsDatasetContentSummaries,
    ldcrrsResponseStatus,
  )
where

import Network.AWS.IoTAnalytics.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDatasetContents' smart constructor.
data ListDatasetContents = ListDatasetContents'
  { _ldcNextToken ::
      !(Maybe Text),
    _ldcMaxResults :: !(Maybe Nat),
    _ldcScheduledBefore ::
      !(Maybe POSIX),
    _ldcScheduledOnOrAfter ::
      !(Maybe POSIX),
    _ldcDatasetName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListDatasetContents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcNextToken' - The token for the next set of results.
--
-- * 'ldcMaxResults' - The maximum number of results to return in this request.
--
-- * 'ldcScheduledBefore' - A filter to limit results to those data set contents whose creation is scheduled before the given time. See the field @triggers.schedule@ in the @CreateDataset@ request. (timestamp)
--
-- * 'ldcScheduledOnOrAfter' - A filter to limit results to those data set contents whose creation is scheduled on or after the given time. See the field @triggers.schedule@ in the @CreateDataset@ request. (timestamp)
--
-- * 'ldcDatasetName' - The name of the data set whose contents information you want to list.
listDatasetContents ::
  -- | 'ldcDatasetName'
  Text ->
  ListDatasetContents
listDatasetContents pDatasetName_ =
  ListDatasetContents'
    { _ldcNextToken = Nothing,
      _ldcMaxResults = Nothing,
      _ldcScheduledBefore = Nothing,
      _ldcScheduledOnOrAfter = Nothing,
      _ldcDatasetName = pDatasetName_
    }

-- | The token for the next set of results.
ldcNextToken :: Lens' ListDatasetContents (Maybe Text)
ldcNextToken = lens _ldcNextToken (\s a -> s {_ldcNextToken = a})

-- | The maximum number of results to return in this request.
ldcMaxResults :: Lens' ListDatasetContents (Maybe Natural)
ldcMaxResults = lens _ldcMaxResults (\s a -> s {_ldcMaxResults = a}) . mapping _Nat

-- | A filter to limit results to those data set contents whose creation is scheduled before the given time. See the field @triggers.schedule@ in the @CreateDataset@ request. (timestamp)
ldcScheduledBefore :: Lens' ListDatasetContents (Maybe UTCTime)
ldcScheduledBefore = lens _ldcScheduledBefore (\s a -> s {_ldcScheduledBefore = a}) . mapping _Time

-- | A filter to limit results to those data set contents whose creation is scheduled on or after the given time. See the field @triggers.schedule@ in the @CreateDataset@ request. (timestamp)
ldcScheduledOnOrAfter :: Lens' ListDatasetContents (Maybe UTCTime)
ldcScheduledOnOrAfter = lens _ldcScheduledOnOrAfter (\s a -> s {_ldcScheduledOnOrAfter = a}) . mapping _Time

-- | The name of the data set whose contents information you want to list.
ldcDatasetName :: Lens' ListDatasetContents Text
ldcDatasetName = lens _ldcDatasetName (\s a -> s {_ldcDatasetName = a})

instance AWSPager ListDatasetContents where
  page rq rs
    | stop (rs ^. ldcrrsNextToken) = Nothing
    | stop (rs ^. ldcrrsDatasetContentSummaries) =
      Nothing
    | otherwise =
      Just $ rq & ldcNextToken .~ rs ^. ldcrrsNextToken

instance AWSRequest ListDatasetContents where
  type
    Rs ListDatasetContents =
      ListDatasetContentsResponse
  request = get ioTAnalytics
  response =
    receiveJSON
      ( \s h x ->
          ListDatasetContentsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "datasetContentSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDatasetContents

instance NFData ListDatasetContents

instance ToHeaders ListDatasetContents where
  toHeaders = const mempty

instance ToPath ListDatasetContents where
  toPath ListDatasetContents' {..} =
    mconcat
      ["/datasets/", toBS _ldcDatasetName, "/contents"]

instance ToQuery ListDatasetContents where
  toQuery ListDatasetContents' {..} =
    mconcat
      [ "nextToken" =: _ldcNextToken,
        "maxResults" =: _ldcMaxResults,
        "scheduledBefore" =: _ldcScheduledBefore,
        "scheduledOnOrAfter" =: _ldcScheduledOnOrAfter
      ]

-- | /See:/ 'listDatasetContentsResponse' smart constructor.
data ListDatasetContentsResponse = ListDatasetContentsResponse'
  { _ldcrrsNextToken ::
      !(Maybe Text),
    _ldcrrsDatasetContentSummaries ::
      !( Maybe
           [DatasetContentSummary]
       ),
    _ldcrrsResponseStatus ::
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

-- | Creates a value of 'ListDatasetContentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldcrrsNextToken' - The token to retrieve the next set of results, or @null@ if there are no more results.
--
-- * 'ldcrrsDatasetContentSummaries' - Summary information about data set contents that have been created.
--
-- * 'ldcrrsResponseStatus' - -- | The response status code.
listDatasetContentsResponse ::
  -- | 'ldcrrsResponseStatus'
  Int ->
  ListDatasetContentsResponse
listDatasetContentsResponse pResponseStatus_ =
  ListDatasetContentsResponse'
    { _ldcrrsNextToken =
        Nothing,
      _ldcrrsDatasetContentSummaries = Nothing,
      _ldcrrsResponseStatus = pResponseStatus_
    }

-- | The token to retrieve the next set of results, or @null@ if there are no more results.
ldcrrsNextToken :: Lens' ListDatasetContentsResponse (Maybe Text)
ldcrrsNextToken = lens _ldcrrsNextToken (\s a -> s {_ldcrrsNextToken = a})

-- | Summary information about data set contents that have been created.
ldcrrsDatasetContentSummaries :: Lens' ListDatasetContentsResponse [DatasetContentSummary]
ldcrrsDatasetContentSummaries = lens _ldcrrsDatasetContentSummaries (\s a -> s {_ldcrrsDatasetContentSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
ldcrrsResponseStatus :: Lens' ListDatasetContentsResponse Int
ldcrrsResponseStatus = lens _ldcrrsResponseStatus (\s a -> s {_ldcrrsResponseStatus = a})

instance NFData ListDatasetContentsResponse
