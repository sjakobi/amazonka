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
-- Module      : Network.AWS.DMS.ModifyReplicationTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified replication task.
--
--
-- You can't modify the task endpoints. The task must be stopped before you can modify it.
--
-- For more information about AWS DMS tasks, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.html Working with Migration Tasks> in the /AWS Database Migration Service User Guide/ .
module Network.AWS.DMS.ModifyReplicationTask
  ( -- * Creating a Request
    modifyReplicationTask,
    ModifyReplicationTask,

    -- * Request Lenses
    mrtMigrationType,
    mrtTaskData,
    mrtReplicationTaskSettings,
    mrtTableMappings,
    mrtCdcStartTime,
    mrtCdcStopPosition,
    mrtCdcStartPosition,
    mrtReplicationTaskIdentifier,
    mrtReplicationTaskARN,

    -- * Destructuring the Response
    modifyReplicationTaskResponse,
    ModifyReplicationTaskResponse,

    -- * Response Lenses
    mrtrrsReplicationTask,
    mrtrrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'modifyReplicationTask' smart constructor.
data ModifyReplicationTask = ModifyReplicationTask'
  { _mrtMigrationType ::
      !(Maybe MigrationTypeValue),
    _mrtTaskData ::
      !(Maybe Text),
    _mrtReplicationTaskSettings ::
      !(Maybe Text),
    _mrtTableMappings ::
      !(Maybe Text),
    _mrtCdcStartTime ::
      !(Maybe POSIX),
    _mrtCdcStopPosition ::
      !(Maybe Text),
    _mrtCdcStartPosition ::
      !(Maybe Text),
    _mrtReplicationTaskIdentifier ::
      !(Maybe Text),
    _mrtReplicationTaskARN ::
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

-- | Creates a value of 'ModifyReplicationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrtMigrationType' - The migration type. Valid values: @full-load@ | @cdc@ | @full-load-and-cdc@
--
-- * 'mrtTaskData' - Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html Specifying Supplemental Data for Task Settings> in the /AWS Database Migration Service User Guide./
--
-- * 'mrtReplicationTaskSettings' - JSON file that contains settings for the task, such as task metadata settings.
--
-- * 'mrtTableMappings' - When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with @file://@ . When working with the DMS API, provide the JSON as the parameter value, for example: @--table-mappings file://mappingfile.json@
--
-- * 'mrtCdcStartTime' - Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error. Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
--
-- * 'mrtCdcStopPosition' - Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “
--
-- * 'mrtCdcStartPosition' - Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error. The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
--
-- * 'mrtReplicationTaskIdentifier' - The replication task identifier. Constraints:     * Must contain 1-255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
--
-- * 'mrtReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
modifyReplicationTask ::
  -- | 'mrtReplicationTaskARN'
  Text ->
  ModifyReplicationTask
modifyReplicationTask pReplicationTaskARN_ =
  ModifyReplicationTask'
    { _mrtMigrationType = Nothing,
      _mrtTaskData = Nothing,
      _mrtReplicationTaskSettings = Nothing,
      _mrtTableMappings = Nothing,
      _mrtCdcStartTime = Nothing,
      _mrtCdcStopPosition = Nothing,
      _mrtCdcStartPosition = Nothing,
      _mrtReplicationTaskIdentifier = Nothing,
      _mrtReplicationTaskARN = pReplicationTaskARN_
    }

-- | The migration type. Valid values: @full-load@ | @cdc@ | @full-load-and-cdc@
mrtMigrationType :: Lens' ModifyReplicationTask (Maybe MigrationTypeValue)
mrtMigrationType = lens _mrtMigrationType (\s a -> s {_mrtMigrationType = a})

-- | Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html Specifying Supplemental Data for Task Settings> in the /AWS Database Migration Service User Guide./
mrtTaskData :: Lens' ModifyReplicationTask (Maybe Text)
mrtTaskData = lens _mrtTaskData (\s a -> s {_mrtTaskData = a})

-- | JSON file that contains settings for the task, such as task metadata settings.
mrtReplicationTaskSettings :: Lens' ModifyReplicationTask (Maybe Text)
mrtReplicationTaskSettings = lens _mrtReplicationTaskSettings (\s a -> s {_mrtReplicationTaskSettings = a})

-- | When using the AWS CLI or boto3, provide the path of the JSON file that contains the table mappings. Precede the path with @file://@ . When working with the DMS API, provide the JSON as the parameter value, for example: @--table-mappings file://mappingfile.json@
mrtTableMappings :: Lens' ModifyReplicationTask (Maybe Text)
mrtTableMappings = lens _mrtTableMappings (\s a -> s {_mrtTableMappings = a})

-- | Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error. Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
mrtCdcStartTime :: Lens' ModifyReplicationTask (Maybe UTCTime)
mrtCdcStartTime = lens _mrtCdcStartTime (\s a -> s {_mrtCdcStartTime = a}) . mapping _Time

-- | Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “
mrtCdcStopPosition :: Lens' ModifyReplicationTask (Maybe Text)
mrtCdcStopPosition = lens _mrtCdcStopPosition (\s a -> s {_mrtCdcStopPosition = a})

-- | Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error. The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
mrtCdcStartPosition :: Lens' ModifyReplicationTask (Maybe Text)
mrtCdcStartPosition = lens _mrtCdcStartPosition (\s a -> s {_mrtCdcStartPosition = a})

-- | The replication task identifier. Constraints:     * Must contain 1-255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
mrtReplicationTaskIdentifier :: Lens' ModifyReplicationTask (Maybe Text)
mrtReplicationTaskIdentifier = lens _mrtReplicationTaskIdentifier (\s a -> s {_mrtReplicationTaskIdentifier = a})

-- | The Amazon Resource Name (ARN) of the replication task.
mrtReplicationTaskARN :: Lens' ModifyReplicationTask Text
mrtReplicationTaskARN = lens _mrtReplicationTaskARN (\s a -> s {_mrtReplicationTaskARN = a})

instance AWSRequest ModifyReplicationTask where
  type
    Rs ModifyReplicationTask =
      ModifyReplicationTaskResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          ModifyReplicationTaskResponse'
            <$> (x .?> "ReplicationTask") <*> (pure (fromEnum s))
      )

instance Hashable ModifyReplicationTask

instance NFData ModifyReplicationTask

instance ToHeaders ModifyReplicationTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.ModifyReplicationTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ModifyReplicationTask where
  toJSON ModifyReplicationTask' {..} =
    object
      ( catMaybes
          [ ("MigrationType" .=) <$> _mrtMigrationType,
            ("TaskData" .=) <$> _mrtTaskData,
            ("ReplicationTaskSettings" .=)
              <$> _mrtReplicationTaskSettings,
            ("TableMappings" .=) <$> _mrtTableMappings,
            ("CdcStartTime" .=) <$> _mrtCdcStartTime,
            ("CdcStopPosition" .=) <$> _mrtCdcStopPosition,
            ("CdcStartPosition" .=) <$> _mrtCdcStartPosition,
            ("ReplicationTaskIdentifier" .=)
              <$> _mrtReplicationTaskIdentifier,
            Just
              ("ReplicationTaskArn" .= _mrtReplicationTaskARN)
          ]
      )

instance ToPath ModifyReplicationTask where
  toPath = const "/"

instance ToQuery ModifyReplicationTask where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'modifyReplicationTaskResponse' smart constructor.
data ModifyReplicationTaskResponse = ModifyReplicationTaskResponse'
  { _mrtrrsReplicationTask ::
      !( Maybe
           ReplicationTask
       ),
    _mrtrrsResponseStatus ::
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

-- | Creates a value of 'ModifyReplicationTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrtrrsReplicationTask' - The replication task that was modified.
--
-- * 'mrtrrsResponseStatus' - -- | The response status code.
modifyReplicationTaskResponse ::
  -- | 'mrtrrsResponseStatus'
  Int ->
  ModifyReplicationTaskResponse
modifyReplicationTaskResponse pResponseStatus_ =
  ModifyReplicationTaskResponse'
    { _mrtrrsReplicationTask =
        Nothing,
      _mrtrrsResponseStatus = pResponseStatus_
    }

-- | The replication task that was modified.
mrtrrsReplicationTask :: Lens' ModifyReplicationTaskResponse (Maybe ReplicationTask)
mrtrrsReplicationTask = lens _mrtrrsReplicationTask (\s a -> s {_mrtrrsReplicationTask = a})

-- | -- | The response status code.
mrtrrsResponseStatus :: Lens' ModifyReplicationTaskResponse Int
mrtrrsResponseStatus = lens _mrtrrsResponseStatus (\s a -> s {_mrtrrsResponseStatus = a})

instance NFData ModifyReplicationTaskResponse
