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
-- Module      : Network.AWS.RDS.CreateDBClusterSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot of a DB cluster. For more information on Amazon Aurora, see <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?> in the /Amazon Aurora User Guide./
module Network.AWS.RDS.CreateDBClusterSnapshot
  ( -- * Creating a Request
    createDBClusterSnapshot,
    CreateDBClusterSnapshot,

    -- * Request Lenses
    cdcsTags,
    cdcsDBClusterSnapshotIdentifier,
    cdcsDBClusterIdentifier,

    -- * Destructuring the Response
    createDBClusterSnapshotResponse,
    CreateDBClusterSnapshotResponse,

    -- * Response Lenses
    cdcsrrsDBClusterSnapshot,
    cdcsrrsResponseStatus,
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
-- /See:/ 'createDBClusterSnapshot' smart constructor.
data CreateDBClusterSnapshot = CreateDBClusterSnapshot'
  { _cdcsTags ::
      !(Maybe [Tag]),
    _cdcsDBClusterSnapshotIdentifier ::
      !Text,
    _cdcsDBClusterIdentifier ::
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

-- | Creates a value of 'CreateDBClusterSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcsTags' - The tags to be assigned to the DB cluster snapshot.
--
-- * 'cdcsDBClusterSnapshotIdentifier' - The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string. Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens. Example: @my-cluster1-snapshot1@
--
-- * 'cdcsDBClusterIdentifier' - The identifier of the DB cluster to create a snapshot for. This parameter isn't case-sensitive. Constraints:     * Must match the identifier of an existing DBCluster. Example: @my-cluster1@
createDBClusterSnapshot ::
  -- | 'cdcsDBClusterSnapshotIdentifier'
  Text ->
  -- | 'cdcsDBClusterIdentifier'
  Text ->
  CreateDBClusterSnapshot
createDBClusterSnapshot
  pDBClusterSnapshotIdentifier_
  pDBClusterIdentifier_ =
    CreateDBClusterSnapshot'
      { _cdcsTags = Nothing,
        _cdcsDBClusterSnapshotIdentifier =
          pDBClusterSnapshotIdentifier_,
        _cdcsDBClusterIdentifier = pDBClusterIdentifier_
      }

-- | The tags to be assigned to the DB cluster snapshot.
cdcsTags :: Lens' CreateDBClusterSnapshot [Tag]
cdcsTags = lens _cdcsTags (\s a -> s {_cdcsTags = a}) . _Default . _Coerce

-- | The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string. Constraints:     * Must contain from 1 to 63 letters, numbers, or hyphens.     * First character must be a letter.     * Can't end with a hyphen or contain two consecutive hyphens. Example: @my-cluster1-snapshot1@
cdcsDBClusterSnapshotIdentifier :: Lens' CreateDBClusterSnapshot Text
cdcsDBClusterSnapshotIdentifier = lens _cdcsDBClusterSnapshotIdentifier (\s a -> s {_cdcsDBClusterSnapshotIdentifier = a})

-- | The identifier of the DB cluster to create a snapshot for. This parameter isn't case-sensitive. Constraints:     * Must match the identifier of an existing DBCluster. Example: @my-cluster1@
cdcsDBClusterIdentifier :: Lens' CreateDBClusterSnapshot Text
cdcsDBClusterIdentifier = lens _cdcsDBClusterIdentifier (\s a -> s {_cdcsDBClusterIdentifier = a})

instance AWSRequest CreateDBClusterSnapshot where
  type
    Rs CreateDBClusterSnapshot =
      CreateDBClusterSnapshotResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "CreateDBClusterSnapshotResult"
      ( \s h x ->
          CreateDBClusterSnapshotResponse'
            <$> (x .@? "DBClusterSnapshot") <*> (pure (fromEnum s))
      )

instance Hashable CreateDBClusterSnapshot

instance NFData CreateDBClusterSnapshot

instance ToHeaders CreateDBClusterSnapshot where
  toHeaders = const mempty

instance ToPath CreateDBClusterSnapshot where
  toPath = const "/"

instance ToQuery CreateDBClusterSnapshot where
  toQuery CreateDBClusterSnapshot' {..} =
    mconcat
      [ "Action"
          =: ("CreateDBClusterSnapshot" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "Tags" =: toQuery (toQueryList "Tag" <$> _cdcsTags),
        "DBClusterSnapshotIdentifier"
          =: _cdcsDBClusterSnapshotIdentifier,
        "DBClusterIdentifier" =: _cdcsDBClusterIdentifier
      ]

-- | /See:/ 'createDBClusterSnapshotResponse' smart constructor.
data CreateDBClusterSnapshotResponse = CreateDBClusterSnapshotResponse'
  { _cdcsrrsDBClusterSnapshot ::
      !( Maybe
           DBClusterSnapshot
       ),
    _cdcsrrsResponseStatus ::
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

-- | Creates a value of 'CreateDBClusterSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdcsrrsDBClusterSnapshot' - Undocumented member.
--
-- * 'cdcsrrsResponseStatus' - -- | The response status code.
createDBClusterSnapshotResponse ::
  -- | 'cdcsrrsResponseStatus'
  Int ->
  CreateDBClusterSnapshotResponse
createDBClusterSnapshotResponse pResponseStatus_ =
  CreateDBClusterSnapshotResponse'
    { _cdcsrrsDBClusterSnapshot =
        Nothing,
      _cdcsrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
cdcsrrsDBClusterSnapshot :: Lens' CreateDBClusterSnapshotResponse (Maybe DBClusterSnapshot)
cdcsrrsDBClusterSnapshot = lens _cdcsrrsDBClusterSnapshot (\s a -> s {_cdcsrrsDBClusterSnapshot = a})

-- | -- | The response status code.
cdcsrrsResponseStatus :: Lens' CreateDBClusterSnapshotResponse Int
cdcsrrsResponseStatus = lens _cdcsrrsResponseStatus (\s a -> s {_cdcsrrsResponseStatus = a})

instance NFData CreateDBClusterSnapshotResponse
