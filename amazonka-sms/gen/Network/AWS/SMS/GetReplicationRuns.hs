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
-- Module      : Network.AWS.SMS.GetReplicationRuns
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the replication runs for the specified replication job.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SMS.GetReplicationRuns
  ( -- * Creating a Request
    getReplicationRuns,
    GetReplicationRuns,

    -- * Request Lenses
    grrNextToken,
    grrMaxResults,
    grrReplicationJobId,

    -- * Destructuring the Response
    getReplicationRunsResponse,
    GetReplicationRunsResponse,

    -- * Response Lenses
    grrrrsNextToken,
    grrrrsReplicationJob,
    grrrrsReplicationRunList,
    grrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'getReplicationRuns' smart constructor.
data GetReplicationRuns = GetReplicationRuns'
  { _grrNextToken ::
      !(Maybe Text),
    _grrMaxResults :: !(Maybe Int),
    _grrReplicationJobId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetReplicationRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrNextToken' - The token for the next set of results.
--
-- * 'grrMaxResults' - The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'grrReplicationJobId' - The ID of the replication job.
getReplicationRuns ::
  -- | 'grrReplicationJobId'
  Text ->
  GetReplicationRuns
getReplicationRuns pReplicationJobId_ =
  GetReplicationRuns'
    { _grrNextToken = Nothing,
      _grrMaxResults = Nothing,
      _grrReplicationJobId = pReplicationJobId_
    }

-- | The token for the next set of results.
grrNextToken :: Lens' GetReplicationRuns (Maybe Text)
grrNextToken = lens _grrNextToken (\s a -> s {_grrNextToken = a})

-- | The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
grrMaxResults :: Lens' GetReplicationRuns (Maybe Int)
grrMaxResults = lens _grrMaxResults (\s a -> s {_grrMaxResults = a})

-- | The ID of the replication job.
grrReplicationJobId :: Lens' GetReplicationRuns Text
grrReplicationJobId = lens _grrReplicationJobId (\s a -> s {_grrReplicationJobId = a})

instance AWSPager GetReplicationRuns where
  page rq rs
    | stop (rs ^. grrrrsNextToken) = Nothing
    | stop (rs ^. grrrrsReplicationRunList) = Nothing
    | otherwise =
      Just $ rq & grrNextToken .~ rs ^. grrrrsNextToken

instance AWSRequest GetReplicationRuns where
  type
    Rs GetReplicationRuns =
      GetReplicationRunsResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          GetReplicationRunsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "replicationJob")
            <*> (x .?> "replicationRunList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetReplicationRuns

instance NFData GetReplicationRuns

instance ToHeaders GetReplicationRuns where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.GetReplicationRuns" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetReplicationRuns where
  toJSON GetReplicationRuns' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _grrNextToken,
            ("maxResults" .=) <$> _grrMaxResults,
            Just ("replicationJobId" .= _grrReplicationJobId)
          ]
      )

instance ToPath GetReplicationRuns where
  toPath = const "/"

instance ToQuery GetReplicationRuns where
  toQuery = const mempty

-- | /See:/ 'getReplicationRunsResponse' smart constructor.
data GetReplicationRunsResponse = GetReplicationRunsResponse'
  { _grrrrsNextToken ::
      !(Maybe Text),
    _grrrrsReplicationJob ::
      !( Maybe
           ReplicationJob
       ),
    _grrrrsReplicationRunList ::
      !( Maybe
           [ReplicationRun]
       ),
    _grrrrsResponseStatus ::
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

-- | Creates a value of 'GetReplicationRunsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grrrrsNextToken' - The token required to retrieve the next set of results. This value is null when there are no more results to return.
--
-- * 'grrrrsReplicationJob' - Information about the replication job.
--
-- * 'grrrrsReplicationRunList' - Information about the replication runs.
--
-- * 'grrrrsResponseStatus' - -- | The response status code.
getReplicationRunsResponse ::
  -- | 'grrrrsResponseStatus'
  Int ->
  GetReplicationRunsResponse
getReplicationRunsResponse pResponseStatus_ =
  GetReplicationRunsResponse'
    { _grrrrsNextToken =
        Nothing,
      _grrrrsReplicationJob = Nothing,
      _grrrrsReplicationRunList = Nothing,
      _grrrrsResponseStatus = pResponseStatus_
    }

-- | The token required to retrieve the next set of results. This value is null when there are no more results to return.
grrrrsNextToken :: Lens' GetReplicationRunsResponse (Maybe Text)
grrrrsNextToken = lens _grrrrsNextToken (\s a -> s {_grrrrsNextToken = a})

-- | Information about the replication job.
grrrrsReplicationJob :: Lens' GetReplicationRunsResponse (Maybe ReplicationJob)
grrrrsReplicationJob = lens _grrrrsReplicationJob (\s a -> s {_grrrrsReplicationJob = a})

-- | Information about the replication runs.
grrrrsReplicationRunList :: Lens' GetReplicationRunsResponse [ReplicationRun]
grrrrsReplicationRunList = lens _grrrrsReplicationRunList (\s a -> s {_grrrrsReplicationRunList = a}) . _Default . _Coerce

-- | -- | The response status code.
grrrrsResponseStatus :: Lens' GetReplicationRunsResponse Int
grrrrsResponseStatus = lens _grrrrsResponseStatus (\s a -> s {_grrrrsResponseStatus = a})

instance NFData GetReplicationRunsResponse
