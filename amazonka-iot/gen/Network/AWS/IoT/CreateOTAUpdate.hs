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
-- Module      : Network.AWS.IoT.CreateOTAUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an AWS IoT OTAUpdate on a target group of things or groups.
module Network.AWS.IoT.CreateOTAUpdate
  ( -- * Creating a Request
    createOTAUpdate,
    CreateOTAUpdate,

    -- * Request Lenses
    cotauTargetSelection,
    cotauAwsJobTimeoutConfig,
    cotauProtocols,
    cotauTags,
    cotauAwsJobPresignedURLConfig,
    cotauDescription,
    cotauAdditionalParameters,
    cotauAwsJobExecutionsRolloutConfig,
    cotauAwsJobAbortConfig,
    cotauOtaUpdateId,
    cotauTargets,
    cotauFiles,
    cotauRoleARN,

    -- * Destructuring the Response
    createOTAUpdateResponse,
    CreateOTAUpdateResponse,

    -- * Response Lenses
    cotaurrsOtaUpdateStatus,
    cotaurrsOtaUpdateARN,
    cotaurrsAwsIotJobId,
    cotaurrsAwsIotJobARN,
    cotaurrsOtaUpdateId,
    cotaurrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createOTAUpdate' smart constructor.
data CreateOTAUpdate = CreateOTAUpdate'
  { _cotauTargetSelection ::
      !(Maybe TargetSelection),
    _cotauAwsJobTimeoutConfig ::
      !(Maybe AWSJobTimeoutConfig),
    _cotauProtocols ::
      !(Maybe (List1 Protocol)),
    _cotauTags :: !(Maybe [Tag]),
    _cotauAwsJobPresignedURLConfig ::
      !(Maybe AWSJobPresignedURLConfig),
    _cotauDescription :: !(Maybe Text),
    _cotauAdditionalParameters ::
      !(Maybe (Map Text Text)),
    _cotauAwsJobExecutionsRolloutConfig ::
      !(Maybe AWSJobExecutionsRolloutConfig),
    _cotauAwsJobAbortConfig ::
      !(Maybe AWSJobAbortConfig),
    _cotauOtaUpdateId :: !Text,
    _cotauTargets :: !(List1 Text),
    _cotauFiles :: !(List1 OTAUpdateFile),
    _cotauRoleARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateOTAUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cotauTargetSelection' - Specifies whether the update will continue to run (CONTINUOUS), or will be complete after all the things specified as targets have completed the update (SNAPSHOT). If continuous, the update may also be run on a thing when a change is detected in a target. For example, an update will run on a thing when the thing is added to a target group, even after the update was completed by all things originally in the group. Valid values: CONTINUOUS | SNAPSHOT.
--
-- * 'cotauAwsJobTimeoutConfig' - Specifies the amount of time each device has to finish its execution of the job. A timer is started when the job execution status is set to @IN_PROGRESS@ . If the job execution status is not set to another terminal state before the timer expires, it will be automatically set to @TIMED_OUT@ .
--
-- * 'cotauProtocols' - The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both HTTP and MQTT are specified, the target device can choose the protocol.
--
-- * 'cotauTags' - Metadata which can be used to manage updates.
--
-- * 'cotauAwsJobPresignedURLConfig' - Configuration information for pre-signed URLs.
--
-- * 'cotauDescription' - The description of the OTA update.
--
-- * 'cotauAdditionalParameters' - A list of additional OTA update parameters which are name-value pairs.
--
-- * 'cotauAwsJobExecutionsRolloutConfig' - Configuration for the rollout of OTA updates.
--
-- * 'cotauAwsJobAbortConfig' - The criteria that determine when and how a job abort takes place.
--
-- * 'cotauOtaUpdateId' - The ID of the OTA update to be created.
--
-- * 'cotauTargets' - The devices targeted to receive OTA updates.
--
-- * 'cotauFiles' - The files to be streamed by the OTA update.
--
-- * 'cotauRoleARN' - The IAM role that grants AWS IoT access to the Amazon S3, AWS IoT jobs and AWS Code Signing resources to create an OTA update job.
createOTAUpdate ::
  -- | 'cotauOtaUpdateId'
  Text ->
  -- | 'cotauTargets'
  NonEmpty Text ->
  -- | 'cotauFiles'
  NonEmpty OTAUpdateFile ->
  -- | 'cotauRoleARN'
  Text ->
  CreateOTAUpdate
createOTAUpdate
  pOtaUpdateId_
  pTargets_
  pFiles_
  pRoleARN_ =
    CreateOTAUpdate'
      { _cotauTargetSelection = Nothing,
        _cotauAwsJobTimeoutConfig = Nothing,
        _cotauProtocols = Nothing,
        _cotauTags = Nothing,
        _cotauAwsJobPresignedURLConfig = Nothing,
        _cotauDescription = Nothing,
        _cotauAdditionalParameters = Nothing,
        _cotauAwsJobExecutionsRolloutConfig = Nothing,
        _cotauAwsJobAbortConfig = Nothing,
        _cotauOtaUpdateId = pOtaUpdateId_,
        _cotauTargets = _List1 # pTargets_,
        _cotauFiles = _List1 # pFiles_,
        _cotauRoleARN = pRoleARN_
      }

-- | Specifies whether the update will continue to run (CONTINUOUS), or will be complete after all the things specified as targets have completed the update (SNAPSHOT). If continuous, the update may also be run on a thing when a change is detected in a target. For example, an update will run on a thing when the thing is added to a target group, even after the update was completed by all things originally in the group. Valid values: CONTINUOUS | SNAPSHOT.
cotauTargetSelection :: Lens' CreateOTAUpdate (Maybe TargetSelection)
cotauTargetSelection = lens _cotauTargetSelection (\s a -> s {_cotauTargetSelection = a})

-- | Specifies the amount of time each device has to finish its execution of the job. A timer is started when the job execution status is set to @IN_PROGRESS@ . If the job execution status is not set to another terminal state before the timer expires, it will be automatically set to @TIMED_OUT@ .
cotauAwsJobTimeoutConfig :: Lens' CreateOTAUpdate (Maybe AWSJobTimeoutConfig)
cotauAwsJobTimeoutConfig = lens _cotauAwsJobTimeoutConfig (\s a -> s {_cotauAwsJobTimeoutConfig = a})

-- | The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both HTTP and MQTT are specified, the target device can choose the protocol.
cotauProtocols :: Lens' CreateOTAUpdate (Maybe (NonEmpty Protocol))
cotauProtocols = lens _cotauProtocols (\s a -> s {_cotauProtocols = a}) . mapping _List1

-- | Metadata which can be used to manage updates.
cotauTags :: Lens' CreateOTAUpdate [Tag]
cotauTags = lens _cotauTags (\s a -> s {_cotauTags = a}) . _Default . _Coerce

-- | Configuration information for pre-signed URLs.
cotauAwsJobPresignedURLConfig :: Lens' CreateOTAUpdate (Maybe AWSJobPresignedURLConfig)
cotauAwsJobPresignedURLConfig = lens _cotauAwsJobPresignedURLConfig (\s a -> s {_cotauAwsJobPresignedURLConfig = a})

-- | The description of the OTA update.
cotauDescription :: Lens' CreateOTAUpdate (Maybe Text)
cotauDescription = lens _cotauDescription (\s a -> s {_cotauDescription = a})

-- | A list of additional OTA update parameters which are name-value pairs.
cotauAdditionalParameters :: Lens' CreateOTAUpdate (HashMap Text Text)
cotauAdditionalParameters = lens _cotauAdditionalParameters (\s a -> s {_cotauAdditionalParameters = a}) . _Default . _Map

-- | Configuration for the rollout of OTA updates.
cotauAwsJobExecutionsRolloutConfig :: Lens' CreateOTAUpdate (Maybe AWSJobExecutionsRolloutConfig)
cotauAwsJobExecutionsRolloutConfig = lens _cotauAwsJobExecutionsRolloutConfig (\s a -> s {_cotauAwsJobExecutionsRolloutConfig = a})

-- | The criteria that determine when and how a job abort takes place.
cotauAwsJobAbortConfig :: Lens' CreateOTAUpdate (Maybe AWSJobAbortConfig)
cotauAwsJobAbortConfig = lens _cotauAwsJobAbortConfig (\s a -> s {_cotauAwsJobAbortConfig = a})

-- | The ID of the OTA update to be created.
cotauOtaUpdateId :: Lens' CreateOTAUpdate Text
cotauOtaUpdateId = lens _cotauOtaUpdateId (\s a -> s {_cotauOtaUpdateId = a})

-- | The devices targeted to receive OTA updates.
cotauTargets :: Lens' CreateOTAUpdate (NonEmpty Text)
cotauTargets = lens _cotauTargets (\s a -> s {_cotauTargets = a}) . _List1

-- | The files to be streamed by the OTA update.
cotauFiles :: Lens' CreateOTAUpdate (NonEmpty OTAUpdateFile)
cotauFiles = lens _cotauFiles (\s a -> s {_cotauFiles = a}) . _List1

-- | The IAM role that grants AWS IoT access to the Amazon S3, AWS IoT jobs and AWS Code Signing resources to create an OTA update job.
cotauRoleARN :: Lens' CreateOTAUpdate Text
cotauRoleARN = lens _cotauRoleARN (\s a -> s {_cotauRoleARN = a})

instance AWSRequest CreateOTAUpdate where
  type Rs CreateOTAUpdate = CreateOTAUpdateResponse
  request = postJSON ioT
  response =
    receiveJSON
      ( \s h x ->
          CreateOTAUpdateResponse'
            <$> (x .?> "otaUpdateStatus")
            <*> (x .?> "otaUpdateArn")
            <*> (x .?> "awsIotJobId")
            <*> (x .?> "awsIotJobArn")
            <*> (x .?> "otaUpdateId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateOTAUpdate

instance NFData CreateOTAUpdate

instance ToHeaders CreateOTAUpdate where
  toHeaders = const mempty

instance ToJSON CreateOTAUpdate where
  toJSON CreateOTAUpdate' {..} =
    object
      ( catMaybes
          [ ("targetSelection" .=) <$> _cotauTargetSelection,
            ("awsJobTimeoutConfig" .=)
              <$> _cotauAwsJobTimeoutConfig,
            ("protocols" .=) <$> _cotauProtocols,
            ("tags" .=) <$> _cotauTags,
            ("awsJobPresignedUrlConfig" .=)
              <$> _cotauAwsJobPresignedURLConfig,
            ("description" .=) <$> _cotauDescription,
            ("additionalParameters" .=)
              <$> _cotauAdditionalParameters,
            ("awsJobExecutionsRolloutConfig" .=)
              <$> _cotauAwsJobExecutionsRolloutConfig,
            ("awsJobAbortConfig" .=) <$> _cotauAwsJobAbortConfig,
            Just ("targets" .= _cotauTargets),
            Just ("files" .= _cotauFiles),
            Just ("roleArn" .= _cotauRoleARN)
          ]
      )

instance ToPath CreateOTAUpdate where
  toPath CreateOTAUpdate' {..} =
    mconcat ["/otaUpdates/", toBS _cotauOtaUpdateId]

instance ToQuery CreateOTAUpdate where
  toQuery = const mempty

-- | /See:/ 'createOTAUpdateResponse' smart constructor.
data CreateOTAUpdateResponse = CreateOTAUpdateResponse'
  { _cotaurrsOtaUpdateStatus ::
      !( Maybe
           OTAUpdateStatus
       ),
    _cotaurrsOtaUpdateARN ::
      !(Maybe Text),
    _cotaurrsAwsIotJobId ::
      !(Maybe Text),
    _cotaurrsAwsIotJobARN ::
      !(Maybe Text),
    _cotaurrsOtaUpdateId ::
      !(Maybe Text),
    _cotaurrsResponseStatus ::
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

-- | Creates a value of 'CreateOTAUpdateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cotaurrsOtaUpdateStatus' - The OTA update status.
--
-- * 'cotaurrsOtaUpdateARN' - The OTA update ARN.
--
-- * 'cotaurrsAwsIotJobId' - The AWS IoT job ID associated with the OTA update.
--
-- * 'cotaurrsAwsIotJobARN' - The AWS IoT job ARN associated with the OTA update.
--
-- * 'cotaurrsOtaUpdateId' - The OTA update ID.
--
-- * 'cotaurrsResponseStatus' - -- | The response status code.
createOTAUpdateResponse ::
  -- | 'cotaurrsResponseStatus'
  Int ->
  CreateOTAUpdateResponse
createOTAUpdateResponse pResponseStatus_ =
  CreateOTAUpdateResponse'
    { _cotaurrsOtaUpdateStatus =
        Nothing,
      _cotaurrsOtaUpdateARN = Nothing,
      _cotaurrsAwsIotJobId = Nothing,
      _cotaurrsAwsIotJobARN = Nothing,
      _cotaurrsOtaUpdateId = Nothing,
      _cotaurrsResponseStatus = pResponseStatus_
    }

-- | The OTA update status.
cotaurrsOtaUpdateStatus :: Lens' CreateOTAUpdateResponse (Maybe OTAUpdateStatus)
cotaurrsOtaUpdateStatus = lens _cotaurrsOtaUpdateStatus (\s a -> s {_cotaurrsOtaUpdateStatus = a})

-- | The OTA update ARN.
cotaurrsOtaUpdateARN :: Lens' CreateOTAUpdateResponse (Maybe Text)
cotaurrsOtaUpdateARN = lens _cotaurrsOtaUpdateARN (\s a -> s {_cotaurrsOtaUpdateARN = a})

-- | The AWS IoT job ID associated with the OTA update.
cotaurrsAwsIotJobId :: Lens' CreateOTAUpdateResponse (Maybe Text)
cotaurrsAwsIotJobId = lens _cotaurrsAwsIotJobId (\s a -> s {_cotaurrsAwsIotJobId = a})

-- | The AWS IoT job ARN associated with the OTA update.
cotaurrsAwsIotJobARN :: Lens' CreateOTAUpdateResponse (Maybe Text)
cotaurrsAwsIotJobARN = lens _cotaurrsAwsIotJobARN (\s a -> s {_cotaurrsAwsIotJobARN = a})

-- | The OTA update ID.
cotaurrsOtaUpdateId :: Lens' CreateOTAUpdateResponse (Maybe Text)
cotaurrsOtaUpdateId = lens _cotaurrsOtaUpdateId (\s a -> s {_cotaurrsOtaUpdateId = a})

-- | -- | The response status code.
cotaurrsResponseStatus :: Lens' CreateOTAUpdateResponse Int
cotaurrsResponseStatus = lens _cotaurrsResponseStatus (\s a -> s {_cotaurrsResponseStatus = a})

instance NFData CreateOTAUpdateResponse
