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
-- Module      : Network.AWS.Redshift.ModifyClusterSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the settings for a snapshot.
--
--
-- This exanmple modifies the manual retention period setting for a cluster snapshot.
module Network.AWS.Redshift.ModifyClusterSnapshot
  ( -- * Creating a Request
    modifyClusterSnapshot,
    ModifyClusterSnapshot,

    -- * Request Lenses
    mcsForce,
    mcsManualSnapshotRetentionPeriod,
    mcsSnapshotIdentifier,

    -- * Destructuring the Response
    modifyClusterSnapshotResponse,
    ModifyClusterSnapshotResponse,

    -- * Response Lenses
    mcsrrsSnapshot,
    mcsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyClusterSnapshot' smart constructor.
data ModifyClusterSnapshot = ModifyClusterSnapshot'
  { _mcsForce ::
      !(Maybe Bool),
    _mcsManualSnapshotRetentionPeriod ::
      !(Maybe Int),
    _mcsSnapshotIdentifier ::
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

-- | Creates a value of 'ModifyClusterSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcsForce' - A Boolean option to override an exception if the retention period has already passed.
--
-- * 'mcsManualSnapshotRetentionPeriod' - The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. If the manual snapshot falls outside of the new retention period, you can specify the force option to immediately delete the snapshot. The value must be either -1 or an integer between 1 and 3,653.
--
-- * 'mcsSnapshotIdentifier' - The identifier of the snapshot whose setting you want to modify.
modifyClusterSnapshot ::
  -- | 'mcsSnapshotIdentifier'
  Text ->
  ModifyClusterSnapshot
modifyClusterSnapshot pSnapshotIdentifier_ =
  ModifyClusterSnapshot'
    { _mcsForce = Nothing,
      _mcsManualSnapshotRetentionPeriod = Nothing,
      _mcsSnapshotIdentifier = pSnapshotIdentifier_
    }

-- | A Boolean option to override an exception if the retention period has already passed.
mcsForce :: Lens' ModifyClusterSnapshot (Maybe Bool)
mcsForce = lens _mcsForce (\s a -> s {_mcsForce = a})

-- | The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. If the manual snapshot falls outside of the new retention period, you can specify the force option to immediately delete the snapshot. The value must be either -1 or an integer between 1 and 3,653.
mcsManualSnapshotRetentionPeriod :: Lens' ModifyClusterSnapshot (Maybe Int)
mcsManualSnapshotRetentionPeriod = lens _mcsManualSnapshotRetentionPeriod (\s a -> s {_mcsManualSnapshotRetentionPeriod = a})

-- | The identifier of the snapshot whose setting you want to modify.
mcsSnapshotIdentifier :: Lens' ModifyClusterSnapshot Text
mcsSnapshotIdentifier = lens _mcsSnapshotIdentifier (\s a -> s {_mcsSnapshotIdentifier = a})

instance AWSRequest ModifyClusterSnapshot where
  type
    Rs ModifyClusterSnapshot =
      ModifyClusterSnapshotResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "ModifyClusterSnapshotResult"
      ( \s h x ->
          ModifyClusterSnapshotResponse'
            <$> (x .@? "Snapshot") <*> (pure (fromEnum s))
      )

instance Hashable ModifyClusterSnapshot

instance NFData ModifyClusterSnapshot

instance ToHeaders ModifyClusterSnapshot where
  toHeaders = const mempty

instance ToPath ModifyClusterSnapshot where
  toPath = const "/"

instance ToQuery ModifyClusterSnapshot where
  toQuery ModifyClusterSnapshot' {..} =
    mconcat
      [ "Action" =: ("ModifyClusterSnapshot" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "Force" =: _mcsForce,
        "ManualSnapshotRetentionPeriod"
          =: _mcsManualSnapshotRetentionPeriod,
        "SnapshotIdentifier" =: _mcsSnapshotIdentifier
      ]

-- | /See:/ 'modifyClusterSnapshotResponse' smart constructor.
data ModifyClusterSnapshotResponse = ModifyClusterSnapshotResponse'
  { _mcsrrsSnapshot ::
      !( Maybe
           Snapshot
       ),
    _mcsrrsResponseStatus ::
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

-- | Creates a value of 'ModifyClusterSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcsrrsSnapshot' - Undocumented member.
--
-- * 'mcsrrsResponseStatus' - -- | The response status code.
modifyClusterSnapshotResponse ::
  -- | 'mcsrrsResponseStatus'
  Int ->
  ModifyClusterSnapshotResponse
modifyClusterSnapshotResponse pResponseStatus_ =
  ModifyClusterSnapshotResponse'
    { _mcsrrsSnapshot =
        Nothing,
      _mcsrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
mcsrrsSnapshot :: Lens' ModifyClusterSnapshotResponse (Maybe Snapshot)
mcsrrsSnapshot = lens _mcsrrsSnapshot (\s a -> s {_mcsrrsSnapshot = a})

-- | -- | The response status code.
mcsrrsResponseStatus :: Lens' ModifyClusterSnapshotResponse Int
mcsrrsResponseStatus = lens _mcsrrsResponseStatus (\s a -> s {_mcsrrsResponseStatus = a})

instance NFData ModifyClusterSnapshotResponse
