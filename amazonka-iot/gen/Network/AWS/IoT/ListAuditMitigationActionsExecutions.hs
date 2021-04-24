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
-- Module      : Network.AWS.IoT.ListAuditMitigationActionsExecutions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the status of audit mitigation action tasks that were executed.
--
--
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListAuditMitigationActionsExecutions
  ( -- * Creating a Request
    listAuditMitigationActionsExecutions,
    ListAuditMitigationActionsExecutions,

    -- * Request Lenses
    lamaeNextToken,
    lamaeMaxResults,
    lamaeActionStatus,
    lamaeTaskId,
    lamaeFindingId,

    -- * Destructuring the Response
    listAuditMitigationActionsExecutionsResponse,
    ListAuditMitigationActionsExecutionsResponse,

    -- * Response Lenses
    lamaerrsNextToken,
    lamaerrsActionsExecutions,
    lamaerrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listAuditMitigationActionsExecutions' smart constructor.
data ListAuditMitigationActionsExecutions = ListAuditMitigationActionsExecutions'
  { _lamaeNextToken ::
      !( Maybe
           Text
       ),
    _lamaeMaxResults ::
      !( Maybe
           Nat
       ),
    _lamaeActionStatus ::
      !( Maybe
           AuditMitigationActionsExecutionStatus
       ),
    _lamaeTaskId ::
      !Text,
    _lamaeFindingId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListAuditMitigationActionsExecutions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lamaeNextToken' - The token for the next set of results.
--
-- * 'lamaeMaxResults' - The maximum number of results to return at one time. The default is 25.
--
-- * 'lamaeActionStatus' - Specify this filter to limit results to those with a specific status.
--
-- * 'lamaeTaskId' - Specify this filter to limit results to actions for a specific audit mitigation actions task.
--
-- * 'lamaeFindingId' - Specify this filter to limit results to those that were applied to a specific audit finding.
listAuditMitigationActionsExecutions ::
  -- | 'lamaeTaskId'
  Text ->
  -- | 'lamaeFindingId'
  Text ->
  ListAuditMitigationActionsExecutions
listAuditMitigationActionsExecutions
  pTaskId_
  pFindingId_ =
    ListAuditMitigationActionsExecutions'
      { _lamaeNextToken =
          Nothing,
        _lamaeMaxResults = Nothing,
        _lamaeActionStatus = Nothing,
        _lamaeTaskId = pTaskId_,
        _lamaeFindingId = pFindingId_
      }

-- | The token for the next set of results.
lamaeNextToken :: Lens' ListAuditMitigationActionsExecutions (Maybe Text)
lamaeNextToken = lens _lamaeNextToken (\s a -> s {_lamaeNextToken = a})

-- | The maximum number of results to return at one time. The default is 25.
lamaeMaxResults :: Lens' ListAuditMitigationActionsExecutions (Maybe Natural)
lamaeMaxResults = lens _lamaeMaxResults (\s a -> s {_lamaeMaxResults = a}) . mapping _Nat

-- | Specify this filter to limit results to those with a specific status.
lamaeActionStatus :: Lens' ListAuditMitigationActionsExecutions (Maybe AuditMitigationActionsExecutionStatus)
lamaeActionStatus = lens _lamaeActionStatus (\s a -> s {_lamaeActionStatus = a})

-- | Specify this filter to limit results to actions for a specific audit mitigation actions task.
lamaeTaskId :: Lens' ListAuditMitigationActionsExecutions Text
lamaeTaskId = lens _lamaeTaskId (\s a -> s {_lamaeTaskId = a})

-- | Specify this filter to limit results to those that were applied to a specific audit finding.
lamaeFindingId :: Lens' ListAuditMitigationActionsExecutions Text
lamaeFindingId = lens _lamaeFindingId (\s a -> s {_lamaeFindingId = a})

instance
  AWSPager
    ListAuditMitigationActionsExecutions
  where
  page rq rs
    | stop (rs ^. lamaerrsNextToken) = Nothing
    | stop (rs ^. lamaerrsActionsExecutions) = Nothing
    | otherwise =
      Just $ rq & lamaeNextToken .~ rs ^. lamaerrsNextToken

instance
  AWSRequest
    ListAuditMitigationActionsExecutions
  where
  type
    Rs ListAuditMitigationActionsExecutions =
      ListAuditMitigationActionsExecutionsResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          ListAuditMitigationActionsExecutionsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "actionsExecutions" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    ListAuditMitigationActionsExecutions

instance NFData ListAuditMitigationActionsExecutions

instance
  ToHeaders
    ListAuditMitigationActionsExecutions
  where
  toHeaders = const mempty

instance ToPath ListAuditMitigationActionsExecutions where
  toPath = const "/audit/mitigationactions/executions"

instance ToQuery ListAuditMitigationActionsExecutions where
  toQuery ListAuditMitigationActionsExecutions' {..} =
    mconcat
      [ "nextToken" =: _lamaeNextToken,
        "maxResults" =: _lamaeMaxResults,
        "actionStatus" =: _lamaeActionStatus,
        "taskId" =: _lamaeTaskId,
        "findingId" =: _lamaeFindingId
      ]

-- | /See:/ 'listAuditMitigationActionsExecutionsResponse' smart constructor.
data ListAuditMitigationActionsExecutionsResponse = ListAuditMitigationActionsExecutionsResponse'
  { _lamaerrsNextToken ::
      !( Maybe
           Text
       ),
    _lamaerrsActionsExecutions ::
      !( Maybe
           [AuditMitigationActionExecutionMetadata]
       ),
    _lamaerrsResponseStatus ::
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

-- | Creates a value of 'ListAuditMitigationActionsExecutionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lamaerrsNextToken' - The token for the next set of results.
--
-- * 'lamaerrsActionsExecutions' - A set of task execution results based on the input parameters. Details include the mitigation action applied, start time, and task status.
--
-- * 'lamaerrsResponseStatus' - -- | The response status code.
listAuditMitigationActionsExecutionsResponse ::
  -- | 'lamaerrsResponseStatus'
  Int ->
  ListAuditMitigationActionsExecutionsResponse
listAuditMitigationActionsExecutionsResponse
  pResponseStatus_ =
    ListAuditMitigationActionsExecutionsResponse'
      { _lamaerrsNextToken =
          Nothing,
        _lamaerrsActionsExecutions =
          Nothing,
        _lamaerrsResponseStatus =
          pResponseStatus_
      }

-- | The token for the next set of results.
lamaerrsNextToken :: Lens' ListAuditMitigationActionsExecutionsResponse (Maybe Text)
lamaerrsNextToken = lens _lamaerrsNextToken (\s a -> s {_lamaerrsNextToken = a})

-- | A set of task execution results based on the input parameters. Details include the mitigation action applied, start time, and task status.
lamaerrsActionsExecutions :: Lens' ListAuditMitigationActionsExecutionsResponse [AuditMitigationActionExecutionMetadata]
lamaerrsActionsExecutions = lens _lamaerrsActionsExecutions (\s a -> s {_lamaerrsActionsExecutions = a}) . _Default . _Coerce

-- | -- | The response status code.
lamaerrsResponseStatus :: Lens' ListAuditMitigationActionsExecutionsResponse Int
lamaerrsResponseStatus = lens _lamaerrsResponseStatus (\s a -> s {_lamaerrsResponseStatus = a})

instance
  NFData
    ListAuditMitigationActionsExecutionsResponse
