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
-- Module      : Network.AWS.DMS.CreateReplicationTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a replication task using the specified parameters.
module Network.AWS.DMS.CreateReplicationTask
  ( -- * Creating a Request
    createReplicationTask,
    CreateReplicationTask,

    -- * Request Lenses
    crtTaskData,
    crtReplicationTaskSettings,
    crtTags,
    crtCdcStartTime,
    crtResourceIdentifier,
    crtCdcStopPosition,
    crtCdcStartPosition,
    crtReplicationTaskIdentifier,
    crtSourceEndpointARN,
    crtTargetEndpointARN,
    crtReplicationInstanceARN,
    crtMigrationType,
    crtTableMappings,

    -- * Destructuring the Response
    createReplicationTaskResponse,
    CreateReplicationTaskResponse,

    -- * Response Lenses
    crtrrsReplicationTask,
    crtrrsResponseStatus,
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
-- /See:/ 'createReplicationTask' smart constructor.
data CreateReplicationTask = CreateReplicationTask'
  { _crtTaskData ::
      !(Maybe Text),
    _crtReplicationTaskSettings ::
      !(Maybe Text),
    _crtTags :: !(Maybe [Tag]),
    _crtCdcStartTime ::
      !(Maybe POSIX),
    _crtResourceIdentifier ::
      !(Maybe Text),
    _crtCdcStopPosition ::
      !(Maybe Text),
    _crtCdcStartPosition ::
      !(Maybe Text),
    _crtReplicationTaskIdentifier ::
      !Text,
    _crtSourceEndpointARN ::
      !Text,
    _crtTargetEndpointARN ::
      !Text,
    _crtReplicationInstanceARN ::
      !Text,
    _crtMigrationType ::
      !MigrationTypeValue,
    _crtTableMappings :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateReplicationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crtTaskData' - Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html Specifying Supplemental Data for Task Settings> in the /AWS Database Migration Service User Guide./
--
-- * 'crtReplicationTaskSettings' - Overall settings for the task, in JSON format. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html Specifying Task Settings for AWS Database Migration Service Tasks> in the /AWS Database Migration User Guide./
--
-- * 'crtTags' - One or more tags to be assigned to the replication task.
--
-- * 'crtCdcStartTime' - Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error. Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
--
-- * 'crtResourceIdentifier' - A friendly name for the resource identifier at the end of the @EndpointArn@ response parameter that is returned in the created @Endpoint@ object. The value for this parameter can have up to 31 characters. It can contain only ASCII letters, digits, and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens, and can only begin with a letter, such as @Example-App-ARN1@ . For example, this value might result in the @EndpointArn@ value @arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1@ . If you don't specify a @ResourceIdentifier@ value, AWS DMS generates a default identifier value for the end of @EndpointArn@ .
--
-- * 'crtCdcStopPosition' - Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “
--
-- * 'crtCdcStartPosition' - Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error. The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
--
-- * 'crtReplicationTaskIdentifier' - An identifier for the replication task. Constraints:     * Must contain 1-255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
--
-- * 'crtSourceEndpointARN' - An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.
--
-- * 'crtTargetEndpointARN' - An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.
--
-- * 'crtReplicationInstanceARN' - The Amazon Resource Name (ARN) of a replication instance.
--
-- * 'crtMigrationType' - The migration type. Valid values: @full-load@ | @cdc@ | @full-load-and-cdc@
--
-- * 'crtTableMappings' - The table mappings for the task, in JSON format. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html Using Table Mapping to Specify Task Settings> in the /AWS Database Migration Service User Guide./
createReplicationTask ::
  -- | 'crtReplicationTaskIdentifier'
  Text ->
  -- | 'crtSourceEndpointARN'
  Text ->
  -- | 'crtTargetEndpointARN'
  Text ->
  -- | 'crtReplicationInstanceARN'
  Text ->
  -- | 'crtMigrationType'
  MigrationTypeValue ->
  -- | 'crtTableMappings'
  Text ->
  CreateReplicationTask
createReplicationTask
  pReplicationTaskIdentifier_
  pSourceEndpointARN_
  pTargetEndpointARN_
  pReplicationInstanceARN_
  pMigrationType_
  pTableMappings_ =
    CreateReplicationTask'
      { _crtTaskData = Nothing,
        _crtReplicationTaskSettings = Nothing,
        _crtTags = Nothing,
        _crtCdcStartTime = Nothing,
        _crtResourceIdentifier = Nothing,
        _crtCdcStopPosition = Nothing,
        _crtCdcStartPosition = Nothing,
        _crtReplicationTaskIdentifier =
          pReplicationTaskIdentifier_,
        _crtSourceEndpointARN = pSourceEndpointARN_,
        _crtTargetEndpointARN = pTargetEndpointARN_,
        _crtReplicationInstanceARN =
          pReplicationInstanceARN_,
        _crtMigrationType = pMigrationType_,
        _crtTableMappings = pTableMappings_
      }

-- | Supplemental information that the task requires to migrate the data for certain source and target endpoints. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html Specifying Supplemental Data for Task Settings> in the /AWS Database Migration Service User Guide./
crtTaskData :: Lens' CreateReplicationTask (Maybe Text)
crtTaskData = lens _crtTaskData (\s a -> s {_crtTaskData = a})

-- | Overall settings for the task, in JSON format. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html Specifying Task Settings for AWS Database Migration Service Tasks> in the /AWS Database Migration User Guide./
crtReplicationTaskSettings :: Lens' CreateReplicationTask (Maybe Text)
crtReplicationTaskSettings = lens _crtReplicationTaskSettings (\s a -> s {_crtReplicationTaskSettings = a})

-- | One or more tags to be assigned to the replication task.
crtTags :: Lens' CreateReplicationTask [Tag]
crtTags = lens _crtTags (\s a -> s {_crtTags = a}) . _Default . _Coerce

-- | Indicates the start time for a change data capture (CDC) operation. Use either CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start. Specifying both values results in an error. Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
crtCdcStartTime :: Lens' CreateReplicationTask (Maybe UTCTime)
crtCdcStartTime = lens _crtCdcStartTime (\s a -> s {_crtCdcStartTime = a}) . mapping _Time

-- | A friendly name for the resource identifier at the end of the @EndpointArn@ response parameter that is returned in the created @Endpoint@ object. The value for this parameter can have up to 31 characters. It can contain only ASCII letters, digits, and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens, and can only begin with a letter, such as @Example-App-ARN1@ . For example, this value might result in the @EndpointArn@ value @arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1@ . If you don't specify a @ResourceIdentifier@ value, AWS DMS generates a default identifier value for the end of @EndpointArn@ .
crtResourceIdentifier :: Lens' CreateReplicationTask (Maybe Text)
crtResourceIdentifier = lens _crtResourceIdentifier (\s a -> s {_crtResourceIdentifier = a})

-- | Indicates when you want a change data capture (CDC) operation to stop. The value can be either server time or commit time. Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12” Commit time example: --cdc-stop-position “commit_time: 2018-02-09T12:12:12 “
crtCdcStopPosition :: Lens' CreateReplicationTask (Maybe Text)
crtCdcStopPosition = lens _crtCdcStopPosition (\s a -> s {_crtCdcStopPosition = a})

-- | Indicates when you want a change data capture (CDC) operation to start. Use either CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start. Specifying both values results in an error. The value can be in date, checkpoint, or LSN/SCN format. Date Example: --cdc-start-position “2018-03-08T12:12:12” Checkpoint Example: --cdc-start-position "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93" LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
crtCdcStartPosition :: Lens' CreateReplicationTask (Maybe Text)
crtCdcStartPosition = lens _crtCdcStartPosition (\s a -> s {_crtCdcStartPosition = a})

-- | An identifier for the replication task. Constraints:     * Must contain 1-255 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
crtReplicationTaskIdentifier :: Lens' CreateReplicationTask Text
crtReplicationTaskIdentifier = lens _crtReplicationTaskIdentifier (\s a -> s {_crtReplicationTaskIdentifier = a})

-- | An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.
crtSourceEndpointARN :: Lens' CreateReplicationTask Text
crtSourceEndpointARN = lens _crtSourceEndpointARN (\s a -> s {_crtSourceEndpointARN = a})

-- | An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.
crtTargetEndpointARN :: Lens' CreateReplicationTask Text
crtTargetEndpointARN = lens _crtTargetEndpointARN (\s a -> s {_crtTargetEndpointARN = a})

-- | The Amazon Resource Name (ARN) of a replication instance.
crtReplicationInstanceARN :: Lens' CreateReplicationTask Text
crtReplicationInstanceARN = lens _crtReplicationInstanceARN (\s a -> s {_crtReplicationInstanceARN = a})

-- | The migration type. Valid values: @full-load@ | @cdc@ | @full-load-and-cdc@
crtMigrationType :: Lens' CreateReplicationTask MigrationTypeValue
crtMigrationType = lens _crtMigrationType (\s a -> s {_crtMigrationType = a})

-- | The table mappings for the task, in JSON format. For more information, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html Using Table Mapping to Specify Task Settings> in the /AWS Database Migration Service User Guide./
crtTableMappings :: Lens' CreateReplicationTask Text
crtTableMappings = lens _crtTableMappings (\s a -> s {_crtTableMappings = a})

instance AWSRequest CreateReplicationTask where
  type
    Rs CreateReplicationTask =
      CreateReplicationTaskResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          CreateReplicationTaskResponse'
            <$> (x .?> "ReplicationTask") <*> (pure (fromEnum s))
      )

instance Hashable CreateReplicationTask

instance NFData CreateReplicationTask

instance ToHeaders CreateReplicationTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.CreateReplicationTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateReplicationTask where
  toJSON CreateReplicationTask' {..} =
    object
      ( catMaybes
          [ ("TaskData" .=) <$> _crtTaskData,
            ("ReplicationTaskSettings" .=)
              <$> _crtReplicationTaskSettings,
            ("Tags" .=) <$> _crtTags,
            ("CdcStartTime" .=) <$> _crtCdcStartTime,
            ("ResourceIdentifier" .=) <$> _crtResourceIdentifier,
            ("CdcStopPosition" .=) <$> _crtCdcStopPosition,
            ("CdcStartPosition" .=) <$> _crtCdcStartPosition,
            Just
              ( "ReplicationTaskIdentifier"
                  .= _crtReplicationTaskIdentifier
              ),
            Just ("SourceEndpointArn" .= _crtSourceEndpointARN),
            Just ("TargetEndpointArn" .= _crtTargetEndpointARN),
            Just
              ( "ReplicationInstanceArn"
                  .= _crtReplicationInstanceARN
              ),
            Just ("MigrationType" .= _crtMigrationType),
            Just ("TableMappings" .= _crtTableMappings)
          ]
      )

instance ToPath CreateReplicationTask where
  toPath = const "/"

instance ToQuery CreateReplicationTask where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'createReplicationTaskResponse' smart constructor.
data CreateReplicationTaskResponse = CreateReplicationTaskResponse'
  { _crtrrsReplicationTask ::
      !( Maybe
           ReplicationTask
       ),
    _crtrrsResponseStatus ::
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

-- | Creates a value of 'CreateReplicationTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crtrrsReplicationTask' - The replication task that was created.
--
-- * 'crtrrsResponseStatus' - -- | The response status code.
createReplicationTaskResponse ::
  -- | 'crtrrsResponseStatus'
  Int ->
  CreateReplicationTaskResponse
createReplicationTaskResponse pResponseStatus_ =
  CreateReplicationTaskResponse'
    { _crtrrsReplicationTask =
        Nothing,
      _crtrrsResponseStatus = pResponseStatus_
    }

-- | The replication task that was created.
crtrrsReplicationTask :: Lens' CreateReplicationTaskResponse (Maybe ReplicationTask)
crtrrsReplicationTask = lens _crtrrsReplicationTask (\s a -> s {_crtrrsReplicationTask = a})

-- | -- | The response status code.
crtrrsResponseStatus :: Lens' CreateReplicationTaskResponse Int
crtrrsResponseStatus = lens _crtrrsResponseStatus (\s a -> s {_crtrrsResponseStatus = a})

instance NFData CreateReplicationTaskResponse
