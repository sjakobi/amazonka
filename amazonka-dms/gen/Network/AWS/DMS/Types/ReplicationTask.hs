{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.ReplicationTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReplicationTask where

import Network.AWS.DMS.Types.MigrationTypeValue
import Network.AWS.DMS.Types.ReplicationTaskStats
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that describes a replication task created by the @CreateReplicationTask@ operation.
--
--
--
-- /See:/ 'replicationTask' smart constructor.
data ReplicationTask = ReplicationTask'
  { _rtStatus ::
      !(Maybe Text),
    _rtMigrationType ::
      !(Maybe MigrationTypeValue),
    _rtReplicationTaskCreationDate ::
      !(Maybe POSIX),
    _rtStopReason :: !(Maybe Text),
    _rtRecoveryCheckpoint :: !(Maybe Text),
    _rtTargetReplicationInstanceARN ::
      !(Maybe Text),
    _rtTaskData :: !(Maybe Text),
    _rtTargetEndpointARN :: !(Maybe Text),
    _rtReplicationTaskARN :: !(Maybe Text),
    _rtReplicationTaskSettings ::
      !(Maybe Text),
    _rtLastFailureMessage :: !(Maybe Text),
    _rtTableMappings :: !(Maybe Text),
    _rtSourceEndpointARN :: !(Maybe Text),
    _rtReplicationInstanceARN ::
      !(Maybe Text),
    _rtReplicationTaskStats ::
      !(Maybe ReplicationTaskStats),
    _rtReplicationTaskStartDate ::
      !(Maybe POSIX),
    _rtCdcStopPosition :: !(Maybe Text),
    _rtCdcStartPosition :: !(Maybe Text),
    _rtReplicationTaskIdentifier ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtStatus' - The status of the replication task. This response parameter can return one of the following values:     * @"moving"@ – The task is being moved in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html @MoveReplicationTask@ > operation.     * @"creating"@ – The task is being created in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html @CreateReplicationTask@ > operation.     * @"deleting"@ – The task is being deleted in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html @DeleteReplicationTask@ > operation.     * @"failed"@ – The task failed to successfully complete the database migration in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html @StartReplicationTask@ > operation.     * @"failed-move"@ – The task failed to move in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html @MoveReplicationTask@ > operation.     * @"modifying"@ – The task definition is being modified in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html @ModifyReplicationTask@ > operation.     * @"ready"@ – The task is in a @ready@ state where it can respond to other task operations, such as <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html @StartReplicationTask@ > or <https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html @DeleteReplicationTask@ > .      * @"running"@ – The task is performing a database migration in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html @StartReplicationTask@ > operation.     * @"starting"@ – The task is preparing to perform a database migration in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html @StartReplicationTask@ > operation.     * @"stopped"@ – The task has stopped in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html @StopReplicationTask@ > operation.     * @"stopping"@ – The task is preparing to stop in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html @StopReplicationTask@ > operation.     * @"testing"@ – The database migration specified for this task is being tested in response to running either the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html @StartReplicationTaskAssessmentRun@ > or the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html @StartReplicationTaskAssessment@ > operation.
--
-- * 'rtMigrationType' - The type of migration.
--
-- * 'rtReplicationTaskCreationDate' - The date the replication task was created.
--
-- * 'rtStopReason' - The reason the replication task was stopped. This response parameter can return one of the following values:     * @"STOP_REASON_FULL_LOAD_COMPLETED"@ – Full-load migration completed.     * @"STOP_REASON_CACHED_CHANGES_APPLIED"@ – Change data capture (CDC) load completed.     * @"STOP_REASON_CACHED_CHANGES_NOT_APPLIED"@ – In a full-load and CDC migration, the full load stopped as specified before starting the CDC migration.     * @"STOP_REASON_SERVER_TIME"@ – The migration stopped at the specified server time.
--
-- * 'rtRecoveryCheckpoint' - Indicates the last checkpoint that occurred during a change data capture (CDC) operation. You can provide this value to the @CdcStartPosition@ parameter to start a CDC operation that begins at that checkpoint.
--
-- * 'rtTargetReplicationInstanceARN' - The ARN of the replication instance to which this task is moved in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html @MoveReplicationTask@ > operation. Otherwise, this response parameter isn't a member of the @ReplicationTask@ object.
--
-- * 'rtTaskData' - Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html Specifying Supplemental Data for Task Settings> in the /AWS Database Migration Service User Guide./
--
-- * 'rtTargetEndpointARN' - The ARN that uniquely identifies the endpoint.
--
-- * 'rtReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
--
-- * 'rtReplicationTaskSettings' - The settings for the replication task.
--
-- * 'rtLastFailureMessage' - The last error (failure) message generated for the replication task.
--
-- * 'rtTableMappings' - Table mappings specified in the task.
--
-- * 'rtSourceEndpointARN' - The Amazon Resource Name (ARN) that uniquely identifies the endpoint.
--
-- * 'rtReplicationInstanceARN' - The ARN of the replication instance.
--
-- * 'rtReplicationTaskStats' - The statistics for the task, including elapsed time, tables loaded, and table errors.
--
-- * 'rtReplicationTaskStartDate' - The date the replication task is scheduled to start.
--
-- * 'rtCdcStopPosition' - Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “
--
-- * 'rtCdcStartPosition' - Indicates when you want a change data capture (CDC) operation to start. Use either @CdcStartPosition@ or @CdcStartTime@ to specify when you want the CDC operation to start. Specifying both values results in an error. The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
--
-- * 'rtReplicationTaskIdentifier' - The user-assigned replication task identifier or name. Constraints:     * Must contain 1-255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
replicationTask ::
  ReplicationTask
replicationTask =
  ReplicationTask'
    { _rtStatus = Nothing,
      _rtMigrationType = Nothing,
      _rtReplicationTaskCreationDate = Nothing,
      _rtStopReason = Nothing,
      _rtRecoveryCheckpoint = Nothing,
      _rtTargetReplicationInstanceARN = Nothing,
      _rtTaskData = Nothing,
      _rtTargetEndpointARN = Nothing,
      _rtReplicationTaskARN = Nothing,
      _rtReplicationTaskSettings = Nothing,
      _rtLastFailureMessage = Nothing,
      _rtTableMappings = Nothing,
      _rtSourceEndpointARN = Nothing,
      _rtReplicationInstanceARN = Nothing,
      _rtReplicationTaskStats = Nothing,
      _rtReplicationTaskStartDate = Nothing,
      _rtCdcStopPosition = Nothing,
      _rtCdcStartPosition = Nothing,
      _rtReplicationTaskIdentifier = Nothing
    }

-- | The status of the replication task. This response parameter can return one of the following values:     * @"moving"@ – The task is being moved in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html @MoveReplicationTask@ > operation.     * @"creating"@ – The task is being created in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html @CreateReplicationTask@ > operation.     * @"deleting"@ – The task is being deleted in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html @DeleteReplicationTask@ > operation.     * @"failed"@ – The task failed to successfully complete the database migration in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html @StartReplicationTask@ > operation.     * @"failed-move"@ – The task failed to move in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html @MoveReplicationTask@ > operation.     * @"modifying"@ – The task definition is being modified in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html @ModifyReplicationTask@ > operation.     * @"ready"@ – The task is in a @ready@ state where it can respond to other task operations, such as <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html @StartReplicationTask@ > or <https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html @DeleteReplicationTask@ > .      * @"running"@ – The task is performing a database migration in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html @StartReplicationTask@ > operation.     * @"starting"@ – The task is preparing to perform a database migration in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html @StartReplicationTask@ > operation.     * @"stopped"@ – The task has stopped in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html @StopReplicationTask@ > operation.     * @"stopping"@ – The task is preparing to stop in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html @StopReplicationTask@ > operation.     * @"testing"@ – The database migration specified for this task is being tested in response to running either the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html @StartReplicationTaskAssessmentRun@ > or the <https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html @StartReplicationTaskAssessment@ > operation.
rtStatus :: Lens' ReplicationTask (Maybe Text)
rtStatus = lens _rtStatus (\s a -> s {_rtStatus = a})

-- | The type of migration.
rtMigrationType :: Lens' ReplicationTask (Maybe MigrationTypeValue)
rtMigrationType = lens _rtMigrationType (\s a -> s {_rtMigrationType = a})

-- | The date the replication task was created.
rtReplicationTaskCreationDate :: Lens' ReplicationTask (Maybe UTCTime)
rtReplicationTaskCreationDate = lens _rtReplicationTaskCreationDate (\s a -> s {_rtReplicationTaskCreationDate = a}) . mapping _Time

-- | The reason the replication task was stopped. This response parameter can return one of the following values:     * @"STOP_REASON_FULL_LOAD_COMPLETED"@ – Full-load migration completed.     * @"STOP_REASON_CACHED_CHANGES_APPLIED"@ – Change data capture (CDC) load completed.     * @"STOP_REASON_CACHED_CHANGES_NOT_APPLIED"@ – In a full-load and CDC migration, the full load stopped as specified before starting the CDC migration.     * @"STOP_REASON_SERVER_TIME"@ – The migration stopped at the specified server time.
rtStopReason :: Lens' ReplicationTask (Maybe Text)
rtStopReason = lens _rtStopReason (\s a -> s {_rtStopReason = a})

-- | Indicates the last checkpoint that occurred during a change data capture (CDC) operation. You can provide this value to the @CdcStartPosition@ parameter to start a CDC operation that begins at that checkpoint.
rtRecoveryCheckpoint :: Lens' ReplicationTask (Maybe Text)
rtRecoveryCheckpoint = lens _rtRecoveryCheckpoint (\s a -> s {_rtRecoveryCheckpoint = a})

-- | The ARN of the replication instance to which this task is moved in response to running the <https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html @MoveReplicationTask@ > operation. Otherwise, this response parameter isn't a member of the @ReplicationTask@ object.
rtTargetReplicationInstanceARN :: Lens' ReplicationTask (Maybe Text)
rtTargetReplicationInstanceARN = lens _rtTargetReplicationInstanceARN (\s a -> s {_rtTargetReplicationInstanceARN = a})

-- | Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html Specifying Supplemental Data for Task Settings> in the /AWS Database Migration Service User Guide./
rtTaskData :: Lens' ReplicationTask (Maybe Text)
rtTaskData = lens _rtTaskData (\s a -> s {_rtTaskData = a})

-- | The ARN that uniquely identifies the endpoint.
rtTargetEndpointARN :: Lens' ReplicationTask (Maybe Text)
rtTargetEndpointARN = lens _rtTargetEndpointARN (\s a -> s {_rtTargetEndpointARN = a})

-- | The Amazon Resource Name (ARN) of the replication task.
rtReplicationTaskARN :: Lens' ReplicationTask (Maybe Text)
rtReplicationTaskARN = lens _rtReplicationTaskARN (\s a -> s {_rtReplicationTaskARN = a})

-- | The settings for the replication task.
rtReplicationTaskSettings :: Lens' ReplicationTask (Maybe Text)
rtReplicationTaskSettings = lens _rtReplicationTaskSettings (\s a -> s {_rtReplicationTaskSettings = a})

-- | The last error (failure) message generated for the replication task.
rtLastFailureMessage :: Lens' ReplicationTask (Maybe Text)
rtLastFailureMessage = lens _rtLastFailureMessage (\s a -> s {_rtLastFailureMessage = a})

-- | Table mappings specified in the task.
rtTableMappings :: Lens' ReplicationTask (Maybe Text)
rtTableMappings = lens _rtTableMappings (\s a -> s {_rtTableMappings = a})

-- | The Amazon Resource Name (ARN) that uniquely identifies the endpoint.
rtSourceEndpointARN :: Lens' ReplicationTask (Maybe Text)
rtSourceEndpointARN = lens _rtSourceEndpointARN (\s a -> s {_rtSourceEndpointARN = a})

-- | The ARN of the replication instance.
rtReplicationInstanceARN :: Lens' ReplicationTask (Maybe Text)
rtReplicationInstanceARN = lens _rtReplicationInstanceARN (\s a -> s {_rtReplicationInstanceARN = a})

-- | The statistics for the task, including elapsed time, tables loaded, and table errors.
rtReplicationTaskStats :: Lens' ReplicationTask (Maybe ReplicationTaskStats)
rtReplicationTaskStats = lens _rtReplicationTaskStats (\s a -> s {_rtReplicationTaskStats = a})

-- | The date the replication task is scheduled to start.
rtReplicationTaskStartDate :: Lens' ReplicationTask (Maybe UTCTime)
rtReplicationTaskStartDate = lens _rtReplicationTaskStartDate (\s a -> s {_rtReplicationTaskStartDate = a}) . mapping _Time

-- | Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “
rtCdcStopPosition :: Lens' ReplicationTask (Maybe Text)
rtCdcStopPosition = lens _rtCdcStopPosition (\s a -> s {_rtCdcStopPosition = a})

-- | Indicates when you want a change data capture (CDC) operation to start. Use either @CdcStartPosition@ or @CdcStartTime@ to specify when you want the CDC operation to start. Specifying both values results in an error. The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
rtCdcStartPosition :: Lens' ReplicationTask (Maybe Text)
rtCdcStartPosition = lens _rtCdcStartPosition (\s a -> s {_rtCdcStartPosition = a})

-- | The user-assigned replication task identifier or name. Constraints:     * Must contain 1-255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
rtReplicationTaskIdentifier :: Lens' ReplicationTask (Maybe Text)
rtReplicationTaskIdentifier = lens _rtReplicationTaskIdentifier (\s a -> s {_rtReplicationTaskIdentifier = a})

instance FromJSON ReplicationTask where
  parseJSON =
    withObject
      "ReplicationTask"
      ( \x ->
          ReplicationTask'
            <$> (x .:? "Status")
            <*> (x .:? "MigrationType")
            <*> (x .:? "ReplicationTaskCreationDate")
            <*> (x .:? "StopReason")
            <*> (x .:? "RecoveryCheckpoint")
            <*> (x .:? "TargetReplicationInstanceArn")
            <*> (x .:? "TaskData")
            <*> (x .:? "TargetEndpointArn")
            <*> (x .:? "ReplicationTaskArn")
            <*> (x .:? "ReplicationTaskSettings")
            <*> (x .:? "LastFailureMessage")
            <*> (x .:? "TableMappings")
            <*> (x .:? "SourceEndpointArn")
            <*> (x .:? "ReplicationInstanceArn")
            <*> (x .:? "ReplicationTaskStats")
            <*> (x .:? "ReplicationTaskStartDate")
            <*> (x .:? "CdcStopPosition")
            <*> (x .:? "CdcStartPosition")
            <*> (x .:? "ReplicationTaskIdentifier")
      )

instance Hashable ReplicationTask

instance NFData ReplicationTask
