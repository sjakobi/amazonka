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
-- Module      : Network.AWS.DeviceFarm.ListJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about jobs for a given test run.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListJobs
  ( -- * Creating a Request
    listJobs,
    ListJobs,

    -- * Request Lenses
    ljNextToken,
    ljArn,

    -- * Destructuring the Response
    listJobsResponse,
    ListJobsResponse,

    -- * Response Lenses
    ljrrsNextToken,
    ljrrsJobs,
    ljrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents a request to the list jobs operation.
--
--
--
-- /See:/ 'listJobs' smart constructor.
data ListJobs = ListJobs'
  { _ljNextToken ::
      !(Maybe Text),
    _ljArn :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'ljArn' - The run's Amazon Resource Name (ARN).
listJobs ::
  -- | 'ljArn'
  Text ->
  ListJobs
listJobs pArn_ =
  ListJobs' {_ljNextToken = Nothing, _ljArn = pArn_}

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
ljNextToken :: Lens' ListJobs (Maybe Text)
ljNextToken = lens _ljNextToken (\s a -> s {_ljNextToken = a})

-- | The run's Amazon Resource Name (ARN).
ljArn :: Lens' ListJobs Text
ljArn = lens _ljArn (\s a -> s {_ljArn = a})

instance AWSPager ListJobs where
  page rq rs
    | stop (rs ^. ljrrsNextToken) = Nothing
    | stop (rs ^. ljrrsJobs) = Nothing
    | otherwise =
      Just $ rq & ljNextToken .~ rs ^. ljrrsNextToken

instance AWSRequest ListJobs where
  type Rs ListJobs = ListJobsResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          ListJobsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "jobs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListJobs

instance NFData ListJobs

instance ToHeaders ListJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DeviceFarm_20150623.ListJobs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListJobs where
  toJSON ListJobs' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ljNextToken,
            Just ("arn" .= _ljArn)
          ]
      )

instance ToPath ListJobs where
  toPath = const "/"

instance ToQuery ListJobs where
  toQuery = const mempty

-- | Represents the result of a list jobs request.
--
--
--
-- /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { _ljrrsNextToken ::
      !(Maybe Text),
    _ljrrsJobs :: !(Maybe [Job]),
    _ljrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrrsNextToken' - If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
--
-- * 'ljrrsJobs' - Information about the jobs.
--
-- * 'ljrrsResponseStatus' - -- | The response status code.
listJobsResponse ::
  -- | 'ljrrsResponseStatus'
  Int ->
  ListJobsResponse
listJobsResponse pResponseStatus_ =
  ListJobsResponse'
    { _ljrrsNextToken = Nothing,
      _ljrrsJobs = Nothing,
      _ljrrsResponseStatus = pResponseStatus_
    }

-- | If the number of items that are returned is significantly large, this is an identifier that is also returned. It can be used in a subsequent call to this operation to return the next set of items in the list.
ljrrsNextToken :: Lens' ListJobsResponse (Maybe Text)
ljrrsNextToken = lens _ljrrsNextToken (\s a -> s {_ljrrsNextToken = a})

-- | Information about the jobs.
ljrrsJobs :: Lens' ListJobsResponse [Job]
ljrrsJobs = lens _ljrrsJobs (\s a -> s {_ljrrsJobs = a}) . _Default . _Coerce

-- | -- | The response status code.
ljrrsResponseStatus :: Lens' ListJobsResponse Int
ljrrsResponseStatus = lens _ljrrsResponseStatus (\s a -> s {_ljrrsResponseStatus = a})

instance NFData ListJobsResponse
