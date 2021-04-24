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
-- Module      : Network.AWS.RDS.PromoteReadReplica
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Promotes a read replica DB instance to a standalone DB instance.
module Network.AWS.RDS.PromoteReadReplica
  ( -- * Creating a Request
    promoteReadReplica,
    PromoteReadReplica,

    -- * Request Lenses
    prrBackupRetentionPeriod,
    prrPreferredBackupWindow,
    prrDBInstanceIdentifier,

    -- * Destructuring the Response
    promoteReadReplicaResponse,
    PromoteReadReplicaResponse,

    -- * Response Lenses
    prrrrsDBInstance,
    prrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'promoteReadReplica' smart constructor.
data PromoteReadReplica = PromoteReadReplica'
  { _prrBackupRetentionPeriod ::
      !(Maybe Int),
    _prrPreferredBackupWindow ::
      !(Maybe Text),
    _prrDBInstanceIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PromoteReadReplica' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prrBackupRetentionPeriod' - The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups. Default: 1 Constraints:     * Must be a value from 0 to 35.     * Can't be set to 0 if the DB instance is a source to read replicas.
--
-- * 'prrPreferredBackupWindow' - The daily time range during which automated backups are created if automated backups are enabled, using the @BackupRetentionPeriod@ parameter.  The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html Adjusting the Preferred Maintenance Window> in the /Amazon RDS User Guide./  Constraints:     * Must be in the format @hh24:mi-hh24:mi@ .     * Must be in Universal Coordinated Time (UTC).     * Must not conflict with the preferred maintenance window.     * Must be at least 30 minutes.
--
-- * 'prrDBInstanceIdentifier' - The DB instance identifier. This value is stored as a lowercase string. Constraints:     * Must match the identifier of an existing read replica DB instance. Example: @mydbinstance@
promoteReadReplica ::
  -- | 'prrDBInstanceIdentifier'
  Text ->
  PromoteReadReplica
promoteReadReplica pDBInstanceIdentifier_ =
  PromoteReadReplica'
    { _prrBackupRetentionPeriod =
        Nothing,
      _prrPreferredBackupWindow = Nothing,
      _prrDBInstanceIdentifier = pDBInstanceIdentifier_
    }

-- | The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups. Default: 1 Constraints:     * Must be a value from 0 to 35.     * Can't be set to 0 if the DB instance is a source to read replicas.
prrBackupRetentionPeriod :: Lens' PromoteReadReplica (Maybe Int)
prrBackupRetentionPeriod = lens _prrBackupRetentionPeriod (\s a -> s {_prrBackupRetentionPeriod = a})

-- | The daily time range during which automated backups are created if automated backups are enabled, using the @BackupRetentionPeriod@ parameter.  The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html Adjusting the Preferred Maintenance Window> in the /Amazon RDS User Guide./  Constraints:     * Must be in the format @hh24:mi-hh24:mi@ .     * Must be in Universal Coordinated Time (UTC).     * Must not conflict with the preferred maintenance window.     * Must be at least 30 minutes.
prrPreferredBackupWindow :: Lens' PromoteReadReplica (Maybe Text)
prrPreferredBackupWindow = lens _prrPreferredBackupWindow (\s a -> s {_prrPreferredBackupWindow = a})

-- | The DB instance identifier. This value is stored as a lowercase string. Constraints:     * Must match the identifier of an existing read replica DB instance. Example: @mydbinstance@
prrDBInstanceIdentifier :: Lens' PromoteReadReplica Text
prrDBInstanceIdentifier = lens _prrDBInstanceIdentifier (\s a -> s {_prrDBInstanceIdentifier = a})

instance AWSRequest PromoteReadReplica where
  type
    Rs PromoteReadReplica =
      PromoteReadReplicaResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "PromoteReadReplicaResult"
      ( \s h x ->
          PromoteReadReplicaResponse'
            <$> (x .@? "DBInstance") <*> (pure (fromEnum s))
      )

instance Hashable PromoteReadReplica

instance NFData PromoteReadReplica

instance ToHeaders PromoteReadReplica where
  toHeaders = const mempty

instance ToPath PromoteReadReplica where
  toPath = const "/"

instance ToQuery PromoteReadReplica where
  toQuery PromoteReadReplica' {..} =
    mconcat
      [ "Action" =: ("PromoteReadReplica" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "BackupRetentionPeriod" =: _prrBackupRetentionPeriod,
        "PreferredBackupWindow" =: _prrPreferredBackupWindow,
        "DBInstanceIdentifier" =: _prrDBInstanceIdentifier
      ]

-- | /See:/ 'promoteReadReplicaResponse' smart constructor.
data PromoteReadReplicaResponse = PromoteReadReplicaResponse'
  { _prrrrsDBInstance ::
      !( Maybe
           DBInstance
       ),
    _prrrrsResponseStatus ::
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

-- | Creates a value of 'PromoteReadReplicaResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prrrrsDBInstance' - Undocumented member.
--
-- * 'prrrrsResponseStatus' - -- | The response status code.
promoteReadReplicaResponse ::
  -- | 'prrrrsResponseStatus'
  Int ->
  PromoteReadReplicaResponse
promoteReadReplicaResponse pResponseStatus_ =
  PromoteReadReplicaResponse'
    { _prrrrsDBInstance =
        Nothing,
      _prrrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
prrrrsDBInstance :: Lens' PromoteReadReplicaResponse (Maybe DBInstance)
prrrrsDBInstance = lens _prrrrsDBInstance (\s a -> s {_prrrrsDBInstance = a})

-- | -- | The response status code.
prrrrsResponseStatus :: Lens' PromoteReadReplicaResponse Int
prrrrsResponseStatus = lens _prrrrsResponseStatus (\s a -> s {_prrrrsResponseStatus = a})

instance NFData PromoteReadReplicaResponse
