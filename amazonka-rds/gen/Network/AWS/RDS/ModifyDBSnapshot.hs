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
-- Module      : Network.AWS.RDS.ModifyDBSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a manual DB snapshot with a new engine version. The snapshot can be encrypted or unencrypted, but not shared or public.
--
--
-- Amazon RDS supports upgrading DB snapshots for MySQL, Oracle, and PostgreSQL.
module Network.AWS.RDS.ModifyDBSnapshot
  ( -- * Creating a Request
    modifyDBSnapshot,
    ModifyDBSnapshot,

    -- * Request Lenses
    mdsOptionGroupName,
    mdsEngineVersion,
    mdsDBSnapshotIdentifier,

    -- * Destructuring the Response
    modifyDBSnapshotResponse,
    ModifyDBSnapshotResponse,

    -- * Response Lenses
    mdsrrsDBSnapshot,
    mdsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyDBSnapshot' smart constructor.
data ModifyDBSnapshot = ModifyDBSnapshot'
  { _mdsOptionGroupName ::
      !(Maybe Text),
    _mdsEngineVersion :: !(Maybe Text),
    _mdsDBSnapshotIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyDBSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdsOptionGroupName' - The option group to identify with the upgraded DB snapshot.  You can specify this parameter when you upgrade an Oracle DB snapshot. The same option group considerations apply when upgrading a DB snapshot as when upgrading a DB instance. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG Option group considerations> in the /Amazon RDS User Guide./
--
-- * 'mdsEngineVersion' - The engine version to upgrade the DB snapshot to.  The following are the database engines and engine versions that are available when you upgrade a DB snapshot.  __MySQL__      * @5.5.46@ (supported for 5.1 DB snapshots) __Oracle__      * @12.1.0.2.v8@ (supported for 12.1.0.1 DB snapshots)     * @11.2.0.4.v12@ (supported for 11.2.0.2 DB snapshots)     * @11.2.0.4.v11@ (supported for 11.2.0.3 DB snapshots) __PostgreSQL__  For the list of engine versions that are available for upgrading a DB snapshot, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.PostgreSQL.html#USER_UpgradeDBInstance.PostgreSQL.MajorVersion Upgrading the PostgreSQL DB Engine for Amazon RDS> .
--
-- * 'mdsDBSnapshotIdentifier' - The identifier of the DB snapshot to modify.
modifyDBSnapshot ::
  -- | 'mdsDBSnapshotIdentifier'
  Text ->
  ModifyDBSnapshot
modifyDBSnapshot pDBSnapshotIdentifier_ =
  ModifyDBSnapshot'
    { _mdsOptionGroupName = Nothing,
      _mdsEngineVersion = Nothing,
      _mdsDBSnapshotIdentifier = pDBSnapshotIdentifier_
    }

-- | The option group to identify with the upgraded DB snapshot.  You can specify this parameter when you upgrade an Oracle DB snapshot. The same option group considerations apply when upgrading a DB snapshot as when upgrading a DB instance. For more information, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG Option group considerations> in the /Amazon RDS User Guide./
mdsOptionGroupName :: Lens' ModifyDBSnapshot (Maybe Text)
mdsOptionGroupName = lens _mdsOptionGroupName (\s a -> s {_mdsOptionGroupName = a})

-- | The engine version to upgrade the DB snapshot to.  The following are the database engines and engine versions that are available when you upgrade a DB snapshot.  __MySQL__      * @5.5.46@ (supported for 5.1 DB snapshots) __Oracle__      * @12.1.0.2.v8@ (supported for 12.1.0.1 DB snapshots)     * @11.2.0.4.v12@ (supported for 11.2.0.2 DB snapshots)     * @11.2.0.4.v11@ (supported for 11.2.0.3 DB snapshots) __PostgreSQL__  For the list of engine versions that are available for upgrading a DB snapshot, see <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.PostgreSQL.html#USER_UpgradeDBInstance.PostgreSQL.MajorVersion Upgrading the PostgreSQL DB Engine for Amazon RDS> .
mdsEngineVersion :: Lens' ModifyDBSnapshot (Maybe Text)
mdsEngineVersion = lens _mdsEngineVersion (\s a -> s {_mdsEngineVersion = a})

-- | The identifier of the DB snapshot to modify.
mdsDBSnapshotIdentifier :: Lens' ModifyDBSnapshot Text
mdsDBSnapshotIdentifier = lens _mdsDBSnapshotIdentifier (\s a -> s {_mdsDBSnapshotIdentifier = a})

instance AWSRequest ModifyDBSnapshot where
  type Rs ModifyDBSnapshot = ModifyDBSnapshotResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "ModifyDBSnapshotResult"
      ( \s h x ->
          ModifyDBSnapshotResponse'
            <$> (x .@? "DBSnapshot") <*> (pure (fromEnum s))
      )

instance Hashable ModifyDBSnapshot

instance NFData ModifyDBSnapshot

instance ToHeaders ModifyDBSnapshot where
  toHeaders = const mempty

instance ToPath ModifyDBSnapshot where
  toPath = const "/"

instance ToQuery ModifyDBSnapshot where
  toQuery ModifyDBSnapshot' {..} =
    mconcat
      [ "Action" =: ("ModifyDBSnapshot" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "OptionGroupName" =: _mdsOptionGroupName,
        "EngineVersion" =: _mdsEngineVersion,
        "DBSnapshotIdentifier" =: _mdsDBSnapshotIdentifier
      ]

-- | /See:/ 'modifyDBSnapshotResponse' smart constructor.
data ModifyDBSnapshotResponse = ModifyDBSnapshotResponse'
  { _mdsrrsDBSnapshot ::
      !(Maybe DBSnapshot),
    _mdsrrsResponseStatus ::
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

-- | Creates a value of 'ModifyDBSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdsrrsDBSnapshot' - Undocumented member.
--
-- * 'mdsrrsResponseStatus' - -- | The response status code.
modifyDBSnapshotResponse ::
  -- | 'mdsrrsResponseStatus'
  Int ->
  ModifyDBSnapshotResponse
modifyDBSnapshotResponse pResponseStatus_ =
  ModifyDBSnapshotResponse'
    { _mdsrrsDBSnapshot =
        Nothing,
      _mdsrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
mdsrrsDBSnapshot :: Lens' ModifyDBSnapshotResponse (Maybe DBSnapshot)
mdsrrsDBSnapshot = lens _mdsrrsDBSnapshot (\s a -> s {_mdsrrsDBSnapshot = a})

-- | -- | The response status code.
mdsrrsResponseStatus :: Lens' ModifyDBSnapshotResponse Int
mdsrrsResponseStatus = lens _mdsrrsResponseStatus (\s a -> s {_mdsrrsResponseStatus = a})

instance NFData ModifyDBSnapshotResponse
