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
-- Module      : Network.AWS.RDS.DeleteDBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and can't be recovered. Manual DB snapshots of the DB instance to be deleted by @DeleteDBInstance@ are not deleted.
--
--
-- If you request a final DB snapshot the status of the Amazon RDS DB instance is @deleting@ until the DB snapshot is created. The API action @DescribeDBInstance@ is used to monitor the status of this operation. The action can't be canceled or reverted once submitted.
--
-- When a DB instance is in a failure state and has a status of @failed@ , @incompatible-restore@ , or @incompatible-network@ , you can only delete it when you skip creation of the final snapshot with the @SkipFinalSnapshot@ parameter.
--
-- If the specified DB instance is part of an Amazon Aurora DB cluster, you can't delete the DB instance if both of the following conditions are true:
--
--     * The DB cluster is a read replica of another Amazon Aurora DB cluster.
--
--     * The DB instance is the only instance in the DB cluster.
--
--
--
-- To delete a DB instance in this case, first call the @PromoteReadReplicaDBCluster@ API action to promote the DB cluster so it's no longer a read replica. After the promotion completes, then call the @DeleteDBInstance@ API action to delete the final instance in the DB cluster.
module Network.AWS.RDS.DeleteDBInstance
  ( -- * Creating a Request
    deleteDBInstance,
    DeleteDBInstance,

    -- * Request Lenses
    ddbiSkipFinalSnapshot,
    ddbiFinalDBSnapshotIdentifier,
    ddbiDeleteAutomatedBackups,
    ddbiDBInstanceIdentifier,

    -- * Destructuring the Response
    deleteDBInstanceResponse,
    DeleteDBInstanceResponse,

    -- * Response Lenses
    ddbirrsDBInstance,
    ddbirrsResponseStatus,
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
-- /See:/ 'deleteDBInstance' smart constructor.
data DeleteDBInstance = DeleteDBInstance'
  { _ddbiSkipFinalSnapshot ::
      !(Maybe Bool),
    _ddbiFinalDBSnapshotIdentifier ::
      !(Maybe Text),
    _ddbiDeleteAutomatedBackups ::
      !(Maybe Bool),
    _ddbiDBInstanceIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDBInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbiSkipFinalSnapshot' - A value that indicates whether to skip the creation of a final DB snapshot before the DB instance is deleted. If skip is specified, no DB snapshot is created. If skip isn't specified, a DB snapshot is created before the DB instance is deleted. By default, skip isn't specified, and the DB snapshot is created. When a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when skip is specified. Specify skip when deleting a read replica.
--
-- * 'ddbiFinalDBSnapshotIdentifier' - The @DBSnapshotIdentifier@ of the new @DBSnapshot@ created when the @SkipFinalSnapshot@ parameter is disabled.  Constraints:     * Must be 1 to 255 letters or numbers.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.     * Can't be specified when deleting a read replica.
--
-- * 'ddbiDeleteAutomatedBackups' - A value that indicates whether to remove automated backups immediately after the DB instance is deleted. This parameter isn't case-sensitive. The default is to remove automated backups immediately after the DB instance is deleted.
--
-- * 'ddbiDBInstanceIdentifier' - The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive. Constraints:     * Must match the name of an existing DB instance.
deleteDBInstance ::
  -- | 'ddbiDBInstanceIdentifier'
  Text ->
  DeleteDBInstance
deleteDBInstance pDBInstanceIdentifier_ =
  DeleteDBInstance'
    { _ddbiSkipFinalSnapshot = Nothing,
      _ddbiFinalDBSnapshotIdentifier = Nothing,
      _ddbiDeleteAutomatedBackups = Nothing,
      _ddbiDBInstanceIdentifier = pDBInstanceIdentifier_
    }

-- | A value that indicates whether to skip the creation of a final DB snapshot before the DB instance is deleted. If skip is specified, no DB snapshot is created. If skip isn't specified, a DB snapshot is created before the DB instance is deleted. By default, skip isn't specified, and the DB snapshot is created. When a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when skip is specified. Specify skip when deleting a read replica.
ddbiSkipFinalSnapshot :: Lens' DeleteDBInstance (Maybe Bool)
ddbiSkipFinalSnapshot = lens _ddbiSkipFinalSnapshot (\s a -> s {_ddbiSkipFinalSnapshot = a})

-- | The @DBSnapshotIdentifier@ of the new @DBSnapshot@ created when the @SkipFinalSnapshot@ parameter is disabled.  Constraints:     * Must be 1 to 255 letters or numbers.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens.     * Can't be specified when deleting a read replica.
ddbiFinalDBSnapshotIdentifier :: Lens' DeleteDBInstance (Maybe Text)
ddbiFinalDBSnapshotIdentifier = lens _ddbiFinalDBSnapshotIdentifier (\s a -> s {_ddbiFinalDBSnapshotIdentifier = a})

-- | A value that indicates whether to remove automated backups immediately after the DB instance is deleted. This parameter isn't case-sensitive. The default is to remove automated backups immediately after the DB instance is deleted.
ddbiDeleteAutomatedBackups :: Lens' DeleteDBInstance (Maybe Bool)
ddbiDeleteAutomatedBackups = lens _ddbiDeleteAutomatedBackups (\s a -> s {_ddbiDeleteAutomatedBackups = a})

-- | The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive. Constraints:     * Must match the name of an existing DB instance.
ddbiDBInstanceIdentifier :: Lens' DeleteDBInstance Text
ddbiDBInstanceIdentifier = lens _ddbiDBInstanceIdentifier (\s a -> s {_ddbiDBInstanceIdentifier = a})

instance AWSRequest DeleteDBInstance where
  type Rs DeleteDBInstance = DeleteDBInstanceResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteDBInstanceResult"
      ( \s h x ->
          DeleteDBInstanceResponse'
            <$> (x .@? "DBInstance") <*> (pure (fromEnum s))
      )

instance Hashable DeleteDBInstance

instance NFData DeleteDBInstance

instance ToHeaders DeleteDBInstance where
  toHeaders = const mempty

instance ToPath DeleteDBInstance where
  toPath = const "/"

instance ToQuery DeleteDBInstance where
  toQuery DeleteDBInstance' {..} =
    mconcat
      [ "Action" =: ("DeleteDBInstance" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "SkipFinalSnapshot" =: _ddbiSkipFinalSnapshot,
        "FinalDBSnapshotIdentifier"
          =: _ddbiFinalDBSnapshotIdentifier,
        "DeleteAutomatedBackups"
          =: _ddbiDeleteAutomatedBackups,
        "DBInstanceIdentifier" =: _ddbiDBInstanceIdentifier
      ]

-- | /See:/ 'deleteDBInstanceResponse' smart constructor.
data DeleteDBInstanceResponse = DeleteDBInstanceResponse'
  { _ddbirrsDBInstance ::
      !(Maybe DBInstance),
    _ddbirrsResponseStatus ::
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

-- | Creates a value of 'DeleteDBInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbirrsDBInstance' - Undocumented member.
--
-- * 'ddbirrsResponseStatus' - -- | The response status code.
deleteDBInstanceResponse ::
  -- | 'ddbirrsResponseStatus'
  Int ->
  DeleteDBInstanceResponse
deleteDBInstanceResponse pResponseStatus_ =
  DeleteDBInstanceResponse'
    { _ddbirrsDBInstance =
        Nothing,
      _ddbirrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ddbirrsDBInstance :: Lens' DeleteDBInstanceResponse (Maybe DBInstance)
ddbirrsDBInstance = lens _ddbirrsDBInstance (\s a -> s {_ddbirrsDBInstance = a})

-- | -- | The response status code.
ddbirrsResponseStatus :: Lens' DeleteDBInstanceResponse Int
ddbirrsResponseStatus = lens _ddbirrsResponseStatus (\s a -> s {_ddbirrsResponseStatus = a})

instance NFData DeleteDBInstanceResponse
