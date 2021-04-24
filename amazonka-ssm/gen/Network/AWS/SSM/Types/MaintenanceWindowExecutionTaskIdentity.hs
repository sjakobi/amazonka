{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowExecutionTaskIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.MaintenanceWindowExecutionTaskIdentity where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SSM.Types.MaintenanceWindowExecutionStatus
import Network.AWS.SSM.Types.MaintenanceWindowTaskType

-- | Information about a task execution performed as part of a maintenance window execution.
--
--
--
-- /See:/ 'maintenanceWindowExecutionTaskIdentity' smart constructor.
data MaintenanceWindowExecutionTaskIdentity = MaintenanceWindowExecutionTaskIdentity'
  { _mwetiStatus ::
      !( Maybe
           MaintenanceWindowExecutionStatus
       ),
    _mwetiStatusDetails ::
      !( Maybe
           Text
       ),
    _mwetiStartTime ::
      !( Maybe
           POSIX
       ),
    _mwetiEndTime ::
      !( Maybe
           POSIX
       ),
    _mwetiWindowExecutionId ::
      !( Maybe
           Text
       ),
    _mwetiTaskARN ::
      !( Maybe
           Text
       ),
    _mwetiTaskType ::
      !( Maybe
           MaintenanceWindowTaskType
       ),
    _mwetiTaskExecutionId ::
      !( Maybe
           Text
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

-- | Creates a value of 'MaintenanceWindowExecutionTaskIdentity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwetiStatus' - The status of the task execution.
--
-- * 'mwetiStatusDetails' - The details explaining the status of the task execution. Only available for certain status values.
--
-- * 'mwetiStartTime' - The time the task execution started.
--
-- * 'mwetiEndTime' - The time the task execution finished.
--
-- * 'mwetiWindowExecutionId' - The ID of the maintenance window execution that ran the task.
--
-- * 'mwetiTaskARN' - The ARN of the task that ran.
--
-- * 'mwetiTaskType' - The type of task that ran.
--
-- * 'mwetiTaskExecutionId' - The ID of the specific task execution in the maintenance window execution.
maintenanceWindowExecutionTaskIdentity ::
  MaintenanceWindowExecutionTaskIdentity
maintenanceWindowExecutionTaskIdentity =
  MaintenanceWindowExecutionTaskIdentity'
    { _mwetiStatus =
        Nothing,
      _mwetiStatusDetails = Nothing,
      _mwetiStartTime = Nothing,
      _mwetiEndTime = Nothing,
      _mwetiWindowExecutionId = Nothing,
      _mwetiTaskARN = Nothing,
      _mwetiTaskType = Nothing,
      _mwetiTaskExecutionId = Nothing
    }

-- | The status of the task execution.
mwetiStatus :: Lens' MaintenanceWindowExecutionTaskIdentity (Maybe MaintenanceWindowExecutionStatus)
mwetiStatus = lens _mwetiStatus (\s a -> s {_mwetiStatus = a})

-- | The details explaining the status of the task execution. Only available for certain status values.
mwetiStatusDetails :: Lens' MaintenanceWindowExecutionTaskIdentity (Maybe Text)
mwetiStatusDetails = lens _mwetiStatusDetails (\s a -> s {_mwetiStatusDetails = a})

-- | The time the task execution started.
mwetiStartTime :: Lens' MaintenanceWindowExecutionTaskIdentity (Maybe UTCTime)
mwetiStartTime = lens _mwetiStartTime (\s a -> s {_mwetiStartTime = a}) . mapping _Time

-- | The time the task execution finished.
mwetiEndTime :: Lens' MaintenanceWindowExecutionTaskIdentity (Maybe UTCTime)
mwetiEndTime = lens _mwetiEndTime (\s a -> s {_mwetiEndTime = a}) . mapping _Time

-- | The ID of the maintenance window execution that ran the task.
mwetiWindowExecutionId :: Lens' MaintenanceWindowExecutionTaskIdentity (Maybe Text)
mwetiWindowExecutionId = lens _mwetiWindowExecutionId (\s a -> s {_mwetiWindowExecutionId = a})

-- | The ARN of the task that ran.
mwetiTaskARN :: Lens' MaintenanceWindowExecutionTaskIdentity (Maybe Text)
mwetiTaskARN = lens _mwetiTaskARN (\s a -> s {_mwetiTaskARN = a})

-- | The type of task that ran.
mwetiTaskType :: Lens' MaintenanceWindowExecutionTaskIdentity (Maybe MaintenanceWindowTaskType)
mwetiTaskType = lens _mwetiTaskType (\s a -> s {_mwetiTaskType = a})

-- | The ID of the specific task execution in the maintenance window execution.
mwetiTaskExecutionId :: Lens' MaintenanceWindowExecutionTaskIdentity (Maybe Text)
mwetiTaskExecutionId = lens _mwetiTaskExecutionId (\s a -> s {_mwetiTaskExecutionId = a})

instance
  FromJSON
    MaintenanceWindowExecutionTaskIdentity
  where
  parseJSON =
    withObject
      "MaintenanceWindowExecutionTaskIdentity"
      ( \x ->
          MaintenanceWindowExecutionTaskIdentity'
            <$> (x .:? "Status")
            <*> (x .:? "StatusDetails")
            <*> (x .:? "StartTime")
            <*> (x .:? "EndTime")
            <*> (x .:? "WindowExecutionId")
            <*> (x .:? "TaskArn")
            <*> (x .:? "TaskType")
            <*> (x .:? "TaskExecutionId")
      )

instance
  Hashable
    MaintenanceWindowExecutionTaskIdentity

instance
  NFData
    MaintenanceWindowExecutionTaskIdentity
