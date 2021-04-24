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
-- Module      : Network.AWS.IoT.ListDetectMitigationActionsExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists mitigation actions executions for a Device Defender ML Detect Security Profile.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListDetectMitigationActionsExecutions
  ( -- * Creating a Request
    listDetectMitigationActionsExecutions,
    ListDetectMitigationActionsExecutions,

    -- * Request Lenses
    ldmaeNextToken,
    ldmaeViolationId,
    ldmaeMaxResults,
    ldmaeThingName,
    ldmaeTaskId,
    ldmaeStartTime,
    ldmaeEndTime,

    -- * Destructuring the Response
    listDetectMitigationActionsExecutionsResponse,
    ListDetectMitigationActionsExecutionsResponse,

    -- * Response Lenses
    ldmaerrsNextToken,
    ldmaerrsActionsExecutions,
    ldmaerrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listDetectMitigationActionsExecutions' smart constructor.
data ListDetectMitigationActionsExecutions = ListDetectMitigationActionsExecutions'
  { _ldmaeNextToken ::
      !( Maybe
           Text
       ),
    _ldmaeViolationId ::
      !( Maybe
           Text
       ),
    _ldmaeMaxResults ::
      !( Maybe
           Nat
       ),
    _ldmaeThingName ::
      !( Maybe
           Text
       ),
    _ldmaeTaskId ::
      !( Maybe
           Text
       ),
    _ldmaeStartTime ::
      !( Maybe
           POSIX
       ),
    _ldmaeEndTime ::
      !( Maybe
           POSIX
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListDetectMitigationActionsExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldmaeNextToken' - The token for the next set of results.
--
-- * 'ldmaeViolationId' - The unique identifier of the violation.
--
-- * 'ldmaeMaxResults' - The maximum number of results to return at one time. The default is 25.
--
-- * 'ldmaeThingName' - The name of the thing whose mitigation actions are listed.
--
-- * 'ldmaeTaskId' - The unique identifier of the task.
--
-- * 'ldmaeStartTime' - A filter to limit results to those found after the specified time. You must specify either the startTime and endTime or the taskId, but not both.
--
-- * 'ldmaeEndTime' - The end of the time period for which ML Detect mitigation actions executions are returned.
listDetectMitigationActionsExecutions ::
  ListDetectMitigationActionsExecutions
listDetectMitigationActionsExecutions =
  ListDetectMitigationActionsExecutions'
    { _ldmaeNextToken =
        Nothing,
      _ldmaeViolationId = Nothing,
      _ldmaeMaxResults = Nothing,
      _ldmaeThingName = Nothing,
      _ldmaeTaskId = Nothing,
      _ldmaeStartTime = Nothing,
      _ldmaeEndTime = Nothing
    }

-- | The token for the next set of results.
ldmaeNextToken :: Lens' ListDetectMitigationActionsExecutions (Maybe Text)
ldmaeNextToken = lens _ldmaeNextToken (\s a -> s {_ldmaeNextToken = a})

-- | The unique identifier of the violation.
ldmaeViolationId :: Lens' ListDetectMitigationActionsExecutions (Maybe Text)
ldmaeViolationId = lens _ldmaeViolationId (\s a -> s {_ldmaeViolationId = a})

-- | The maximum number of results to return at one time. The default is 25.
ldmaeMaxResults :: Lens' ListDetectMitigationActionsExecutions (Maybe Natural)
ldmaeMaxResults = lens _ldmaeMaxResults (\s a -> s {_ldmaeMaxResults = a}) . mapping _Nat

-- | The name of the thing whose mitigation actions are listed.
ldmaeThingName :: Lens' ListDetectMitigationActionsExecutions (Maybe Text)
ldmaeThingName = lens _ldmaeThingName (\s a -> s {_ldmaeThingName = a})

-- | The unique identifier of the task.
ldmaeTaskId :: Lens' ListDetectMitigationActionsExecutions (Maybe Text)
ldmaeTaskId = lens _ldmaeTaskId (\s a -> s {_ldmaeTaskId = a})

-- | A filter to limit results to those found after the specified time. You must specify either the startTime and endTime or the taskId, but not both.
ldmaeStartTime :: Lens' ListDetectMitigationActionsExecutions (Maybe UTCTime)
ldmaeStartTime = lens _ldmaeStartTime (\s a -> s {_ldmaeStartTime = a}) . mapping _Time

-- | The end of the time period for which ML Detect mitigation actions executions are returned.
ldmaeEndTime :: Lens' ListDetectMitigationActionsExecutions (Maybe UTCTime)
ldmaeEndTime = lens _ldmaeEndTime (\s a -> s {_ldmaeEndTime = a}) . mapping _Time

instance
  AWSPager
    ListDetectMitigationActionsExecutions
  where
  page rq rs
    | stop (rs ^. ldmaerrsNextToken) = Nothing
    | stop (rs ^. ldmaerrsActionsExecutions) = Nothing
    | otherwise =
      Just $ rq & ldmaeNextToken .~ rs ^. ldmaerrsNextToken

instance
  AWSRequest
    ListDetectMitigationActionsExecutions
  where
  type
    Rs ListDetectMitigationActionsExecutions =
      ListDetectMitigationActionsExecutionsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListDetectMitigationActionsExecutionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "actionsExecutions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    ListDetectMitigationActionsExecutions

instance NFData ListDetectMitigationActionsExecutions

instance
  ToHeaders
    ListDetectMitigationActionsExecutions
  where
  toHeaders = const mempty

instance ToPath ListDetectMitigationActionsExecutions where
  toPath = const "/detect/mitigationactions/executions"

instance
  ToQuery
    ListDetectMitigationActionsExecutions
  where
  toQuery ListDetectMitigationActionsExecutions' {..} =
    mconcat
      [ "nextToken" =: _ldmaeNextToken,
        "violationId" =: _ldmaeViolationId,
        "maxResults" =: _ldmaeMaxResults,
        "thingName" =: _ldmaeThingName,
        "taskId" =: _ldmaeTaskId,
        "startTime" =: _ldmaeStartTime,
        "endTime" =: _ldmaeEndTime
      ]

-- | /See:/ 'listDetectMitigationActionsExecutionsResponse' smart constructor.
data ListDetectMitigationActionsExecutionsResponse = ListDetectMitigationActionsExecutionsResponse'
  { _ldmaerrsNextToken ::
      !( Maybe
           Text
       ),
    _ldmaerrsActionsExecutions ::
      !( Maybe
           [DetectMitigationActionExecution]
       ),
    _ldmaerrsResponseStatus ::
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

-- | Creates a value of 'ListDetectMitigationActionsExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldmaerrsNextToken' - A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
--
-- * 'ldmaerrsActionsExecutions' - List of actions executions.
--
-- * 'ldmaerrsResponseStatus' - -- | The response status code.
listDetectMitigationActionsExecutionsResponse ::
  -- | 'ldmaerrsResponseStatus'
  Int ->
  ListDetectMitigationActionsExecutionsResponse
listDetectMitigationActionsExecutionsResponse
  pResponseStatus_ =
    ListDetectMitigationActionsExecutionsResponse'
      { _ldmaerrsNextToken =
          Nothing,
        _ldmaerrsActionsExecutions =
          Nothing,
        _ldmaerrsResponseStatus =
          pResponseStatus_
      }

-- | A token that can be used to retrieve the next set of results, or @null@ if there are no additional results.
ldmaerrsNextToken :: Lens' ListDetectMitigationActionsExecutionsResponse (Maybe Text)
ldmaerrsNextToken = lens _ldmaerrsNextToken (\s a -> s {_ldmaerrsNextToken = a})

-- | List of actions executions.
ldmaerrsActionsExecutions :: Lens' ListDetectMitigationActionsExecutionsResponse [DetectMitigationActionExecution]
ldmaerrsActionsExecutions = lens _ldmaerrsActionsExecutions (\s a -> s {_ldmaerrsActionsExecutions = a}) . _Default . _Coerce

-- | -- | The response status code.
ldmaerrsResponseStatus :: Lens' ListDetectMitigationActionsExecutionsResponse Int
ldmaerrsResponseStatus = lens _ldmaerrsResponseStatus (\s a -> s {_ldmaerrsResponseStatus = a})

instance
  NFData
    ListDetectMitigationActionsExecutionsResponse
