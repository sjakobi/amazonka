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
-- Module      : Network.AWS.IoT.DescribeAuditTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Device Defender audit.
module Network.AWS.IoT.DescribeAuditTask
  ( -- * Creating a Request
    describeAuditTask,
    DescribeAuditTask,

    -- * Request Lenses
    datTaskId,

    -- * Destructuring the Response
    describeAuditTaskResponse,
    DescribeAuditTaskResponse,

    -- * Response Lenses
    datrrsAuditDetails,
    datrrsScheduledAuditName,
    datrrsTaskStatistics,
    datrrsTaskStatus,
    datrrsTaskStartTime,
    datrrsTaskType,
    datrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAuditTask' smart constructor.
newtype DescribeAuditTask = DescribeAuditTask'
  { _datTaskId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeAuditTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datTaskId' - The ID of the audit whose information you want to get.
describeAuditTask ::
  -- | 'datTaskId'
  Text ->
  DescribeAuditTask
describeAuditTask pTaskId_ =
  DescribeAuditTask' {_datTaskId = pTaskId_}

-- | The ID of the audit whose information you want to get.
datTaskId :: Lens' DescribeAuditTask Text
datTaskId = lens _datTaskId (\s a -> s {_datTaskId = a})

instance AWSRequest DescribeAuditTask where
  type Rs DescribeAuditTask = DescribeAuditTaskResponse
  request = get ioT
  response =
    receiveJSON
      ( \s h x ->
          DescribeAuditTaskResponse'
            <$> (x .?> "auditDetails" .!@ mempty)
            <*> (x .?> "scheduledAuditName")
            <*> (x .?> "taskStatistics")
            <*> (x .?> "taskStatus")
            <*> (x .?> "taskStartTime")
            <*> (x .?> "taskType")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAuditTask

instance NFData DescribeAuditTask

instance ToHeaders DescribeAuditTask where
  toHeaders = const mempty

instance ToPath DescribeAuditTask where
  toPath DescribeAuditTask' {..} =
    mconcat ["/audit/tasks/", toBS _datTaskId]

instance ToQuery DescribeAuditTask where
  toQuery = const mempty

-- | /See:/ 'describeAuditTaskResponse' smart constructor.
data DescribeAuditTaskResponse = DescribeAuditTaskResponse'
  { _datrrsAuditDetails ::
      !( Maybe
           ( Map
               Text
               AuditCheckDetails
           )
       ),
    _datrrsScheduledAuditName ::
      !(Maybe Text),
    _datrrsTaskStatistics ::
      !( Maybe
           TaskStatistics
       ),
    _datrrsTaskStatus ::
      !( Maybe
           AuditTaskStatus
       ),
    _datrrsTaskStartTime ::
      !(Maybe POSIX),
    _datrrsTaskType ::
      !( Maybe
           AuditTaskType
       ),
    _datrrsResponseStatus ::
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

-- | Creates a value of 'DescribeAuditTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datrrsAuditDetails' - Detailed information about each check performed during this audit.
--
-- * 'datrrsScheduledAuditName' - The name of the scheduled audit (only if the audit was a scheduled audit).
--
-- * 'datrrsTaskStatistics' - Statistical information about the audit.
--
-- * 'datrrsTaskStatus' - The status of the audit: one of "IN_PROGRESS", "COMPLETED", "FAILED", or "CANCELED".
--
-- * 'datrrsTaskStartTime' - The time the audit started.
--
-- * 'datrrsTaskType' - The type of audit: "ON_DEMAND_AUDIT_TASK" or "SCHEDULED_AUDIT_TASK".
--
-- * 'datrrsResponseStatus' - -- | The response status code.
describeAuditTaskResponse ::
  -- | 'datrrsResponseStatus'
  Int ->
  DescribeAuditTaskResponse
describeAuditTaskResponse pResponseStatus_ =
  DescribeAuditTaskResponse'
    { _datrrsAuditDetails =
        Nothing,
      _datrrsScheduledAuditName = Nothing,
      _datrrsTaskStatistics = Nothing,
      _datrrsTaskStatus = Nothing,
      _datrrsTaskStartTime = Nothing,
      _datrrsTaskType = Nothing,
      _datrrsResponseStatus = pResponseStatus_
    }

-- | Detailed information about each check performed during this audit.
datrrsAuditDetails :: Lens' DescribeAuditTaskResponse (HashMap Text AuditCheckDetails)
datrrsAuditDetails = lens _datrrsAuditDetails (\s a -> s {_datrrsAuditDetails = a}) . _Default . _Map

-- | The name of the scheduled audit (only if the audit was a scheduled audit).
datrrsScheduledAuditName :: Lens' DescribeAuditTaskResponse (Maybe Text)
datrrsScheduledAuditName = lens _datrrsScheduledAuditName (\s a -> s {_datrrsScheduledAuditName = a})

-- | Statistical information about the audit.
datrrsTaskStatistics :: Lens' DescribeAuditTaskResponse (Maybe TaskStatistics)
datrrsTaskStatistics = lens _datrrsTaskStatistics (\s a -> s {_datrrsTaskStatistics = a})

-- | The status of the audit: one of "IN_PROGRESS", "COMPLETED", "FAILED", or "CANCELED".
datrrsTaskStatus :: Lens' DescribeAuditTaskResponse (Maybe AuditTaskStatus)
datrrsTaskStatus = lens _datrrsTaskStatus (\s a -> s {_datrrsTaskStatus = a})

-- | The time the audit started.
datrrsTaskStartTime :: Lens' DescribeAuditTaskResponse (Maybe UTCTime)
datrrsTaskStartTime = lens _datrrsTaskStartTime (\s a -> s {_datrrsTaskStartTime = a}) . mapping _Time

-- | The type of audit: "ON_DEMAND_AUDIT_TASK" or "SCHEDULED_AUDIT_TASK".
datrrsTaskType :: Lens' DescribeAuditTaskResponse (Maybe AuditTaskType)
datrrsTaskType = lens _datrrsTaskType (\s a -> s {_datrrsTaskType = a})

-- | -- | The response status code.
datrrsResponseStatus :: Lens' DescribeAuditTaskResponse Int
datrrsResponseStatus = lens _datrrsResponseStatus (\s a -> s {_datrrsResponseStatus = a})

instance NFData DescribeAuditTaskResponse
