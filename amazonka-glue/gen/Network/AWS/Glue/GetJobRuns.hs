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
-- Module      : Network.AWS.Glue.GetJobRuns
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata for all runs of a given job definition.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetJobRuns
  ( -- * Creating a Request
    getJobRuns,
    GetJobRuns,

    -- * Request Lenses
    gjrNextToken,
    gjrMaxResults,
    gjrJobName,

    -- * Destructuring the Response
    getJobRunsResponse,
    GetJobRunsResponse,

    -- * Response Lenses
    gjrrjrsNextToken,
    gjrrjrsJobRuns,
    gjrrjrsResponseStatus,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getJobRuns' smart constructor.
data GetJobRuns = GetJobRuns'
  { _gjrNextToken ::
      !(Maybe Text),
    _gjrMaxResults :: !(Maybe Nat),
    _gjrJobName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJobRuns' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjrNextToken' - A continuation token, if this is a continuation call.
--
-- * 'gjrMaxResults' - The maximum size of the response.
--
-- * 'gjrJobName' - The name of the job definition for which to retrieve all job runs.
getJobRuns ::
  -- | 'gjrJobName'
  Text ->
  GetJobRuns
getJobRuns pJobName_ =
  GetJobRuns'
    { _gjrNextToken = Nothing,
      _gjrMaxResults = Nothing,
      _gjrJobName = pJobName_
    }

-- | A continuation token, if this is a continuation call.
gjrNextToken :: Lens' GetJobRuns (Maybe Text)
gjrNextToken = lens _gjrNextToken (\s a -> s {_gjrNextToken = a})

-- | The maximum size of the response.
gjrMaxResults :: Lens' GetJobRuns (Maybe Natural)
gjrMaxResults = lens _gjrMaxResults (\s a -> s {_gjrMaxResults = a}) . mapping _Nat

-- | The name of the job definition for which to retrieve all job runs.
gjrJobName :: Lens' GetJobRuns Text
gjrJobName = lens _gjrJobName (\s a -> s {_gjrJobName = a})

instance AWSPager GetJobRuns where
  page rq rs
    | stop (rs ^. gjrrjrsNextToken) = Nothing
    | stop (rs ^. gjrrjrsJobRuns) = Nothing
    | otherwise =
      Just $ rq & gjrNextToken .~ rs ^. gjrrjrsNextToken

instance AWSRequest GetJobRuns where
  type Rs GetJobRuns = GetJobRunsResponse
  request = postJSON glue
  response =
    receiveJSON
      ( \s h x ->
          GetJobRunsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "JobRuns" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetJobRuns

instance NFData GetJobRuns

instance ToHeaders GetJobRuns where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSGlue.GetJobRuns" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetJobRuns where
  toJSON GetJobRuns' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _gjrNextToken,
            ("MaxResults" .=) <$> _gjrMaxResults,
            Just ("JobName" .= _gjrJobName)
          ]
      )

instance ToPath GetJobRuns where
  toPath = const "/"

instance ToQuery GetJobRuns where
  toQuery = const mempty

-- | /See:/ 'getJobRunsResponse' smart constructor.
data GetJobRunsResponse = GetJobRunsResponse'
  { _gjrrjrsNextToken ::
      !(Maybe Text),
    _gjrrjrsJobRuns ::
      !(Maybe [JobRun]),
    _gjrrjrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetJobRunsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gjrrjrsNextToken' - A continuation token, if not all requested job runs have been returned.
--
-- * 'gjrrjrsJobRuns' - A list of job-run metadata objects.
--
-- * 'gjrrjrsResponseStatus' - -- | The response status code.
getJobRunsResponse ::
  -- | 'gjrrjrsResponseStatus'
  Int ->
  GetJobRunsResponse
getJobRunsResponse pResponseStatus_ =
  GetJobRunsResponse'
    { _gjrrjrsNextToken = Nothing,
      _gjrrjrsJobRuns = Nothing,
      _gjrrjrsResponseStatus = pResponseStatus_
    }

-- | A continuation token, if not all requested job runs have been returned.
gjrrjrsNextToken :: Lens' GetJobRunsResponse (Maybe Text)
gjrrjrsNextToken = lens _gjrrjrsNextToken (\s a -> s {_gjrrjrsNextToken = a})

-- | A list of job-run metadata objects.
gjrrjrsJobRuns :: Lens' GetJobRunsResponse [JobRun]
gjrrjrsJobRuns = lens _gjrrjrsJobRuns (\s a -> s {_gjrrjrsJobRuns = a}) . _Default . _Coerce

-- | -- | The response status code.
gjrrjrsResponseStatus :: Lens' GetJobRunsResponse Int
gjrrjrsResponseStatus = lens _gjrrjrsResponseStatus (\s a -> s {_gjrrjrsResponseStatus = a})

instance NFData GetJobRunsResponse
