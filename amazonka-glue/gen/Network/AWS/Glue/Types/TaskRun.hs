{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.TaskRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.TaskRun where

import Network.AWS.Glue.Types.TaskRunProperties
import Network.AWS.Glue.Types.TaskStatusType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The sampling parameters that are associated with the machine learning transform.
--
--
--
-- /See:/ 'taskRun' smart constructor.
data TaskRun = TaskRun'
  { _trExecutionTime ::
      !(Maybe Int),
    _trStatus :: !(Maybe TaskStatusType),
    _trTransformId :: !(Maybe Text),
    _trTaskRunId :: !(Maybe Text),
    _trErrorString :: !(Maybe Text),
    _trLastModifiedOn :: !(Maybe POSIX),
    _trLogGroupName :: !(Maybe Text),
    _trCompletedOn :: !(Maybe POSIX),
    _trProperties :: !(Maybe TaskRunProperties),
    _trStartedOn :: !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TaskRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trExecutionTime' - The amount of time (in seconds) that the task run consumed resources.
--
-- * 'trStatus' - The current status of the requested task run.
--
-- * 'trTransformId' - The unique identifier for the transform.
--
-- * 'trTaskRunId' - The unique identifier for this task run.
--
-- * 'trErrorString' - The list of error strings associated with this task run.
--
-- * 'trLastModifiedOn' - The last point in time that the requested task run was updated.
--
-- * 'trLogGroupName' - The names of the log group for secure logging, associated with this task run.
--
-- * 'trCompletedOn' - The last point in time that the requested task run was completed.
--
-- * 'trProperties' - Specifies configuration properties associated with this task run.
--
-- * 'trStartedOn' - The date and time that this task run started.
taskRun ::
  TaskRun
taskRun =
  TaskRun'
    { _trExecutionTime = Nothing,
      _trStatus = Nothing,
      _trTransformId = Nothing,
      _trTaskRunId = Nothing,
      _trErrorString = Nothing,
      _trLastModifiedOn = Nothing,
      _trLogGroupName = Nothing,
      _trCompletedOn = Nothing,
      _trProperties = Nothing,
      _trStartedOn = Nothing
    }

-- | The amount of time (in seconds) that the task run consumed resources.
trExecutionTime :: Lens' TaskRun (Maybe Int)
trExecutionTime = lens _trExecutionTime (\s a -> s {_trExecutionTime = a})

-- | The current status of the requested task run.
trStatus :: Lens' TaskRun (Maybe TaskStatusType)
trStatus = lens _trStatus (\s a -> s {_trStatus = a})

-- | The unique identifier for the transform.
trTransformId :: Lens' TaskRun (Maybe Text)
trTransformId = lens _trTransformId (\s a -> s {_trTransformId = a})

-- | The unique identifier for this task run.
trTaskRunId :: Lens' TaskRun (Maybe Text)
trTaskRunId = lens _trTaskRunId (\s a -> s {_trTaskRunId = a})

-- | The list of error strings associated with this task run.
trErrorString :: Lens' TaskRun (Maybe Text)
trErrorString = lens _trErrorString (\s a -> s {_trErrorString = a})

-- | The last point in time that the requested task run was updated.
trLastModifiedOn :: Lens' TaskRun (Maybe UTCTime)
trLastModifiedOn = lens _trLastModifiedOn (\s a -> s {_trLastModifiedOn = a}) . mapping _Time

-- | The names of the log group for secure logging, associated with this task run.
trLogGroupName :: Lens' TaskRun (Maybe Text)
trLogGroupName = lens _trLogGroupName (\s a -> s {_trLogGroupName = a})

-- | The last point in time that the requested task run was completed.
trCompletedOn :: Lens' TaskRun (Maybe UTCTime)
trCompletedOn = lens _trCompletedOn (\s a -> s {_trCompletedOn = a}) . mapping _Time

-- | Specifies configuration properties associated with this task run.
trProperties :: Lens' TaskRun (Maybe TaskRunProperties)
trProperties = lens _trProperties (\s a -> s {_trProperties = a})

-- | The date and time that this task run started.
trStartedOn :: Lens' TaskRun (Maybe UTCTime)
trStartedOn = lens _trStartedOn (\s a -> s {_trStartedOn = a}) . mapping _Time

instance FromJSON TaskRun where
  parseJSON =
    withObject
      "TaskRun"
      ( \x ->
          TaskRun'
            <$> (x .:? "ExecutionTime")
            <*> (x .:? "Status")
            <*> (x .:? "TransformId")
            <*> (x .:? "TaskRunId")
            <*> (x .:? "ErrorString")
            <*> (x .:? "LastModifiedOn")
            <*> (x .:? "LogGroupName")
            <*> (x .:? "CompletedOn")
            <*> (x .:? "Properties")
            <*> (x .:? "StartedOn")
      )

instance Hashable TaskRun

instance NFData TaskRun
