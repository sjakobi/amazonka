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
-- Module      : Network.AWS.IoT.ListAuditMitigationActionsTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of audit mitigation action tasks that match the specified filters.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListAuditMitigationActionsTasks
  ( -- * Creating a Request
    listAuditMitigationActionsTasks,
    ListAuditMitigationActionsTasks,

    -- * Request Lenses
    lamatNextToken,
    lamatMaxResults,
    lamatFindingId,
    lamatAuditTaskId,
    lamatTaskStatus,
    lamatStartTime,
    lamatEndTime,

    -- * Destructuring the Response
    listAuditMitigationActionsTasksResponse,
    ListAuditMitigationActionsTasksResponse,

    -- * Response Lenses
    lamatrrsNextToken,
    lamatrrsTasks,
    lamatrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAuditMitigationActionsTasks' smart constructor.
data ListAuditMitigationActionsTasks = ListAuditMitigationActionsTasks'
  { _lamatNextToken ::
      !( Maybe
           Text
       ),
    _lamatMaxResults ::
      !( Maybe
           Nat
       ),
    _lamatFindingId ::
      !( Maybe
           Text
       ),
    _lamatAuditTaskId ::
      !( Maybe
           Text
       ),
    _lamatTaskStatus ::
      !( Maybe
           AuditMitigationActionsTaskStatus
       ),
    _lamatStartTime ::
      !POSIX,
    _lamatEndTime ::
      !POSIX
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAuditMitigationActionsTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lamatNextToken' - The token for the next set of results.
--
-- * 'lamatMaxResults' - The maximum number of results to return at one time. The default is 25.
--
-- * 'lamatFindingId' - Specify this filter to limit results to tasks that were applied to a specific audit finding.
--
-- * 'lamatAuditTaskId' - Specify this filter to limit results to tasks that were applied to results for a specific audit.
--
-- * 'lamatTaskStatus' - Specify this filter to limit results to tasks that are in a specific state.
--
-- * 'lamatStartTime' - Specify this filter to limit results to tasks that began on or after a specific date and time.
--
-- * 'lamatEndTime' - Specify this filter to limit results to tasks that were completed or canceled on or before a specific date and time.
listAuditMitigationActionsTasks ::
  -- | 'lamatStartTime'
  UTCTime ->
  -- | 'lamatEndTime'
  UTCTime ->
  ListAuditMitigationActionsTasks
listAuditMitigationActionsTasks pStartTime_ pEndTime_ =
  ListAuditMitigationActionsTasks'
    { _lamatNextToken =
        Nothing,
      _lamatMaxResults = Nothing,
      _lamatFindingId = Nothing,
      _lamatAuditTaskId = Nothing,
      _lamatTaskStatus = Nothing,
      _lamatStartTime = _Time # pStartTime_,
      _lamatEndTime = _Time # pEndTime_
    }

-- | The token for the next set of results.
lamatNextToken :: Lens' ListAuditMitigationActionsTasks (Maybe Text)
lamatNextToken = lens _lamatNextToken (\s a -> s {_lamatNextToken = a})

-- | The maximum number of results to return at one time. The default is 25.
lamatMaxResults :: Lens' ListAuditMitigationActionsTasks (Maybe Natural)
lamatMaxResults = lens _lamatMaxResults (\s a -> s {_lamatMaxResults = a}) . mapping _Nat

-- | Specify this filter to limit results to tasks that were applied to a specific audit finding.
lamatFindingId :: Lens' ListAuditMitigationActionsTasks (Maybe Text)
lamatFindingId = lens _lamatFindingId (\s a -> s {_lamatFindingId = a})

-- | Specify this filter to limit results to tasks that were applied to results for a specific audit.
lamatAuditTaskId :: Lens' ListAuditMitigationActionsTasks (Maybe Text)
lamatAuditTaskId = lens _lamatAuditTaskId (\s a -> s {_lamatAuditTaskId = a})

-- | Specify this filter to limit results to tasks that are in a specific state.
lamatTaskStatus :: Lens' ListAuditMitigationActionsTasks (Maybe AuditMitigationActionsTaskStatus)
lamatTaskStatus = lens _lamatTaskStatus (\s a -> s {_lamatTaskStatus = a})

-- | Specify this filter to limit results to tasks that began on or after a specific date and time.
lamatStartTime :: Lens' ListAuditMitigationActionsTasks UTCTime
lamatStartTime = lens _lamatStartTime (\s a -> s {_lamatStartTime = a}) . _Time

-- | Specify this filter to limit results to tasks that were completed or canceled on or before a specific date and time.
lamatEndTime :: Lens' ListAuditMitigationActionsTasks UTCTime
lamatEndTime = lens _lamatEndTime (\s a -> s {_lamatEndTime = a}) . _Time

instance AWSPager ListAuditMitigationActionsTasks where
  page rq rs
    | stop (rs ^. lamatrrsNextToken) = Nothing
    | stop (rs ^. lamatrrsTasks) = Nothing
    | otherwise =
      Just $ rq & lamatNextToken .~ rs ^. lamatrrsNextToken

instance AWSRequest ListAuditMitigationActionsTasks where
  type
    Rs ListAuditMitigationActionsTasks =
      ListAuditMitigationActionsTasksResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListAuditMitigationActionsTasksResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "tasks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAuditMitigationActionsTasks

instance NFData ListAuditMitigationActionsTasks

instance ToHeaders ListAuditMitigationActionsTasks where
  toHeaders = const mempty

instance ToPath ListAuditMitigationActionsTasks where
  toPath = const "/audit/mitigationactions/tasks"

instance ToQuery ListAuditMitigationActionsTasks where
  toQuery ListAuditMitigationActionsTasks' {..} =
    mconcat
      [ "nextToken" =: _lamatNextToken,
        "maxResults" =: _lamatMaxResults,
        "findingId" =: _lamatFindingId,
        "auditTaskId" =: _lamatAuditTaskId,
        "taskStatus" =: _lamatTaskStatus,
        "startTime" =: _lamatStartTime,
        "endTime" =: _lamatEndTime
      ]

-- | /See:/ 'listAuditMitigationActionsTasksResponse' smart constructor.
data ListAuditMitigationActionsTasksResponse = ListAuditMitigationActionsTasksResponse'
  { _lamatrrsNextToken ::
      !( Maybe
           Text
       ),
    _lamatrrsTasks ::
      !( Maybe
           [AuditMitigationActionsTaskMetadata]
       ),
    _lamatrrsResponseStatus ::
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

-- | Creates a value of 'ListAuditMitigationActionsTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lamatrrsNextToken' - The token for the next set of results.
--
-- * 'lamatrrsTasks' - The collection of audit mitigation tasks that matched the filter criteria.
--
-- * 'lamatrrsResponseStatus' - -- | The response status code.
listAuditMitigationActionsTasksResponse ::
  -- | 'lamatrrsResponseStatus'
  Int ->
  ListAuditMitigationActionsTasksResponse
listAuditMitigationActionsTasksResponse
  pResponseStatus_ =
    ListAuditMitigationActionsTasksResponse'
      { _lamatrrsNextToken =
          Nothing,
        _lamatrrsTasks = Nothing,
        _lamatrrsResponseStatus =
          pResponseStatus_
      }

-- | The token for the next set of results.
lamatrrsNextToken :: Lens' ListAuditMitigationActionsTasksResponse (Maybe Text)
lamatrrsNextToken = lens _lamatrrsNextToken (\s a -> s {_lamatrrsNextToken = a})

-- | The collection of audit mitigation tasks that matched the filter criteria.
lamatrrsTasks :: Lens' ListAuditMitigationActionsTasksResponse [AuditMitigationActionsTaskMetadata]
lamatrrsTasks = lens _lamatrrsTasks (\s a -> s {_lamatrrsTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
lamatrrsResponseStatus :: Lens' ListAuditMitigationActionsTasksResponse Int
lamatrrsResponseStatus = lens _lamatrrsResponseStatus (\s a -> s {_lamatrrsResponseStatus = a})

instance
  NFData
    ListAuditMitigationActionsTasksResponse
