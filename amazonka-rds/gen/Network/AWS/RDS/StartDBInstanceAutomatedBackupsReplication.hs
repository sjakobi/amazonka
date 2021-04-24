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
-- Module      : Network.AWS.RDS.StartDBInstanceAutomatedBackupsReplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables replication of automated backups to a different AWS Region.
--
--
-- For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html Replicating Automated Backups to Another AWS Region> in the /Amazon RDS User Guide./
module Network.AWS.RDS.StartDBInstanceAutomatedBackupsReplication
  ( -- * Creating a Request
    startDBInstanceAutomatedBackupsReplication,
    StartDBInstanceAutomatedBackupsReplication,

    -- * Request Lenses
    sdiabrBackupRetentionPeriod,
    sdiabrKMSKeyId,
    sdiabrPreSignedURL,
    sdiabrSourceDBInstanceARN,

    -- * Destructuring the Response
    startDBInstanceAutomatedBackupsReplicationResponse,
    StartDBInstanceAutomatedBackupsReplicationResponse,

    -- * Response Lenses
    sdbiabrrrsDBInstanceAutomatedBackup,
    sdbiabrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startDBInstanceAutomatedBackupsReplication' smart constructor.
data StartDBInstanceAutomatedBackupsReplication = StartDBInstanceAutomatedBackupsReplication'
  { _sdiabrBackupRetentionPeriod ::
      !( Maybe
           Int
       ),
    _sdiabrKMSKeyId ::
      !( Maybe
           Text
       ),
    _sdiabrPreSignedURL ::
      !( Maybe
           Text
       ),
    _sdiabrSourceDBInstanceARN ::
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

-- | Creates a value of 'StartDBInstanceAutomatedBackupsReplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiabrBackupRetentionPeriod' - The retention period for the replicated automated backups.
--
-- * 'sdiabrKMSKeyId' - The AWS KMS key identifier for encryption of the replicated automated backups. The KMS key ID is the Amazon Resource Name (ARN) for the KMS encryption key in the destination AWS Region, for example, @arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE@ .
--
-- * 'sdiabrPreSignedURL' - A URL that contains a Signature Version 4 signed request for the StartDBInstanceAutomatedBackupsReplication action to be called in the AWS Region of the source DB instance. The presigned URL must be a valid request for the StartDBInstanceAutomatedBackupsReplication API action that can be executed in the AWS Region that contains the source DB instance.
--
-- * 'sdiabrSourceDBInstanceARN' - The Amazon Resource Name (ARN) of the source DB instance for the replicated automated backups, for example, @arn:aws:rds:us-west-2:123456789012:db:mydatabase@ .
startDBInstanceAutomatedBackupsReplication ::
  -- | 'sdiabrSourceDBInstanceARN'
  Text ->
  StartDBInstanceAutomatedBackupsReplication
startDBInstanceAutomatedBackupsReplication
  pSourceDBInstanceARN_ =
    StartDBInstanceAutomatedBackupsReplication'
      { _sdiabrBackupRetentionPeriod =
          Nothing,
        _sdiabrKMSKeyId = Nothing,
        _sdiabrPreSignedURL = Nothing,
        _sdiabrSourceDBInstanceARN =
          pSourceDBInstanceARN_
      }

-- | The retention period for the replicated automated backups.
sdiabrBackupRetentionPeriod :: Lens' StartDBInstanceAutomatedBackupsReplication (Maybe Int)
sdiabrBackupRetentionPeriod = lens _sdiabrBackupRetentionPeriod (\s a -> s {_sdiabrBackupRetentionPeriod = a})

-- | The AWS KMS key identifier for encryption of the replicated automated backups. The KMS key ID is the Amazon Resource Name (ARN) for the KMS encryption key in the destination AWS Region, for example, @arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE@ .
sdiabrKMSKeyId :: Lens' StartDBInstanceAutomatedBackupsReplication (Maybe Text)
sdiabrKMSKeyId = lens _sdiabrKMSKeyId (\s a -> s {_sdiabrKMSKeyId = a})

-- | A URL that contains a Signature Version 4 signed request for the StartDBInstanceAutomatedBackupsReplication action to be called in the AWS Region of the source DB instance. The presigned URL must be a valid request for the StartDBInstanceAutomatedBackupsReplication API action that can be executed in the AWS Region that contains the source DB instance.
sdiabrPreSignedURL :: Lens' StartDBInstanceAutomatedBackupsReplication (Maybe Text)
sdiabrPreSignedURL = lens _sdiabrPreSignedURL (\s a -> s {_sdiabrPreSignedURL = a})

-- | The Amazon Resource Name (ARN) of the source DB instance for the replicated automated backups, for example, @arn:aws:rds:us-west-2:123456789012:db:mydatabase@ .
sdiabrSourceDBInstanceARN :: Lens' StartDBInstanceAutomatedBackupsReplication Text
sdiabrSourceDBInstanceARN = lens _sdiabrSourceDBInstanceARN (\s a -> s {_sdiabrSourceDBInstanceARN = a})

instance
  AWSRequest
    StartDBInstanceAutomatedBackupsReplication
  where
  type
    Rs StartDBInstanceAutomatedBackupsReplication =
      StartDBInstanceAutomatedBackupsReplicationResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "StartDBInstanceAutomatedBackupsReplicationResult"
      ( \s h x ->
          StartDBInstanceAutomatedBackupsReplicationResponse'
            <$> (x .@? "DBInstanceAutomatedBackup")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    StartDBInstanceAutomatedBackupsReplication

instance
  NFData
    StartDBInstanceAutomatedBackupsReplication

instance
  ToHeaders
    StartDBInstanceAutomatedBackupsReplication
  where
  toHeaders = const mempty

instance
  ToPath
    StartDBInstanceAutomatedBackupsReplication
  where
  toPath = const "/"

instance
  ToQuery
    StartDBInstanceAutomatedBackupsReplication
  where
  toQuery
    StartDBInstanceAutomatedBackupsReplication' {..} =
      mconcat
        [ "Action"
            =: ( "StartDBInstanceAutomatedBackupsReplication" ::
                   ByteString
               ),
          "Version" =: ("2014-10-31" :: ByteString),
          "BackupRetentionPeriod"
            =: _sdiabrBackupRetentionPeriod,
          "KmsKeyId" =: _sdiabrKMSKeyId,
          "PreSignedUrl" =: _sdiabrPreSignedURL,
          "SourceDBInstanceArn" =: _sdiabrSourceDBInstanceARN
        ]

-- | /See:/ 'startDBInstanceAutomatedBackupsReplicationResponse' smart constructor.
data StartDBInstanceAutomatedBackupsReplicationResponse = StartDBInstanceAutomatedBackupsReplicationResponse'
  { _sdbiabrrrsDBInstanceAutomatedBackup ::
      !( Maybe
           DBInstanceAutomatedBackup
       ),
    _sdbiabrrrsResponseStatus ::
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

-- | Creates a value of 'StartDBInstanceAutomatedBackupsReplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdbiabrrrsDBInstanceAutomatedBackup' - Undocumented member.
--
-- * 'sdbiabrrrsResponseStatus' - -- | The response status code.
startDBInstanceAutomatedBackupsReplicationResponse ::
  -- | 'sdbiabrrrsResponseStatus'
  Int ->
  StartDBInstanceAutomatedBackupsReplicationResponse
startDBInstanceAutomatedBackupsReplicationResponse
  pResponseStatus_ =
    StartDBInstanceAutomatedBackupsReplicationResponse'
      { _sdbiabrrrsDBInstanceAutomatedBackup =
          Nothing,
        _sdbiabrrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
sdbiabrrrsDBInstanceAutomatedBackup :: Lens' StartDBInstanceAutomatedBackupsReplicationResponse (Maybe DBInstanceAutomatedBackup)
sdbiabrrrsDBInstanceAutomatedBackup = lens _sdbiabrrrsDBInstanceAutomatedBackup (\s a -> s {_sdbiabrrrsDBInstanceAutomatedBackup = a})

-- | -- | The response status code.
sdbiabrrrsResponseStatus :: Lens' StartDBInstanceAutomatedBackupsReplicationResponse Int
sdbiabrrrsResponseStatus = lens _sdbiabrrrsResponseStatus (\s a -> s {_sdbiabrrrsResponseStatus = a})

instance
  NFData
    StartDBInstanceAutomatedBackupsReplicationResponse
