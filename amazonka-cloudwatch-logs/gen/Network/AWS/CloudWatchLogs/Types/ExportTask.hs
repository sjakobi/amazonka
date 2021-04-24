{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.ExportTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.ExportTask where

import Network.AWS.CloudWatchLogs.Types.ExportTaskExecutionInfo
import Network.AWS.CloudWatchLogs.Types.ExportTaskStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents an export task.
--
--
--
-- /See:/ 'exportTask' smart constructor.
data ExportTask = ExportTask'
  { _etStatus ::
      !(Maybe ExportTaskStatus),
    _etExecutionInfo ::
      !(Maybe ExportTaskExecutionInfo),
    _etTo :: !(Maybe Nat),
    _etTaskId :: !(Maybe Text),
    _etTaskName :: !(Maybe Text),
    _etLogGroupName :: !(Maybe Text),
    _etDestination :: !(Maybe Text),
    _etDestinationPrefix :: !(Maybe Text),
    _etFrom :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ExportTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etStatus' - The status of the export task.
--
-- * 'etExecutionInfo' - Execution information about the export task.
--
-- * 'etTo' - The end time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not exported.
--
-- * 'etTaskId' - The ID of the export task.
--
-- * 'etTaskName' - The name of the export task.
--
-- * 'etLogGroupName' - The name of the log group from which logs data was exported.
--
-- * 'etDestination' - The name of the S3 bucket to which the log data was exported.
--
-- * 'etDestinationPrefix' - The prefix that was used as the start of Amazon S3 key for every object exported.
--
-- * 'etFrom' - The start time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp before this time are not exported.
exportTask ::
  ExportTask
exportTask =
  ExportTask'
    { _etStatus = Nothing,
      _etExecutionInfo = Nothing,
      _etTo = Nothing,
      _etTaskId = Nothing,
      _etTaskName = Nothing,
      _etLogGroupName = Nothing,
      _etDestination = Nothing,
      _etDestinationPrefix = Nothing,
      _etFrom = Nothing
    }

-- | The status of the export task.
etStatus :: Lens' ExportTask (Maybe ExportTaskStatus)
etStatus = lens _etStatus (\s a -> s {_etStatus = a})

-- | Execution information about the export task.
etExecutionInfo :: Lens' ExportTask (Maybe ExportTaskExecutionInfo)
etExecutionInfo = lens _etExecutionInfo (\s a -> s {_etExecutionInfo = a})

-- | The end time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not exported.
etTo :: Lens' ExportTask (Maybe Natural)
etTo = lens _etTo (\s a -> s {_etTo = a}) . mapping _Nat

-- | The ID of the export task.
etTaskId :: Lens' ExportTask (Maybe Text)
etTaskId = lens _etTaskId (\s a -> s {_etTaskId = a})

-- | The name of the export task.
etTaskName :: Lens' ExportTask (Maybe Text)
etTaskName = lens _etTaskName (\s a -> s {_etTaskName = a})

-- | The name of the log group from which logs data was exported.
etLogGroupName :: Lens' ExportTask (Maybe Text)
etLogGroupName = lens _etLogGroupName (\s a -> s {_etLogGroupName = a})

-- | The name of the S3 bucket to which the log data was exported.
etDestination :: Lens' ExportTask (Maybe Text)
etDestination = lens _etDestination (\s a -> s {_etDestination = a})

-- | The prefix that was used as the start of Amazon S3 key for every object exported.
etDestinationPrefix :: Lens' ExportTask (Maybe Text)
etDestinationPrefix = lens _etDestinationPrefix (\s a -> s {_etDestinationPrefix = a})

-- | The start time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp before this time are not exported.
etFrom :: Lens' ExportTask (Maybe Natural)
etFrom = lens _etFrom (\s a -> s {_etFrom = a}) . mapping _Nat

instance FromJSON ExportTask where
  parseJSON =
    withObject
      "ExportTask"
      ( \x ->
          ExportTask'
            <$> (x .:? "status")
            <*> (x .:? "executionInfo")
            <*> (x .:? "to")
            <*> (x .:? "taskId")
            <*> (x .:? "taskName")
            <*> (x .:? "logGroupName")
            <*> (x .:? "destination")
            <*> (x .:? "destinationPrefix")
            <*> (x .:? "from")
      )

instance Hashable ExportTask

instance NFData ExportTask
