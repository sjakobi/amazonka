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
-- Module      : Network.AWS.IoT.ListJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists jobs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListJobs
  ( -- * Creating a Request
    listJobs,
    ListJobs,

    -- * Request Lenses
    ljNextToken,
    ljStatus,
    ljTargetSelection,
    ljMaxResults,
    ljNamespaceId,
    ljThingGroupName,
    ljThingGroupId,

    -- * Destructuring the Response
    listJobsResponse,
    ListJobsResponse,

    -- * Response Lenses
    ljrrsNextToken,
    ljrrsJobs,
    ljrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listJobs' smart constructor.
data ListJobs = ListJobs'
  { _ljNextToken ::
      !(Maybe Text),
    _ljStatus :: !(Maybe JobStatus),
    _ljTargetSelection :: !(Maybe TargetSelection),
    _ljMaxResults :: !(Maybe Nat),
    _ljNamespaceId :: !(Maybe Text),
    _ljThingGroupName :: !(Maybe Text),
    _ljThingGroupId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljNextToken' - The token to retrieve the next set of results.
--
-- * 'ljStatus' - An optional filter that lets you search for jobs that have the specified status.
--
-- * 'ljTargetSelection' - Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a thing when the thing is added to a target group, even after the job was completed by all things originally in the group.
--
-- * 'ljMaxResults' - The maximum number of results to return per request.
--
-- * 'ljNamespaceId' - The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
--
-- * 'ljThingGroupName' - A filter that limits the returned jobs to those for the specified group.
--
-- * 'ljThingGroupId' - A filter that limits the returned jobs to those for the specified group.
listJobs ::
  ListJobs
listJobs =
  ListJobs'
    { _ljNextToken = Nothing,
      _ljStatus = Nothing,
      _ljTargetSelection = Nothing,
      _ljMaxResults = Nothing,
      _ljNamespaceId = Nothing,
      _ljThingGroupName = Nothing,
      _ljThingGroupId = Nothing
    }

-- | The token to retrieve the next set of results.
ljNextToken :: Lens' ListJobs (Maybe Text)
ljNextToken = lens _ljNextToken (\s a -> s {_ljNextToken = a})

-- | An optional filter that lets you search for jobs that have the specified status.
ljStatus :: Lens' ListJobs (Maybe JobStatus)
ljStatus = lens _ljStatus (\s a -> s {_ljStatus = a})

-- | Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing when a change is detected in a target. For example, a job will run on a thing when the thing is added to a target group, even after the job was completed by all things originally in the group.
ljTargetSelection :: Lens' ListJobs (Maybe TargetSelection)
ljTargetSelection = lens _ljTargetSelection (\s a -> s {_ljTargetSelection = a})

-- | The maximum number of results to return per request.
ljMaxResults :: Lens' ListJobs (Maybe Natural)
ljMaxResults = lens _ljMaxResults (\s a -> s {_ljMaxResults = a}) . mapping _Nat

-- | The namespace used to indicate that a job is a customer-managed job. When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that contain the value in the following format. @> aws/things//THING_NAME/ /jobs//JOB_ID/ /notify-namespace-/NAMESPACE_ID/ /@
ljNamespaceId :: Lens' ListJobs (Maybe Text)
ljNamespaceId = lens _ljNamespaceId (\s a -> s {_ljNamespaceId = a})

-- | A filter that limits the returned jobs to those for the specified group.
ljThingGroupName :: Lens' ListJobs (Maybe Text)
ljThingGroupName = lens _ljThingGroupName (\s a -> s {_ljThingGroupName = a})

-- | A filter that limits the returned jobs to those for the specified group.
ljThingGroupId :: Lens' ListJobs (Maybe Text)
ljThingGroupId = lens _ljThingGroupId (\s a -> s {_ljThingGroupId = a})

instance AWSPager ListJobs where
  page rq rs
    | stop (rs ^. ljrrsNextToken) = Nothing
    | stop (rs ^. ljrrsJobs) = Nothing
    | otherwise =
      Just $ rq & ljNextToken .~ rs ^. ljrrsNextToken

instance AWSRequest ListJobs where
  type Rs ListJobs = ListJobsResponse
  request = get ioT
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
  toHeaders = const mempty

instance ToPath ListJobs where
  toPath = const "/jobs"

instance ToQuery ListJobs where
  toQuery ListJobs' {..} =
    mconcat
      [ "nextToken" =: _ljNextToken,
        "status" =: _ljStatus,
        "targetSelection" =: _ljTargetSelection,
        "maxResults" =: _ljMaxResults,
        "namespaceId" =: _ljNamespaceId,
        "thingGroupName" =: _ljThingGroupName,
        "thingGroupId" =: _ljThingGroupId
      ]

-- | /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { _ljrrsNextToken ::
      !(Maybe Text),
    _ljrrsJobs :: !(Maybe [JobSummary]),
    _ljrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrrsNextToken' - The token for the next set of results, or __null__ if there are no additional results.
--
-- * 'ljrrsJobs' - A list of jobs.
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

-- | The token for the next set of results, or __null__ if there are no additional results.
ljrrsNextToken :: Lens' ListJobsResponse (Maybe Text)
ljrrsNextToken = lens _ljrrsNextToken (\s a -> s {_ljrrsNextToken = a})

-- | A list of jobs.
ljrrsJobs :: Lens' ListJobsResponse [JobSummary]
ljrrsJobs = lens _ljrrsJobs (\s a -> s {_ljrrsJobs = a}) . _Default . _Coerce

-- | -- | The response status code.
ljrrsResponseStatus :: Lens' ListJobsResponse Int
ljrrsResponseStatus = lens _ljrrsResponseStatus (\s a -> s {_ljrrsResponseStatus = a})

instance NFData ListJobsResponse
