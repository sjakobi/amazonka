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
-- Module      : Network.AWS.RDS.StopDBInstanceAutomatedBackupsReplication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops automated backup replication for a DB instance.
--
--
-- For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html Replicating Automated Backups to Another AWS Region> in the /Amazon RDS User Guide./
module Network.AWS.RDS.StopDBInstanceAutomatedBackupsReplication
  ( -- * Creating a Request
    stopDBInstanceAutomatedBackupsReplication,
    StopDBInstanceAutomatedBackupsReplication,

    -- * Request Lenses
    sdbiabrSourceDBInstanceARN,

    -- * Destructuring the Response
    stopDBInstanceAutomatedBackupsReplicationResponse,
    StopDBInstanceAutomatedBackupsReplicationResponse,

    -- * Response Lenses
    sdiabrrrsDBInstanceAutomatedBackup,
    sdiabrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopDBInstanceAutomatedBackupsReplication' smart constructor.
newtype StopDBInstanceAutomatedBackupsReplication = StopDBInstanceAutomatedBackupsReplication'
  { _sdbiabrSourceDBInstanceARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StopDBInstanceAutomatedBackupsReplication' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdbiabrSourceDBInstanceARN' - The Amazon Resource Name (ARN) of the source DB instance for which to stop replicating automated backups, for example, @arn:aws:rds:us-west-2:123456789012:db:mydatabase@ .
stopDBInstanceAutomatedBackupsReplication ::
  -- | 'sdbiabrSourceDBInstanceARN'
  Text ->
  StopDBInstanceAutomatedBackupsReplication
stopDBInstanceAutomatedBackupsReplication
  pSourceDBInstanceARN_ =
    StopDBInstanceAutomatedBackupsReplication'
      { _sdbiabrSourceDBInstanceARN =
          pSourceDBInstanceARN_
      }

-- | The Amazon Resource Name (ARN) of the source DB instance for which to stop replicating automated backups, for example, @arn:aws:rds:us-west-2:123456789012:db:mydatabase@ .
sdbiabrSourceDBInstanceARN :: Lens' StopDBInstanceAutomatedBackupsReplication Text
sdbiabrSourceDBInstanceARN = lens _sdbiabrSourceDBInstanceARN (\s a -> s {_sdbiabrSourceDBInstanceARN = a})

instance
  AWSRequest
    StopDBInstanceAutomatedBackupsReplication
  where
  type
    Rs StopDBInstanceAutomatedBackupsReplication =
      StopDBInstanceAutomatedBackupsReplicationResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "StopDBInstanceAutomatedBackupsReplicationResult"
      ( \s h x ->
          StopDBInstanceAutomatedBackupsReplicationResponse'
            <$> (x .@? "DBInstanceAutomatedBackup")
              <*> (pure (fromEnum s))
      )

instance
  Hashable
    StopDBInstanceAutomatedBackupsReplication

instance
  NFData
    StopDBInstanceAutomatedBackupsReplication

instance
  ToHeaders
    StopDBInstanceAutomatedBackupsReplication
  where
  toHeaders = const mempty

instance
  ToPath
    StopDBInstanceAutomatedBackupsReplication
  where
  toPath = const "/"

instance
  ToQuery
    StopDBInstanceAutomatedBackupsReplication
  where
  toQuery
    StopDBInstanceAutomatedBackupsReplication' {..} =
      mconcat
        [ "Action"
            =: ( "StopDBInstanceAutomatedBackupsReplication" ::
                   ByteString
               ),
          "Version" =: ("2014-10-31" :: ByteString),
          "SourceDBInstanceArn" =: _sdbiabrSourceDBInstanceARN
        ]

-- | /See:/ 'stopDBInstanceAutomatedBackupsReplicationResponse' smart constructor.
data StopDBInstanceAutomatedBackupsReplicationResponse = StopDBInstanceAutomatedBackupsReplicationResponse'
  { _sdiabrrrsDBInstanceAutomatedBackup ::
      !( Maybe
           DBInstanceAutomatedBackup
       ),
    _sdiabrrrsResponseStatus ::
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

-- | Creates a value of 'StopDBInstanceAutomatedBackupsReplicationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiabrrrsDBInstanceAutomatedBackup' - Undocumented member.
--
-- * 'sdiabrrrsResponseStatus' - -- | The response status code.
stopDBInstanceAutomatedBackupsReplicationResponse ::
  -- | 'sdiabrrrsResponseStatus'
  Int ->
  StopDBInstanceAutomatedBackupsReplicationResponse
stopDBInstanceAutomatedBackupsReplicationResponse
  pResponseStatus_ =
    StopDBInstanceAutomatedBackupsReplicationResponse'
      { _sdiabrrrsDBInstanceAutomatedBackup =
          Nothing,
        _sdiabrrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
sdiabrrrsDBInstanceAutomatedBackup :: Lens' StopDBInstanceAutomatedBackupsReplicationResponse (Maybe DBInstanceAutomatedBackup)
sdiabrrrsDBInstanceAutomatedBackup = lens _sdiabrrrsDBInstanceAutomatedBackup (\s a -> s {_sdiabrrrsDBInstanceAutomatedBackup = a})

-- | -- | The response status code.
sdiabrrrsResponseStatus :: Lens' StopDBInstanceAutomatedBackupsReplicationResponse Int
sdiabrrrsResponseStatus = lens _sdiabrrrsResponseStatus (\s a -> s {_sdiabrrrsResponseStatus = a})

instance
  NFData
    StopDBInstanceAutomatedBackupsReplicationResponse
