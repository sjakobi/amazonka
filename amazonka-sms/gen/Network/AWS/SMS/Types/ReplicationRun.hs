{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ReplicationRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ReplicationRun where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.ReplicationRunStageDetails
import Network.AWS.SMS.Types.ReplicationRunState
import Network.AWS.SMS.Types.ReplicationRunType

-- | Represents a replication run.
--
--
--
-- /See:/ 'replicationRun' smart constructor.
data ReplicationRun = ReplicationRun'
  { _rrStatusMessage ::
      !(Maybe Text),
    _rrEncrypted :: !(Maybe Bool),
    _rrReplicationRunId :: !(Maybe Text),
    _rrAmiId :: !(Maybe Text),
    _rrCompletedTime :: !(Maybe POSIX),
    _rrState :: !(Maybe ReplicationRunState),
    _rrKmsKeyId :: !(Maybe Text),
    _rrScheduledStartTime :: !(Maybe POSIX),
    _rrStageDetails ::
      !(Maybe ReplicationRunStageDetails),
    _rrDescription :: !(Maybe Text),
    _rrType :: !(Maybe ReplicationRunType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicationRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrStatusMessage' - The description of the current status of the replication job.
--
-- * 'rrEncrypted' - Indicates whether the replication run should produce an encrypted AMI.
--
-- * 'rrReplicationRunId' - The ID of the replication run.
--
-- * 'rrAmiId' - The ID of the Amazon Machine Image (AMI) from the replication run.
--
-- * 'rrCompletedTime' - The completion time of the last replication run.
--
-- * 'rrState' - The state of the replication run.
--
-- * 'rrKmsKeyId' - The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:     * KMS key ID     * KMS key alias     * ARN referring to the KMS key ID     * ARN referring to the KMS key alias If encrypted is /true/ but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used.
--
-- * 'rrScheduledStartTime' - The start time of the next replication run.
--
-- * 'rrStageDetails' - Details about the current stage of the replication run.
--
-- * 'rrDescription' - The description of the replication run.
--
-- * 'rrType' - The type of replication run.
replicationRun ::
  ReplicationRun
replicationRun =
  ReplicationRun'
    { _rrStatusMessage = Nothing,
      _rrEncrypted = Nothing,
      _rrReplicationRunId = Nothing,
      _rrAmiId = Nothing,
      _rrCompletedTime = Nothing,
      _rrState = Nothing,
      _rrKmsKeyId = Nothing,
      _rrScheduledStartTime = Nothing,
      _rrStageDetails = Nothing,
      _rrDescription = Nothing,
      _rrType = Nothing
    }

-- | The description of the current status of the replication job.
rrStatusMessage :: Lens' ReplicationRun (Maybe Text)
rrStatusMessage = lens _rrStatusMessage (\s a -> s {_rrStatusMessage = a})

-- | Indicates whether the replication run should produce an encrypted AMI.
rrEncrypted :: Lens' ReplicationRun (Maybe Bool)
rrEncrypted = lens _rrEncrypted (\s a -> s {_rrEncrypted = a})

-- | The ID of the replication run.
rrReplicationRunId :: Lens' ReplicationRun (Maybe Text)
rrReplicationRunId = lens _rrReplicationRunId (\s a -> s {_rrReplicationRunId = a})

-- | The ID of the Amazon Machine Image (AMI) from the replication run.
rrAmiId :: Lens' ReplicationRun (Maybe Text)
rrAmiId = lens _rrAmiId (\s a -> s {_rrAmiId = a})

-- | The completion time of the last replication run.
rrCompletedTime :: Lens' ReplicationRun (Maybe UTCTime)
rrCompletedTime = lens _rrCompletedTime (\s a -> s {_rrCompletedTime = a}) . mapping _Time

-- | The state of the replication run.
rrState :: Lens' ReplicationRun (Maybe ReplicationRunState)
rrState = lens _rrState (\s a -> s {_rrState = a})

-- | The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:     * KMS key ID     * KMS key alias     * ARN referring to the KMS key ID     * ARN referring to the KMS key alias If encrypted is /true/ but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used.
rrKmsKeyId :: Lens' ReplicationRun (Maybe Text)
rrKmsKeyId = lens _rrKmsKeyId (\s a -> s {_rrKmsKeyId = a})

-- | The start time of the next replication run.
rrScheduledStartTime :: Lens' ReplicationRun (Maybe UTCTime)
rrScheduledStartTime = lens _rrScheduledStartTime (\s a -> s {_rrScheduledStartTime = a}) . mapping _Time

-- | Details about the current stage of the replication run.
rrStageDetails :: Lens' ReplicationRun (Maybe ReplicationRunStageDetails)
rrStageDetails = lens _rrStageDetails (\s a -> s {_rrStageDetails = a})

-- | The description of the replication run.
rrDescription :: Lens' ReplicationRun (Maybe Text)
rrDescription = lens _rrDescription (\s a -> s {_rrDescription = a})

-- | The type of replication run.
rrType :: Lens' ReplicationRun (Maybe ReplicationRunType)
rrType = lens _rrType (\s a -> s {_rrType = a})

instance FromJSON ReplicationRun where
  parseJSON =
    withObject
      "ReplicationRun"
      ( \x ->
          ReplicationRun'
            <$> (x .:? "statusMessage")
            <*> (x .:? "encrypted")
            <*> (x .:? "replicationRunId")
            <*> (x .:? "amiId")
            <*> (x .:? "completedTime")
            <*> (x .:? "state")
            <*> (x .:? "kmsKeyId")
            <*> (x .:? "scheduledStartTime")
            <*> (x .:? "stageDetails")
            <*> (x .:? "description")
            <*> (x .:? "type")
      )

instance Hashable ReplicationRun

instance NFData ReplicationRun
