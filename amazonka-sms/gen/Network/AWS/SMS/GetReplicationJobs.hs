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
-- Module      : Network.AWS.SMS.GetReplicationJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified replication job or all of your replication jobs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SMS.GetReplicationJobs
  ( -- * Creating a Request
    getReplicationJobs,
    GetReplicationJobs,

    -- * Request Lenses
    grjNextToken,
    grjMaxResults,
    grjReplicationJobId,

    -- * Destructuring the Response
    getReplicationJobsResponse,
    GetReplicationJobsResponse,

    -- * Response Lenses
    grjrrsNextToken,
    grjrrsReplicationJobList,
    grjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'getReplicationJobs' smart constructor.
data GetReplicationJobs = GetReplicationJobs'
  { _grjNextToken ::
      !(Maybe Text),
    _grjMaxResults :: !(Maybe Int),
    _grjReplicationJobId ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetReplicationJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grjNextToken' - The token for the next set of results.
--
-- * 'grjMaxResults' - The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'grjReplicationJobId' - The ID of the replication job.
getReplicationJobs ::
  GetReplicationJobs
getReplicationJobs =
  GetReplicationJobs'
    { _grjNextToken = Nothing,
      _grjMaxResults = Nothing,
      _grjReplicationJobId = Nothing
    }

-- | The token for the next set of results.
grjNextToken :: Lens' GetReplicationJobs (Maybe Text)
grjNextToken = lens _grjNextToken (\s a -> s {_grjNextToken = a})

-- | The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
grjMaxResults :: Lens' GetReplicationJobs (Maybe Int)
grjMaxResults = lens _grjMaxResults (\s a -> s {_grjMaxResults = a})

-- | The ID of the replication job.
grjReplicationJobId :: Lens' GetReplicationJobs (Maybe Text)
grjReplicationJobId = lens _grjReplicationJobId (\s a -> s {_grjReplicationJobId = a})

instance AWSPager GetReplicationJobs where
  page rq rs
    | stop (rs ^. grjrrsNextToken) = Nothing
    | stop (rs ^. grjrrsReplicationJobList) = Nothing
    | otherwise =
      Just $ rq & grjNextToken .~ rs ^. grjrrsNextToken

instance AWSRequest GetReplicationJobs where
  type
    Rs GetReplicationJobs =
      GetReplicationJobsResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          GetReplicationJobsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "replicationJobList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetReplicationJobs

instance NFData GetReplicationJobs

instance ToHeaders GetReplicationJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.GetReplicationJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetReplicationJobs where
  toJSON GetReplicationJobs' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _grjNextToken,
            ("maxResults" .=) <$> _grjMaxResults,
            ("replicationJobId" .=) <$> _grjReplicationJobId
          ]
      )

instance ToPath GetReplicationJobs where
  toPath = const "/"

instance ToQuery GetReplicationJobs where
  toQuery = const mempty

-- | /See:/ 'getReplicationJobsResponse' smart constructor.
data GetReplicationJobsResponse = GetReplicationJobsResponse'
  { _grjrrsNextToken ::
      !(Maybe Text),
    _grjrrsReplicationJobList ::
      !( Maybe
           [ReplicationJob]
       ),
    _grjrrsResponseStatus ::
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

-- | Creates a value of 'GetReplicationJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grjrrsNextToken' - The token required to retrieve the next set of results. This value is null when there are no more results to return.
--
-- * 'grjrrsReplicationJobList' - Information about the replication jobs.
--
-- * 'grjrrsResponseStatus' - -- | The response status code.
getReplicationJobsResponse ::
  -- | 'grjrrsResponseStatus'
  Int ->
  GetReplicationJobsResponse
getReplicationJobsResponse pResponseStatus_ =
  GetReplicationJobsResponse'
    { _grjrrsNextToken =
        Nothing,
      _grjrrsReplicationJobList = Nothing,
      _grjrrsResponseStatus = pResponseStatus_
    }

-- | The token required to retrieve the next set of results. This value is null when there are no more results to return.
grjrrsNextToken :: Lens' GetReplicationJobsResponse (Maybe Text)
grjrrsNextToken = lens _grjrrsNextToken (\s a -> s {_grjrrsNextToken = a})

-- | Information about the replication jobs.
grjrrsReplicationJobList :: Lens' GetReplicationJobsResponse [ReplicationJob]
grjrrsReplicationJobList = lens _grjrrsReplicationJobList (\s a -> s {_grjrrsReplicationJobList = a}) . _Default . _Coerce

-- | -- | The response status code.
grjrrsResponseStatus :: Lens' GetReplicationJobsResponse Int
grjrrsResponseStatus = lens _grjrrsResponseStatus (\s a -> s {_grjrrsResponseStatus = a})

instance NFData GetReplicationJobsResponse
