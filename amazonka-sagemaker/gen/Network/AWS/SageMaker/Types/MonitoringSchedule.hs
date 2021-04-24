{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringSchedule where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.MonitoringExecutionSummary
import Network.AWS.SageMaker.Types.MonitoringScheduleConfig
import Network.AWS.SageMaker.Types.MonitoringType
import Network.AWS.SageMaker.Types.ScheduleStatus
import Network.AWS.SageMaker.Types.Tag

-- | A schedule for a model monitoring job. For information about model monitor, see <https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html Amazon SageMaker Model Monitor> .
--
--
--
-- /See:/ 'monitoringSchedule' smart constructor.
data MonitoringSchedule = MonitoringSchedule'
  { _mEndpointName ::
      !(Maybe Text),
    _mCreationTime :: !(Maybe POSIX),
    _mMonitoringType ::
      !(Maybe MonitoringType),
    _mMonitoringScheduleName ::
      !(Maybe Text),
    _mMonitoringScheduleStatus ::
      !(Maybe ScheduleStatus),
    _mFailureReason :: !(Maybe Text),
    _mMonitoringScheduleARN ::
      !(Maybe Text),
    _mTags :: !(Maybe [Tag]),
    _mLastModifiedTime ::
      !(Maybe POSIX),
    _mMonitoringScheduleConfig ::
      !(Maybe MonitoringScheduleConfig),
    _mLastMonitoringExecutionSummary ::
      !( Maybe
           MonitoringExecutionSummary
       )
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'MonitoringSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mEndpointName' - The endpoint that hosts the model being monitored.
--
-- * 'mCreationTime' - The time that the monitoring schedule was created.
--
-- * 'mMonitoringType' - The type of the monitoring job definition to schedule.
--
-- * 'mMonitoringScheduleName' - The name of the monitoring schedule.
--
-- * 'mMonitoringScheduleStatus' - The status of the monitoring schedule. This can be one of the following values.     * @PENDING@ - The schedule is pending being created.     * @FAILED@ - The schedule failed.     * @SCHEDULED@ - The schedule was successfully created.     * @STOPPED@ - The schedule was stopped.
--
-- * 'mFailureReason' - If the monitoring schedule failed, the reason it failed.
--
-- * 'mMonitoringScheduleARN' - The Amazon Resource Name (ARN) of the monitoring schedule.
--
-- * 'mTags' - A list of the tags associated with the monitoring schedlue. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
--
-- * 'mLastModifiedTime' - The last time the monitoring schedule was changed.
--
-- * 'mMonitoringScheduleConfig' - Undocumented member.
--
-- * 'mLastMonitoringExecutionSummary' - Undocumented member.
monitoringSchedule ::
  MonitoringSchedule
monitoringSchedule =
  MonitoringSchedule'
    { _mEndpointName = Nothing,
      _mCreationTime = Nothing,
      _mMonitoringType = Nothing,
      _mMonitoringScheduleName = Nothing,
      _mMonitoringScheduleStatus = Nothing,
      _mFailureReason = Nothing,
      _mMonitoringScheduleARN = Nothing,
      _mTags = Nothing,
      _mLastModifiedTime = Nothing,
      _mMonitoringScheduleConfig = Nothing,
      _mLastMonitoringExecutionSummary = Nothing
    }

-- | The endpoint that hosts the model being monitored.
mEndpointName :: Lens' MonitoringSchedule (Maybe Text)
mEndpointName = lens _mEndpointName (\s a -> s {_mEndpointName = a})

-- | The time that the monitoring schedule was created.
mCreationTime :: Lens' MonitoringSchedule (Maybe UTCTime)
mCreationTime = lens _mCreationTime (\s a -> s {_mCreationTime = a}) . mapping _Time

-- | The type of the monitoring job definition to schedule.
mMonitoringType :: Lens' MonitoringSchedule (Maybe MonitoringType)
mMonitoringType = lens _mMonitoringType (\s a -> s {_mMonitoringType = a})

-- | The name of the monitoring schedule.
mMonitoringScheduleName :: Lens' MonitoringSchedule (Maybe Text)
mMonitoringScheduleName = lens _mMonitoringScheduleName (\s a -> s {_mMonitoringScheduleName = a})

-- | The status of the monitoring schedule. This can be one of the following values.     * @PENDING@ - The schedule is pending being created.     * @FAILED@ - The schedule failed.     * @SCHEDULED@ - The schedule was successfully created.     * @STOPPED@ - The schedule was stopped.
mMonitoringScheduleStatus :: Lens' MonitoringSchedule (Maybe ScheduleStatus)
mMonitoringScheduleStatus = lens _mMonitoringScheduleStatus (\s a -> s {_mMonitoringScheduleStatus = a})

-- | If the monitoring schedule failed, the reason it failed.
mFailureReason :: Lens' MonitoringSchedule (Maybe Text)
mFailureReason = lens _mFailureReason (\s a -> s {_mFailureReason = a})

-- | The Amazon Resource Name (ARN) of the monitoring schedule.
mMonitoringScheduleARN :: Lens' MonitoringSchedule (Maybe Text)
mMonitoringScheduleARN = lens _mMonitoringScheduleARN (\s a -> s {_mMonitoringScheduleARN = a})

-- | A list of the tags associated with the monitoring schedlue. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS resources> in the /AWS General Reference Guide/ .
mTags :: Lens' MonitoringSchedule [Tag]
mTags = lens _mTags (\s a -> s {_mTags = a}) . _Default . _Coerce

-- | The last time the monitoring schedule was changed.
mLastModifiedTime :: Lens' MonitoringSchedule (Maybe UTCTime)
mLastModifiedTime = lens _mLastModifiedTime (\s a -> s {_mLastModifiedTime = a}) . mapping _Time

-- | Undocumented member.
mMonitoringScheduleConfig :: Lens' MonitoringSchedule (Maybe MonitoringScheduleConfig)
mMonitoringScheduleConfig = lens _mMonitoringScheduleConfig (\s a -> s {_mMonitoringScheduleConfig = a})

-- | Undocumented member.
mLastMonitoringExecutionSummary :: Lens' MonitoringSchedule (Maybe MonitoringExecutionSummary)
mLastMonitoringExecutionSummary = lens _mLastMonitoringExecutionSummary (\s a -> s {_mLastMonitoringExecutionSummary = a})

instance FromJSON MonitoringSchedule where
  parseJSON =
    withObject
      "MonitoringSchedule"
      ( \x ->
          MonitoringSchedule'
            <$> (x .:? "EndpointName")
            <*> (x .:? "CreationTime")
            <*> (x .:? "MonitoringType")
            <*> (x .:? "MonitoringScheduleName")
            <*> (x .:? "MonitoringScheduleStatus")
            <*> (x .:? "FailureReason")
            <*> (x .:? "MonitoringScheduleArn")
            <*> (x .:? "Tags" .!= mempty)
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "MonitoringScheduleConfig")
            <*> (x .:? "LastMonitoringExecutionSummary")
      )

instance Hashable MonitoringSchedule

instance NFData MonitoringSchedule
