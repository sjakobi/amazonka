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
-- Module      : Network.AWS.Snowball.ListClusterJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of @JobListEntry@ objects of the specified length. Each @JobListEntry@ object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Snowball.ListClusterJobs
  ( -- * Creating a Request
    listClusterJobs,
    ListClusterJobs,

    -- * Request Lenses
    lcjNextToken,
    lcjMaxResults,
    lcjClusterId,

    -- * Destructuring the Response
    listClusterJobsResponse,
    ListClusterJobsResponse,

    -- * Response Lenses
    lcjrrsJobListEntries,
    lcjrrsNextToken,
    lcjrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'listClusterJobs' smart constructor.
data ListClusterJobs = ListClusterJobs'
  { _lcjNextToken ::
      !(Maybe Text),
    _lcjMaxResults :: !(Maybe Nat),
    _lcjClusterId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListClusterJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcjNextToken' - HTTP requests are stateless. To identify what object comes "next" in the list of @JobListEntry@ objects, you have the option of specifying @NextToken@ as the starting point for your returned list.
--
-- * 'lcjMaxResults' - The number of @JobListEntry@ objects to return.
--
-- * 'lcjClusterId' - The 39-character ID for the cluster that you want to list, for example @CID123e4567-e89b-12d3-a456-426655440000@ .
listClusterJobs ::
  -- | 'lcjClusterId'
  Text ->
  ListClusterJobs
listClusterJobs pClusterId_ =
  ListClusterJobs'
    { _lcjNextToken = Nothing,
      _lcjMaxResults = Nothing,
      _lcjClusterId = pClusterId_
    }

-- | HTTP requests are stateless. To identify what object comes "next" in the list of @JobListEntry@ objects, you have the option of specifying @NextToken@ as the starting point for your returned list.
lcjNextToken :: Lens' ListClusterJobs (Maybe Text)
lcjNextToken = lens _lcjNextToken (\s a -> s {_lcjNextToken = a})

-- | The number of @JobListEntry@ objects to return.
lcjMaxResults :: Lens' ListClusterJobs (Maybe Natural)
lcjMaxResults = lens _lcjMaxResults (\s a -> s {_lcjMaxResults = a}) . mapping _Nat

-- | The 39-character ID for the cluster that you want to list, for example @CID123e4567-e89b-12d3-a456-426655440000@ .
lcjClusterId :: Lens' ListClusterJobs Text
lcjClusterId = lens _lcjClusterId (\s a -> s {_lcjClusterId = a})

instance AWSPager ListClusterJobs where
  page rq rs
    | stop (rs ^. lcjrrsNextToken) = Nothing
    | stop (rs ^. lcjrrsJobListEntries) = Nothing
    | otherwise =
      Just $ rq & lcjNextToken .~ rs ^. lcjrrsNextToken

instance AWSRequest ListClusterJobs where
  type Rs ListClusterJobs = ListClusterJobsResponse
  request = postJSON snowball
  response =
    receiveJSON
      ( \s h x ->
          ListClusterJobsResponse'
            <$> (x .?> "JobListEntries" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListClusterJobs

instance NFData ListClusterJobs

instance ToHeaders ListClusterJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.ListClusterJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListClusterJobs where
  toJSON ListClusterJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lcjNextToken,
            ("MaxResults" .=) <$> _lcjMaxResults,
            Just ("ClusterId" .= _lcjClusterId)
          ]
      )

instance ToPath ListClusterJobs where
  toPath = const "/"

instance ToQuery ListClusterJobs where
  toQuery = const mempty

-- | /See:/ 'listClusterJobsResponse' smart constructor.
data ListClusterJobsResponse = ListClusterJobsResponse'
  { _lcjrrsJobListEntries ::
      !(Maybe [JobListEntry]),
    _lcjrrsNextToken ::
      !(Maybe Text),
    _lcjrrsResponseStatus ::
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

-- | Creates a value of 'ListClusterJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcjrrsJobListEntries' - Each @JobListEntry@ object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs.
--
-- * 'lcjrrsNextToken' - HTTP requests are stateless. If you use the automatically generated @NextToken@ value in your next @ListClusterJobsResult@ call, your list of returned jobs will start from this point in the array.
--
-- * 'lcjrrsResponseStatus' - -- | The response status code.
listClusterJobsResponse ::
  -- | 'lcjrrsResponseStatus'
  Int ->
  ListClusterJobsResponse
listClusterJobsResponse pResponseStatus_ =
  ListClusterJobsResponse'
    { _lcjrrsJobListEntries =
        Nothing,
      _lcjrrsNextToken = Nothing,
      _lcjrrsResponseStatus = pResponseStatus_
    }

-- | Each @JobListEntry@ object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs.
lcjrrsJobListEntries :: Lens' ListClusterJobsResponse [JobListEntry]
lcjrrsJobListEntries = lens _lcjrrsJobListEntries (\s a -> s {_lcjrrsJobListEntries = a}) . _Default . _Coerce

-- | HTTP requests are stateless. If you use the automatically generated @NextToken@ value in your next @ListClusterJobsResult@ call, your list of returned jobs will start from this point in the array.
lcjrrsNextToken :: Lens' ListClusterJobsResponse (Maybe Text)
lcjrrsNextToken = lens _lcjrrsNextToken (\s a -> s {_lcjrrsNextToken = a})

-- | -- | The response status code.
lcjrrsResponseStatus :: Lens' ListClusterJobsResponse Int
lcjrrsResponseStatus = lens _lcjrrsResponseStatus (\s a -> s {_lcjrrsResponseStatus = a})

instance NFData ListClusterJobsResponse
