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
-- Module      : Network.AWS.IoT.ListDetectMitigationActionsTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List of Device Defender ML Detect mitigation actions tasks.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListDetectMitigationActionsTasks
  ( -- * Creating a Request
    listDetectMitigationActionsTasks,
    ListDetectMitigationActionsTasks,

    -- * Request Lenses
    ldmatNextToken,
    ldmatMaxResults,
    ldmatStartTime,
    ldmatEndTime,

    -- * Destructuring the Response
    listDetectMitigationActionsTasksResponse,
    ListDetectMitigationActionsTasksResponse,

    -- * Response Lenses
    ldmatrrsNextToken,
    ldmatrrsTasks,
    ldmatrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDetectMitigationActionsTasks' smart constructor.
data ListDetectMitigationActionsTasks = ListDetectMitigationActionsTasks'
  { _ldmatNextToken ::
      !( Maybe
           Text
       ),
    _ldmatMaxResults ::
      !( Maybe
           Nat
       ),
    _ldmatStartTime ::
      !POSIX,
    _ldmatEndTime ::
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

-- | Creates a value of 'ListDetectMitigationActionsTasks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldmatNextToken' - The token for the next set of results.
--
-- * 'ldmatMaxResults' - The maximum number of results to return at one time. The default is 25.
--
-- * 'ldmatStartTime' - A filter to limit results to those found after the specified time. You must specify either the startTime and endTime or the taskId, but not both.
--
-- * 'ldmatEndTime' - The end of the time period for which ML Detect mitigation actions tasks are returned.
listDetectMitigationActionsTasks ::
  -- | 'ldmatStartTime'
  UTCTime ->
  -- | 'ldmatEndTime'
  UTCTime ->
  ListDetectMitigationActionsTasks
listDetectMitigationActionsTasks
  pStartTime_
  pEndTime_ =
    ListDetectMitigationActionsTasks'
      { _ldmatNextToken =
          Nothing,
        _ldmatMaxResults = Nothing,
        _ldmatStartTime = _Time # pStartTime_,
        _ldmatEndTime = _Time # pEndTime_
      }

-- | The token for the next set of results.
ldmatNextToken :: Lens' ListDetectMitigationActionsTasks (Maybe Text)
ldmatNextToken = lens _ldmatNextToken (\s a -> s {_ldmatNextToken = a})

-- | The maximum number of results to return at one time. The default is 25.
ldmatMaxResults :: Lens' ListDetectMitigationActionsTasks (Maybe Natural)
ldmatMaxResults = lens _ldmatMaxResults (\s a -> s {_ldmatMaxResults = a}) . mapping _Nat

-- | A filter to limit results to those found after the specified time. You must specify either the startTime and endTime or the taskId, but not both.
ldmatStartTime :: Lens' ListDetectMitigationActionsTasks UTCTime
ldmatStartTime = lens _ldmatStartTime (\s a -> s {_ldmatStartTime = a}) . _Time

-- | The end of the time period for which ML Detect mitigation actions tasks are returned.
ldmatEndTime :: Lens' ListDetectMitigationActionsTasks UTCTime
ldmatEndTime = lens _ldmatEndTime (\s a -> s {_ldmatEndTime = a}) . _Time

instance AWSPager ListDetectMitigationActionsTasks where
  page rq rs
    | stop (rs ^. ldmatrrsNextToken) = Nothing
    | stop (rs ^. ldmatrrsTasks) = Nothing
    | otherwise =
      Just $ rq & ldmatNextToken .~ rs ^. ldmatrrsNextToken

instance AWSRequest ListDetectMitigationActionsTasks where
  type
    Rs ListDetectMitigationActionsTasks =
      ListDetectMitigationActionsTasksResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListDetectMitigationActionsTasksResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "tasks" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListDetectMitigationActionsTasks

instance NFData ListDetectMitigationActionsTasks

instance ToHeaders ListDetectMitigationActionsTasks where
  toHeaders = const mempty

instance ToPath ListDetectMitigationActionsTasks where
  toPath = const "/detect/mitigationactions/tasks"

instance ToQuery ListDetectMitigationActionsTasks where
  toQuery ListDetectMitigationActionsTasks' {..} =
    mconcat
      [ "nextToken" =: _ldmatNextToken,
        "maxResults" =: _ldmatMaxResults,
        "startTime" =: _ldmatStartTime,
        "endTime" =: _ldmatEndTime
      ]

-- | /See:/ 'listDetectMitigationActionsTasksResponse' smart constructor.
data ListDetectMitigationActionsTasksResponse = ListDetectMitigationActionsTasksResponse'
  { _ldmatrrsNextToken ::
      !( Maybe
           Text
       ),
    _ldmatrrsTasks ::
      !( Maybe
           [DetectMitigationActionsTaskSummary]
       ),
    _ldmatrrsResponseStatus ::
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

-- | Creates a value of 'ListDetectMitigationActionsTasksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldmatrrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'ldmatrrsTasks' - The collection of ML Detect mitigation tasks that matched the filter criteria.
--
-- * 'ldmatrrsResponseStatus' - -- | The response status code.
listDetectMitigationActionsTasksResponse ::
  -- | 'ldmatrrsResponseStatus'
  Int ->
  ListDetectMitigationActionsTasksResponse
listDetectMitigationActionsTasksResponse
  pResponseStatus_ =
    ListDetectMitigationActionsTasksResponse'
      { _ldmatrrsNextToken =
          Nothing,
        _ldmatrrsTasks = Nothing,
        _ldmatrrsResponseStatus =
          pResponseStatus_
      }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
ldmatrrsNextToken :: Lens' ListDetectMitigationActionsTasksResponse (Maybe Text)
ldmatrrsNextToken = lens _ldmatrrsNextToken (\s a -> s {_ldmatrrsNextToken = a})

-- | The collection of ML Detect mitigation tasks that matched the filter criteria.
ldmatrrsTasks :: Lens' ListDetectMitigationActionsTasksResponse [DetectMitigationActionsTaskSummary]
ldmatrrsTasks = lens _ldmatrrsTasks (\s a -> s {_ldmatrrsTasks = a}) . _Default . _Coerce

-- | -- | The response status code.
ldmatrrsResponseStatus :: Lens' ListDetectMitigationActionsTasksResponse Int
ldmatrrsResponseStatus = lens _ldmatrrsResponseStatus (\s a -> s {_ldmatrrsResponseStatus = a})

instance
  NFData
    ListDetectMitigationActionsTasksResponse
