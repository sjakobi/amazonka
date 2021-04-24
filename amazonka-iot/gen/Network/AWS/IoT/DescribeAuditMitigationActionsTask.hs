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
-- Module      : Network.AWS.IoT.DescribeAuditMitigationActionsTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about an audit mitigation task that is used to apply mitigation actions to a set of audit findings. Properties include the actions being applied, the audit checks to which they're being applied, the task status, and aggregated task statistics.
module Network.AWS.IoT.DescribeAuditMitigationActionsTask
  ( -- * Creating a Request
    describeAuditMitigationActionsTask,
    DescribeAuditMitigationActionsTask,

    -- * Request Lenses
    damatTaskId,

    -- * Destructuring the Response
    describeAuditMitigationActionsTaskResponse,
    DescribeAuditMitigationActionsTaskResponse,

    -- * Response Lenses
    damatrrsAuditCheckToActionsMapping,
    damatrrsTaskStatistics,
    damatrrsStartTime,
    damatrrsEndTime,
    damatrrsTarget,
    damatrrsTaskStatus,
    damatrrsActionsDefinition,
    damatrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAuditMitigationActionsTask' smart constructor.
newtype DescribeAuditMitigationActionsTask = DescribeAuditMitigationActionsTask'
  { _damatTaskId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAuditMitigationActionsTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damatTaskId' - The unique identifier for the audit mitigation task.
describeAuditMitigationActionsTask ::
  -- | 'damatTaskId'
  Text ->
  DescribeAuditMitigationActionsTask
describeAuditMitigationActionsTask pTaskId_ =
  DescribeAuditMitigationActionsTask'
    { _damatTaskId =
        pTaskId_
    }

-- | The unique identifier for the audit mitigation task.
damatTaskId :: Lens' DescribeAuditMitigationActionsTask Text
damatTaskId = lens _damatTaskId (\s a -> s {_damatTaskId = a})

instance
  AWSRequest
    DescribeAuditMitigationActionsTask
  where
  type
    Rs DescribeAuditMitigationActionsTask =
      DescribeAuditMitigationActionsTaskResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeAuditMitigationActionsTaskResponse'
            <$> (x .?> "auditCheckToActionsMapping" .!@ mempty)
            <*> (x .?> "taskStatistics" .!@ mempty)
            <*> (x .?> "startTime")
            <*> (x .?> "endTime")
            <*> (x .?> "target")
            <*> (x .?> "taskStatus")
            <*> (x .?> "actionsDefinition" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAuditMitigationActionsTask

instance NFData DescribeAuditMitigationActionsTask

instance ToHeaders DescribeAuditMitigationActionsTask where
  toHeaders = const mempty

instance ToPath DescribeAuditMitigationActionsTask where
  toPath DescribeAuditMitigationActionsTask' {..} =
    mconcat
      [ "/audit/mitigationactions/tasks/",
        toBS _damatTaskId
      ]

instance ToQuery DescribeAuditMitigationActionsTask where
  toQuery = const mempty

-- | /See:/ 'describeAuditMitigationActionsTaskResponse' smart constructor.
data DescribeAuditMitigationActionsTaskResponse = DescribeAuditMitigationActionsTaskResponse'
  { _damatrrsAuditCheckToActionsMapping ::
      !( Maybe
           ( Map
               Text
               ( List1
                   Text
               )
           )
       ),
    _damatrrsTaskStatistics ::
      !( Maybe
           ( Map
               Text
               TaskStatisticsForAuditCheck
           )
       ),
    _damatrrsStartTime ::
      !( Maybe
           POSIX
       ),
    _damatrrsEndTime ::
      !( Maybe
           POSIX
       ),
    _damatrrsTarget ::
      !( Maybe
           AuditMitigationActionsTaskTarget
       ),
    _damatrrsTaskStatus ::
      !( Maybe
           AuditMitigationActionsTaskStatus
       ),
    _damatrrsActionsDefinition ::
      !( Maybe
           [MitigationAction]
       ),
    _damatrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAuditMitigationActionsTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'damatrrsAuditCheckToActionsMapping' - Specifies the mitigation actions that should be applied to specific audit checks.
--
-- * 'damatrrsTaskStatistics' - Aggregate counts of the results when the mitigation tasks were applied to the findings for this audit mitigation actions task.
--
-- * 'damatrrsStartTime' - The date and time when the task was started.
--
-- * 'damatrrsEndTime' - The date and time when the task was completed or canceled.
--
-- * 'damatrrsTarget' - Identifies the findings to which the mitigation actions are applied. This can be by audit checks, by audit task, or a set of findings.
--
-- * 'damatrrsTaskStatus' - The current status of the task.
--
-- * 'damatrrsActionsDefinition' - Specifies the mitigation actions and their parameters that are applied as part of this task.
--
-- * 'damatrrsResponseStatus' - -- | The response status code.
describeAuditMitigationActionsTaskResponse ::
  -- | 'damatrrsResponseStatus'
  Int ->
  DescribeAuditMitigationActionsTaskResponse
describeAuditMitigationActionsTaskResponse
  pResponseStatus_ =
    DescribeAuditMitigationActionsTaskResponse'
      { _damatrrsAuditCheckToActionsMapping =
          Nothing,
        _damatrrsTaskStatistics =
          Nothing,
        _damatrrsStartTime = Nothing,
        _damatrrsEndTime = Nothing,
        _damatrrsTarget = Nothing,
        _damatrrsTaskStatus = Nothing,
        _damatrrsActionsDefinition =
          Nothing,
        _damatrrsResponseStatus =
          pResponseStatus_
      }

-- | Specifies the mitigation actions that should be applied to specific audit checks.
damatrrsAuditCheckToActionsMapping :: Lens' DescribeAuditMitigationActionsTaskResponse (HashMap Text (NonEmpty Text))
damatrrsAuditCheckToActionsMapping = lens _damatrrsAuditCheckToActionsMapping (\s a -> s {_damatrrsAuditCheckToActionsMapping = a}) . _Default . _Map

-- | Aggregate counts of the results when the mitigation tasks were applied to the findings for this audit mitigation actions task.
damatrrsTaskStatistics :: Lens' DescribeAuditMitigationActionsTaskResponse (HashMap Text TaskStatisticsForAuditCheck)
damatrrsTaskStatistics = lens _damatrrsTaskStatistics (\s a -> s {_damatrrsTaskStatistics = a}) . _Default . _Map

-- | The date and time when the task was started.
damatrrsStartTime :: Lens' DescribeAuditMitigationActionsTaskResponse (Maybe UTCTime)
damatrrsStartTime = lens _damatrrsStartTime (\s a -> s {_damatrrsStartTime = a}) . mapping _Time

-- | The date and time when the task was completed or canceled.
damatrrsEndTime :: Lens' DescribeAuditMitigationActionsTaskResponse (Maybe UTCTime)
damatrrsEndTime = lens _damatrrsEndTime (\s a -> s {_damatrrsEndTime = a}) . mapping _Time

-- | Identifies the findings to which the mitigation actions are applied. This can be by audit checks, by audit task, or a set of findings.
damatrrsTarget :: Lens' DescribeAuditMitigationActionsTaskResponse (Maybe AuditMitigationActionsTaskTarget)
damatrrsTarget = lens _damatrrsTarget (\s a -> s {_damatrrsTarget = a})

-- | The current status of the task.
damatrrsTaskStatus :: Lens' DescribeAuditMitigationActionsTaskResponse (Maybe AuditMitigationActionsTaskStatus)
damatrrsTaskStatus = lens _damatrrsTaskStatus (\s a -> s {_damatrrsTaskStatus = a})

-- | Specifies the mitigation actions and their parameters that are applied as part of this task.
damatrrsActionsDefinition :: Lens' DescribeAuditMitigationActionsTaskResponse [MitigationAction]
damatrrsActionsDefinition = lens _damatrrsActionsDefinition (\s a -> s {_damatrrsActionsDefinition = a}) . _Default . _Coerce

-- | -- | The response status code.
damatrrsResponseStatus :: Lens' DescribeAuditMitigationActionsTaskResponse Int
damatrrsResponseStatus = lens _damatrrsResponseStatus (\s a -> s {_damatrrsResponseStatus = a})

instance
  NFData
    DescribeAuditMitigationActionsTaskResponse
