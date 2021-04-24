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
-- Module      : Network.AWS.SageMaker.DescribeMonitoringSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the schedule for a monitoring job.
module Network.AWS.SageMaker.DescribeMonitoringSchedule
  ( -- * Creating a Request
    describeMonitoringSchedule,
    DescribeMonitoringSchedule,

    -- * Request Lenses
    dmsMonitoringScheduleName,

    -- * Destructuring the Response
    describeMonitoringScheduleResponse,
    DescribeMonitoringScheduleResponse,

    -- * Response Lenses
    dmsrrsEndpointName,
    dmsrrsMonitoringType,
    dmsrrsFailureReason,
    dmsrrsLastMonitoringExecutionSummary,
    dmsrrsResponseStatus,
    dmsrrsMonitoringScheduleARN,
    dmsrrsMonitoringScheduleName,
    dmsrrsMonitoringScheduleStatus,
    dmsrrsCreationTime,
    dmsrrsLastModifiedTime,
    dmsrrsMonitoringScheduleConfig,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'describeMonitoringSchedule' smart constructor.
newtype DescribeMonitoringSchedule = DescribeMonitoringSchedule'
  { _dmsMonitoringScheduleName ::
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

-- | Creates a value of 'DescribeMonitoringSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmsMonitoringScheduleName' - Name of a previously created monitoring schedule.
describeMonitoringSchedule ::
  -- | 'dmsMonitoringScheduleName'
  Text ->
  DescribeMonitoringSchedule
describeMonitoringSchedule pMonitoringScheduleName_ =
  DescribeMonitoringSchedule'
    { _dmsMonitoringScheduleName =
        pMonitoringScheduleName_
    }

-- | Name of a previously created monitoring schedule.
dmsMonitoringScheduleName :: Lens' DescribeMonitoringSchedule Text
dmsMonitoringScheduleName = lens _dmsMonitoringScheduleName (\s a -> s {_dmsMonitoringScheduleName = a})

instance AWSRequest DescribeMonitoringSchedule where
  type
    Rs DescribeMonitoringSchedule =
      DescribeMonitoringScheduleResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DescribeMonitoringScheduleResponse'
            <$> (x .?> "EndpointName")
            <*> (x .?> "MonitoringType")
            <*> (x .?> "FailureReason")
            <*> (x .?> "LastMonitoringExecutionSummary")
            <*> (pure (fromEnum s))
            <*> (x .:> "MonitoringScheduleArn")
            <*> (x .:> "MonitoringScheduleName")
            <*> (x .:> "MonitoringScheduleStatus")
            <*> (x .:> "CreationTime")
            <*> (x .:> "LastModifiedTime")
            <*> (x .:> "MonitoringScheduleConfig")
      )

instance Hashable DescribeMonitoringSchedule

instance NFData DescribeMonitoringSchedule

instance ToHeaders DescribeMonitoringSchedule where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DescribeMonitoringSchedule" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeMonitoringSchedule where
  toJSON DescribeMonitoringSchedule' {..} =
    object
      ( catMaybes
          [ Just
              ( "MonitoringScheduleName"
                  .= _dmsMonitoringScheduleName
              )
          ]
      )

instance ToPath DescribeMonitoringSchedule where
  toPath = const "/"

instance ToQuery DescribeMonitoringSchedule where
  toQuery = const mempty

-- | /See:/ 'describeMonitoringScheduleResponse' smart constructor.
data DescribeMonitoringScheduleResponse = DescribeMonitoringScheduleResponse'
  { _dmsrrsEndpointName ::
      !( Maybe
           Text
       ),
    _dmsrrsMonitoringType ::
      !( Maybe
           MonitoringType
       ),
    _dmsrrsFailureReason ::
      !( Maybe
           Text
       ),
    _dmsrrsLastMonitoringExecutionSummary ::
      !( Maybe
           MonitoringExecutionSummary
       ),
    _dmsrrsResponseStatus ::
      !Int,
    _dmsrrsMonitoringScheduleARN ::
      !Text,
    _dmsrrsMonitoringScheduleName ::
      !Text,
    _dmsrrsMonitoringScheduleStatus ::
      !ScheduleStatus,
    _dmsrrsCreationTime ::
      !POSIX,
    _dmsrrsLastModifiedTime ::
      !POSIX,
    _dmsrrsMonitoringScheduleConfig ::
      !MonitoringScheduleConfig
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeMonitoringScheduleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmsrrsEndpointName' - The name of the endpoint for the monitoring job.
--
-- * 'dmsrrsMonitoringType' - The type of the monitoring job that this schedule runs. This is one of the following values.     * @DATA_QUALITY@ - The schedule is for a data quality monitoring job.     * @MODEL_QUALITY@ - The schedule is for a model quality monitoring job.     * @MODEL_BIAS@ - The schedule is for a bias monitoring job.     * @MODEL_EXPLAINABILITY@ - The schedule is for an explainability monitoring job.
--
-- * 'dmsrrsFailureReason' - A string, up to one KB in size, that contains the reason a monitoring job failed, if it failed.
--
-- * 'dmsrrsLastMonitoringExecutionSummary' - Describes metadata on the last execution to run, if there was one.
--
-- * 'dmsrrsResponseStatus' - -- | The response status code.
--
-- * 'dmsrrsMonitoringScheduleARN' - The Amazon Resource Name (ARN) of the monitoring schedule.
--
-- * 'dmsrrsMonitoringScheduleName' - Name of the monitoring schedule.
--
-- * 'dmsrrsMonitoringScheduleStatus' - The status of an monitoring job.
--
-- * 'dmsrrsCreationTime' - The time at which the monitoring job was created.
--
-- * 'dmsrrsLastModifiedTime' - The time at which the monitoring job was last modified.
--
-- * 'dmsrrsMonitoringScheduleConfig' - The configuration object that specifies the monitoring schedule and defines the monitoring job.
describeMonitoringScheduleResponse ::
  -- | 'dmsrrsResponseStatus'
  Int ->
  -- | 'dmsrrsMonitoringScheduleARN'
  Text ->
  -- | 'dmsrrsMonitoringScheduleName'
  Text ->
  -- | 'dmsrrsMonitoringScheduleStatus'
  ScheduleStatus ->
  -- | 'dmsrrsCreationTime'
  UTCTime ->
  -- | 'dmsrrsLastModifiedTime'
  UTCTime ->
  -- | 'dmsrrsMonitoringScheduleConfig'
  MonitoringScheduleConfig ->
  DescribeMonitoringScheduleResponse
describeMonitoringScheduleResponse
  pResponseStatus_
  pMonitoringScheduleARN_
  pMonitoringScheduleName_
  pMonitoringScheduleStatus_
  pCreationTime_
  pLastModifiedTime_
  pMonitoringScheduleConfig_ =
    DescribeMonitoringScheduleResponse'
      { _dmsrrsEndpointName =
          Nothing,
        _dmsrrsMonitoringType = Nothing,
        _dmsrrsFailureReason = Nothing,
        _dmsrrsLastMonitoringExecutionSummary =
          Nothing,
        _dmsrrsResponseStatus =
          pResponseStatus_,
        _dmsrrsMonitoringScheduleARN =
          pMonitoringScheduleARN_,
        _dmsrrsMonitoringScheduleName =
          pMonitoringScheduleName_,
        _dmsrrsMonitoringScheduleStatus =
          pMonitoringScheduleStatus_,
        _dmsrrsCreationTime =
          _Time # pCreationTime_,
        _dmsrrsLastModifiedTime =
          _Time # pLastModifiedTime_,
        _dmsrrsMonitoringScheduleConfig =
          pMonitoringScheduleConfig_
      }

-- | The name of the endpoint for the monitoring job.
dmsrrsEndpointName :: Lens' DescribeMonitoringScheduleResponse (Maybe Text)
dmsrrsEndpointName = lens _dmsrrsEndpointName (\s a -> s {_dmsrrsEndpointName = a})

-- | The type of the monitoring job that this schedule runs. This is one of the following values.     * @DATA_QUALITY@ - The schedule is for a data quality monitoring job.     * @MODEL_QUALITY@ - The schedule is for a model quality monitoring job.     * @MODEL_BIAS@ - The schedule is for a bias monitoring job.     * @MODEL_EXPLAINABILITY@ - The schedule is for an explainability monitoring job.
dmsrrsMonitoringType :: Lens' DescribeMonitoringScheduleResponse (Maybe MonitoringType)
dmsrrsMonitoringType = lens _dmsrrsMonitoringType (\s a -> s {_dmsrrsMonitoringType = a})

-- | A string, up to one KB in size, that contains the reason a monitoring job failed, if it failed.
dmsrrsFailureReason :: Lens' DescribeMonitoringScheduleResponse (Maybe Text)
dmsrrsFailureReason = lens _dmsrrsFailureReason (\s a -> s {_dmsrrsFailureReason = a})

-- | Describes metadata on the last execution to run, if there was one.
dmsrrsLastMonitoringExecutionSummary :: Lens' DescribeMonitoringScheduleResponse (Maybe MonitoringExecutionSummary)
dmsrrsLastMonitoringExecutionSummary = lens _dmsrrsLastMonitoringExecutionSummary (\s a -> s {_dmsrrsLastMonitoringExecutionSummary = a})

-- | -- | The response status code.
dmsrrsResponseStatus :: Lens' DescribeMonitoringScheduleResponse Int
dmsrrsResponseStatus = lens _dmsrrsResponseStatus (\s a -> s {_dmsrrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the monitoring schedule.
dmsrrsMonitoringScheduleARN :: Lens' DescribeMonitoringScheduleResponse Text
dmsrrsMonitoringScheduleARN = lens _dmsrrsMonitoringScheduleARN (\s a -> s {_dmsrrsMonitoringScheduleARN = a})

-- | Name of the monitoring schedule.
dmsrrsMonitoringScheduleName :: Lens' DescribeMonitoringScheduleResponse Text
dmsrrsMonitoringScheduleName = lens _dmsrrsMonitoringScheduleName (\s a -> s {_dmsrrsMonitoringScheduleName = a})

-- | The status of an monitoring job.
dmsrrsMonitoringScheduleStatus :: Lens' DescribeMonitoringScheduleResponse ScheduleStatus
dmsrrsMonitoringScheduleStatus = lens _dmsrrsMonitoringScheduleStatus (\s a -> s {_dmsrrsMonitoringScheduleStatus = a})

-- | The time at which the monitoring job was created.
dmsrrsCreationTime :: Lens' DescribeMonitoringScheduleResponse UTCTime
dmsrrsCreationTime = lens _dmsrrsCreationTime (\s a -> s {_dmsrrsCreationTime = a}) . _Time

-- | The time at which the monitoring job was last modified.
dmsrrsLastModifiedTime :: Lens' DescribeMonitoringScheduleResponse UTCTime
dmsrrsLastModifiedTime = lens _dmsrrsLastModifiedTime (\s a -> s {_dmsrrsLastModifiedTime = a}) . _Time

-- | The configuration object that specifies the monitoring schedule and defines the monitoring job.
dmsrrsMonitoringScheduleConfig :: Lens' DescribeMonitoringScheduleResponse MonitoringScheduleConfig
dmsrrsMonitoringScheduleConfig = lens _dmsrrsMonitoringScheduleConfig (\s a -> s {_dmsrrsMonitoringScheduleConfig = a})

instance NFData DescribeMonitoringScheduleResponse
