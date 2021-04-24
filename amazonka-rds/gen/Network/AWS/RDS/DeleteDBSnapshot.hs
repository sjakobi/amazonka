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
-- Module      : Network.AWS.RDS.DeleteDBSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DB snapshot. If the snapshot is being copied, the copy operation is terminated.
module Network.AWS.RDS.DeleteDBSnapshot
  ( -- * Creating a Request
    deleteDBSnapshot,
    DeleteDBSnapshot,

    -- * Request Lenses
    ddbsDBSnapshotIdentifier,

    -- * Destructuring the Response
    deleteDBSnapshotResponse,
    DeleteDBSnapshotResponse,

    -- * Response Lenses
    ddbsrrsDBSnapshot,
    ddbsrrsResponseStatus,
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
-- /See:/ 'deleteDBSnapshot' smart constructor.
newtype DeleteDBSnapshot = DeleteDBSnapshot'
  { _ddbsDBSnapshotIdentifier ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteDBSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbsDBSnapshotIdentifier' - The DB snapshot identifier. Constraints: Must be the name of an existing DB snapshot in the @available@ state.
deleteDBSnapshot ::
  -- | 'ddbsDBSnapshotIdentifier'
  Text ->
  DeleteDBSnapshot
deleteDBSnapshot pDBSnapshotIdentifier_ =
  DeleteDBSnapshot'
    { _ddbsDBSnapshotIdentifier =
        pDBSnapshotIdentifier_
    }

-- | The DB snapshot identifier. Constraints: Must be the name of an existing DB snapshot in the @available@ state.
ddbsDBSnapshotIdentifier :: Lens' DeleteDBSnapshot Text
ddbsDBSnapshotIdentifier = lens _ddbsDBSnapshotIdentifier (\s a -> s {_ddbsDBSnapshotIdentifier = a})

instance AWSRequest DeleteDBSnapshot where
  type Rs DeleteDBSnapshot = DeleteDBSnapshotResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteDBSnapshotResult"
      ( \s h x ->
          DeleteDBSnapshotResponse'
            <$> (x .@? "DBSnapshot") <*> (pure (fromEnum s))
      )

instance Hashable DeleteDBSnapshot

instance NFData DeleteDBSnapshot

instance ToHeaders DeleteDBSnapshot where
  toHeaders = const mempty

instance ToPath DeleteDBSnapshot where
  toPath = const "/"

instance ToQuery DeleteDBSnapshot where
  toQuery DeleteDBSnapshot' {..} =
    mconcat
      [ "Action" =: ("DeleteDBSnapshot" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBSnapshotIdentifier" =: _ddbsDBSnapshotIdentifier
      ]

-- | /See:/ 'deleteDBSnapshotResponse' smart constructor.
data DeleteDBSnapshotResponse = DeleteDBSnapshotResponse'
  { _ddbsrrsDBSnapshot ::
      !(Maybe DBSnapshot),
    _ddbsrrsResponseStatus ::
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

-- | Creates a value of 'DeleteDBSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbsrrsDBSnapshot' - Undocumented member.
--
-- * 'ddbsrrsResponseStatus' - -- | The response status code.
deleteDBSnapshotResponse ::
  -- | 'ddbsrrsResponseStatus'
  Int ->
  DeleteDBSnapshotResponse
deleteDBSnapshotResponse pResponseStatus_ =
  DeleteDBSnapshotResponse'
    { _ddbsrrsDBSnapshot =
        Nothing,
      _ddbsrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ddbsrrsDBSnapshot :: Lens' DeleteDBSnapshotResponse (Maybe DBSnapshot)
ddbsrrsDBSnapshot = lens _ddbsrrsDBSnapshot (\s a -> s {_ddbsrrsDBSnapshot = a})

-- | -- | The response status code.
ddbsrrsResponseStatus :: Lens' DeleteDBSnapshotResponse Int
ddbsrrsResponseStatus = lens _ddbsrrsResponseStatus (\s a -> s {_ddbsrrsResponseStatus = a})

instance NFData DeleteDBSnapshotResponse
