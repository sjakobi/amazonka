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
-- Module      : Network.AWS.RDS.DeleteDBClusterSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.
--
--
-- For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
module Network.AWS.RDS.DeleteDBClusterSnapshot
  ( -- * Creating a Request
    deleteDBClusterSnapshot,
    DeleteDBClusterSnapshot,

    -- * Request Lenses
    ddbcsDBClusterSnapshotIdentifier,

    -- * Destructuring the Response
    deleteDBClusterSnapshotResponse,
    DeleteDBClusterSnapshotResponse,

    -- * Response Lenses
    ddbcsrrsDBClusterSnapshot,
    ddbcsrrsResponseStatus,
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
-- /See:/ 'deleteDBClusterSnapshot' smart constructor.
newtype DeleteDBClusterSnapshot = DeleteDBClusterSnapshot'
  { _ddbcsDBClusterSnapshotIdentifier ::
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

-- | Creates a value of 'DeleteDBClusterSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbcsDBClusterSnapshotIdentifier' - The identifier of the DB cluster snapshot to delete. Constraints: Must be the name of an existing DB cluster snapshot in the @available@ state.
deleteDBClusterSnapshot ::
  -- | 'ddbcsDBClusterSnapshotIdentifier'
  Text ->
  DeleteDBClusterSnapshot
deleteDBClusterSnapshot pDBClusterSnapshotIdentifier_ =
  DeleteDBClusterSnapshot'
    { _ddbcsDBClusterSnapshotIdentifier =
        pDBClusterSnapshotIdentifier_
    }

-- | The identifier of the DB cluster snapshot to delete. Constraints: Must be the name of an existing DB cluster snapshot in the @available@ state.
ddbcsDBClusterSnapshotIdentifier :: Lens' DeleteDBClusterSnapshot Text
ddbcsDBClusterSnapshotIdentifier = lens _ddbcsDBClusterSnapshotIdentifier (\s a -> s {_ddbcsDBClusterSnapshotIdentifier = a})

instance AWSRequest DeleteDBClusterSnapshot where
  type
    Rs DeleteDBClusterSnapshot =
      DeleteDBClusterSnapshotResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "DeleteDBClusterSnapshotResult"
      ( \s h x ->
          DeleteDBClusterSnapshotResponse'
            <$> (x .@? "DBClusterSnapshot") <*> (pure (fromEnum s))
      )

instance Hashable DeleteDBClusterSnapshot

instance NFData DeleteDBClusterSnapshot

instance ToHeaders DeleteDBClusterSnapshot where
  toHeaders = const mempty

instance ToPath DeleteDBClusterSnapshot where
  toPath = const "/"

instance ToQuery DeleteDBClusterSnapshot where
  toQuery DeleteDBClusterSnapshot' {..} =
    mconcat
      [ "Action"
          =: ("DeleteDBClusterSnapshot" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBClusterSnapshotIdentifier"
          =: _ddbcsDBClusterSnapshotIdentifier
      ]

-- | /See:/ 'deleteDBClusterSnapshotResponse' smart constructor.
data DeleteDBClusterSnapshotResponse = DeleteDBClusterSnapshotResponse'
  { _ddbcsrrsDBClusterSnapshot ::
      !( Maybe
           DBClusterSnapshot
       ),
    _ddbcsrrsResponseStatus ::
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

-- | Creates a value of 'DeleteDBClusterSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddbcsrrsDBClusterSnapshot' - Undocumented member.
--
-- * 'ddbcsrrsResponseStatus' - -- | The response status code.
deleteDBClusterSnapshotResponse ::
  -- | 'ddbcsrrsResponseStatus'
  Int ->
  DeleteDBClusterSnapshotResponse
deleteDBClusterSnapshotResponse pResponseStatus_ =
  DeleteDBClusterSnapshotResponse'
    { _ddbcsrrsDBClusterSnapshot =
        Nothing,
      _ddbcsrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ddbcsrrsDBClusterSnapshot :: Lens' DeleteDBClusterSnapshotResponse (Maybe DBClusterSnapshot)
ddbcsrrsDBClusterSnapshot = lens _ddbcsrrsDBClusterSnapshot (\s a -> s {_ddbcsrrsDBClusterSnapshot = a})

-- | -- | The response status code.
ddbcsrrsResponseStatus :: Lens' DeleteDBClusterSnapshotResponse Int
ddbcsrrsResponseStatus = lens _ddbcsrrsResponseStatus (\s a -> s {_ddbcsrrsResponseStatus = a})

instance NFData DeleteDBClusterSnapshotResponse
