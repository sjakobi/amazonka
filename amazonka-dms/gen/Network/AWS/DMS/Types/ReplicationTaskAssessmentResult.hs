{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.ReplicationTaskAssessmentResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReplicationTaskAssessmentResult where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | The task assessment report in JSON format.
--
--
--
-- /See:/ 'replicationTaskAssessmentResult' smart constructor.
data ReplicationTaskAssessmentResult = ReplicationTaskAssessmentResult'
  { _repS3ObjectURL ::
      !( Maybe
           Text
       ),
    _repAssessmentStatus ::
      !( Maybe
           Text
       ),
    _repReplicationTaskARN ::
      !( Maybe
           Text
       ),
    _repAssessmentResults ::
      !( Maybe
           Text
       ),
    _repReplicationTaskLastAssessmentDate ::
      !( Maybe
           POSIX
       ),
    _repAssessmentResultsFile ::
      !( Maybe
           Text
       ),
    _repReplicationTaskIdentifier ::
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

-- | Creates a value of 'ReplicationTaskAssessmentResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'repS3ObjectURL' - The URL of the S3 object containing the task assessment results.
--
-- * 'repAssessmentStatus' - The status of the task assessment.
--
-- * 'repReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task.
--
-- * 'repAssessmentResults' - The task assessment results in JSON format.
--
-- * 'repReplicationTaskLastAssessmentDate' - The date the task assessment was completed.
--
-- * 'repAssessmentResultsFile' - The file containing the results of the task assessment.
--
-- * 'repReplicationTaskIdentifier' - The replication task identifier of the task on which the task assessment was run.
replicationTaskAssessmentResult ::
  ReplicationTaskAssessmentResult
replicationTaskAssessmentResult =
  ReplicationTaskAssessmentResult'
    { _repS3ObjectURL =
        Nothing,
      _repAssessmentStatus = Nothing,
      _repReplicationTaskARN = Nothing,
      _repAssessmentResults = Nothing,
      _repReplicationTaskLastAssessmentDate =
        Nothing,
      _repAssessmentResultsFile = Nothing,
      _repReplicationTaskIdentifier = Nothing
    }

-- | The URL of the S3 object containing the task assessment results.
repS3ObjectURL :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
repS3ObjectURL = lens _repS3ObjectURL (\s a -> s {_repS3ObjectURL = a})

-- | The status of the task assessment.
repAssessmentStatus :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
repAssessmentStatus = lens _repAssessmentStatus (\s a -> s {_repAssessmentStatus = a})

-- | The Amazon Resource Name (ARN) of the replication task.
repReplicationTaskARN :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
repReplicationTaskARN = lens _repReplicationTaskARN (\s a -> s {_repReplicationTaskARN = a})

-- | The task assessment results in JSON format.
repAssessmentResults :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
repAssessmentResults = lens _repAssessmentResults (\s a -> s {_repAssessmentResults = a})

-- | The date the task assessment was completed.
repReplicationTaskLastAssessmentDate :: Lens' ReplicationTaskAssessmentResult (Maybe UTCTime)
repReplicationTaskLastAssessmentDate = lens _repReplicationTaskLastAssessmentDate (\s a -> s {_repReplicationTaskLastAssessmentDate = a}) . mapping _Time

-- | The file containing the results of the task assessment.
repAssessmentResultsFile :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
repAssessmentResultsFile = lens _repAssessmentResultsFile (\s a -> s {_repAssessmentResultsFile = a})

-- | The replication task identifier of the task on which the task assessment was run.
repReplicationTaskIdentifier :: Lens' ReplicationTaskAssessmentResult (Maybe Text)
repReplicationTaskIdentifier = lens _repReplicationTaskIdentifier (\s a -> s {_repReplicationTaskIdentifier = a})

instance FromJSON ReplicationTaskAssessmentResult where
  parseJSON =
    withObject
      "ReplicationTaskAssessmentResult"
      ( \x ->
          ReplicationTaskAssessmentResult'
            <$> (x .:? "S3ObjectUrl")
            <*> (x .:? "AssessmentStatus")
            <*> (x .:? "ReplicationTaskArn")
            <*> (x .:? "AssessmentResults")
            <*> (x .:? "ReplicationTaskLastAssessmentDate")
            <*> (x .:? "AssessmentResultsFile")
            <*> (x .:? "ReplicationTaskIdentifier")
      )

instance Hashable ReplicationTaskAssessmentResult

instance NFData ReplicationTaskAssessmentResult
