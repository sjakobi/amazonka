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
-- Module      : Network.AWS.RDS.DeleteDBCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted.
--
--
--
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
module Network.AWS.RDS.DeleteDBCluster
  ( -- * Creating a Request
    deleteDBCluster,
    DeleteDBCluster,

    -- * Request Lenses
    ddcSkipFinalSnapshot,
    ddcFinalDBSnapshotIdentifier,
    ddcDBClusterIdentifier,

    -- * Destructuring the Response
    deleteDBClusterResponse,
    DeleteDBClusterResponse,

    -- * Response Lenses
    ddbcrrsDBCluster,
    ddbcrrsResponseStatus,
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
-- /See:/ 'deleteDBCluster' smart constructor.
data DeleteDBCluster = DeleteDBCluster'
  { _ddcSkipFinalSnapshot ::
      !(Maybe Bool),
    _ddcFinalDBSnapshotIdentifier ::
      !(Maybe Text),
    _ddcDBClusterIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDBCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcSkipFinalSnapshot' - A value that indicates whether to skip the creation of a final DB cluster snapshot before the DB cluster is deleted. If skip is specified, no DB cluster snapshot is created. If skip isn't specified, a DB cluster snapshot is created before the DB cluster is deleted. By default, skip isn't specified, and the DB cluster snapshot is created. By default, this parameter is disabled.
--
-- * 'ddcFinalDBSnapshotIdentifier' - The DB cluster snapshot identifier of the new DB cluster snapshot created when @SkipFinalSnapshot@ is disabled.  Constraints:     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens
--
-- * 'ddcDBClusterIdentifier' - The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive. Constraints:     * Must match an existing DBClusterIdentifier.
deleteDBCluster ::
  -- | 'ddcDBClusterIdentifier'
  Text ->
  DeleteDBCluster
deleteDBCluster pDBClusterIdentifier_ =
  DeleteDBCluster'
    { _ddcSkipFinalSnapshot = Nothing,
      _ddcFinalDBSnapshotIdentifier = Nothing,
      _ddcDBClusterIdentifier = pDBClusterIdentifier_
    }

-- | A value that indicates whether to skip the creation of a final DB cluster snapshot before the DB cluster is deleted. If skip is specified, no DB cluster snapshot is created. If skip isn't specified, a DB cluster snapshot is created before the DB cluster is deleted. By default, skip isn't specified, and the DB cluster snapshot is created. By default, this parameter is disabled.
ddcSkipFinalSnapshot :: Lens' DeleteDBCluster (Maybe Bool)
ddcSkipFinalSnapshot = lens _ddcSkipFinalSnapshot (\s a -> s {_ddcSkipFinalSnapshot = a})

-- | The DB cluster snapshot identifier of the new DB cluster snapshot created when @SkipFinalSnapshot@ is disabled.  Constraints:     * Must be 1 to 255 letters, numbers, or hyphens.     * First character must be a letter     * Can't end with a hyphen or contain two consecutive hyphens
ddcFinalDBSnapshotIdentifier :: Lens' DeleteDBCluster (Maybe Text)
ddcFinalDBSnapshotIdentifier = lens _ddcFinalDBSnapshotIdentifier (\s a -> s {_ddcFinalDBSnapshotIdentifier = a})

-- | The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive. Constraints:     * Must match an existing DBClusterIdentifier.
ddcDBClusterIdentifier :: Lens' DeleteDBCluster Text
ddcDBClusterIdentifier = lens _ddcDBClusterIdentifier (\s a -> s {_ddcDBClusterIdentifier = a})

instance AWSRequest DeleteDBCluster where
  type Rs DeleteDBCluster = DeleteDBClusterResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteDBClusterResult"
      ( \s h x ->
          DeleteDBClusterResponse'
            <$> (x .@? "DBCluster") <*> (pure (fromEnum s))
      )

instance Hashable DeleteDBCluster

instance NFData DeleteDBCluster

instance ToHeaders DeleteDBCluster where
  toHeaders = const mempty

instance ToPath DeleteDBCluster where
  toPath = const "/"

instance ToQuery DeleteDBCluster where
  toQuery DeleteDBCluster' {..} =
    mconcat
      [ "Action" =: ("DeleteDBCluster" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "SkipFinalSnapshot" =: _ddcSkipFinalSnapshot,
        "FinalDBSnapshotIdentifier"
          =: _ddcFinalDBSnapshotIdentifier,
        "DBClusterIdentifier" =: _ddcDBClusterIdentifier
      ]

-- | /See:/ 'deleteDBClusterResponse' smart constructor.
data DeleteDBClusterResponse = DeleteDBClusterResponse'
  { _ddbcrrsDBCluster ::
      !(Maybe DBCluster),
    _ddbcrrsResponseStatus ::
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

-- | Creates a value of 'DeleteDBClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbcrrsDBCluster' - Undocumented member.
--
-- * 'ddbcrrsResponseStatus' - -- | The response status code.
deleteDBClusterResponse ::
  -- | 'ddbcrrsResponseStatus'
  Int ->
  DeleteDBClusterResponse
deleteDBClusterResponse pResponseStatus_ =
  DeleteDBClusterResponse'
    { _ddbcrrsDBCluster =
        Nothing,
      _ddbcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ddbcrrsDBCluster :: Lens' DeleteDBClusterResponse (Maybe DBCluster)
ddbcrrsDBCluster = lens _ddbcrrsDBCluster (\s a -> s {_ddbcrrsDBCluster = a})

-- | -- | The response status code.
ddbcrrsResponseStatus :: Lens' DeleteDBClusterResponse Int
ddbcrrsResponseStatus = lens _ddbcrrsResponseStatus (\s a -> s {_ddbcrrsResponseStatus = a})

instance NFData DeleteDBClusterResponse
