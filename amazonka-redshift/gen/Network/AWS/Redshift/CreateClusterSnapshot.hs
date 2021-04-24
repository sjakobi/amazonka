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
-- Module      : Network.AWS.Redshift.CreateClusterSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a manual snapshot of the specified cluster. The cluster must be in the @available@ state.
--
--
-- For more information about working with snapshots, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html Amazon Redshift Snapshots> in the /Amazon Redshift Cluster Management Guide/ .
module Network.AWS.Redshift.CreateClusterSnapshot
  ( -- * Creating a Request
    createClusterSnapshot,
    CreateClusterSnapshot,

    -- * Request Lenses
    creManualSnapshotRetentionPeriod,
    creTags,
    creSnapshotIdentifier,
    creClusterIdentifier,

    -- * Destructuring the Response
    createClusterSnapshotResponse,
    CreateClusterSnapshotResponse,

    -- * Response Lenses
    ccsrrsSnapshot,
    ccsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'createClusterSnapshot' smart constructor.
data CreateClusterSnapshot = CreateClusterSnapshot'
  { _creManualSnapshotRetentionPeriod ::
      !(Maybe Int),
    _creTags :: !(Maybe [Tag]),
    _creSnapshotIdentifier ::
      !Text,
    _creClusterIdentifier ::
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

-- | Creates a value of 'CreateClusterSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creManualSnapshotRetentionPeriod' - The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely.  The value must be either -1 or an integer between 1 and 3,653. The default value is -1.
--
-- * 'creTags' - A list of tag instances.
--
-- * 'creSnapshotIdentifier' - A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the AWS account. Constraints:     * Cannot be null, empty, or blank     * Must contain from 1 to 255 alphanumeric characters or hyphens     * First character must be a letter     * Cannot end with a hyphen or contain two consecutive hyphens Example: @my-snapshot-id@
--
-- * 'creClusterIdentifier' - The cluster identifier for which you want a snapshot.
createClusterSnapshot ::
  -- | 'creSnapshotIdentifier'
  Text ->
  -- | 'creClusterIdentifier'
  Text ->
  CreateClusterSnapshot
createClusterSnapshot
  pSnapshotIdentifier_
  pClusterIdentifier_ =
    CreateClusterSnapshot'
      { _creManualSnapshotRetentionPeriod =
          Nothing,
        _creTags = Nothing,
        _creSnapshotIdentifier = pSnapshotIdentifier_,
        _creClusterIdentifier = pClusterIdentifier_
      }

-- | The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely.  The value must be either -1 or an integer between 1 and 3,653. The default value is -1.
creManualSnapshotRetentionPeriod :: Lens' CreateClusterSnapshot (Maybe Int)
creManualSnapshotRetentionPeriod = lens _creManualSnapshotRetentionPeriod (\s a -> s {_creManualSnapshotRetentionPeriod = a})

-- | A list of tag instances.
creTags :: Lens' CreateClusterSnapshot [Tag]
creTags = lens _creTags (\s a -> s {_creTags = a}) . _Default . _Coerce

-- | A unique identifier for the snapshot that you are requesting. This identifier must be unique for all snapshots within the AWS account. Constraints:     * Cannot be null, empty, or blank     * Must contain from 1 to 255 alphanumeric characters or hyphens     * First character must be a letter     * Cannot end with a hyphen or contain two consecutive hyphens Example: @my-snapshot-id@
creSnapshotIdentifier :: Lens' CreateClusterSnapshot Text
creSnapshotIdentifier = lens _creSnapshotIdentifier (\s a -> s {_creSnapshotIdentifier = a})

-- | The cluster identifier for which you want a snapshot.
creClusterIdentifier :: Lens' CreateClusterSnapshot Text
creClusterIdentifier = lens _creClusterIdentifier (\s a -> s {_creClusterIdentifier = a})

instance AWSRequest CreateClusterSnapshot where
  type
    Rs CreateClusterSnapshot =
      CreateClusterSnapshotResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "CreateClusterSnapshotResult"
      ( \s h x ->
          CreateClusterSnapshotResponse'
            <$> (x .@? "Snapshot") <*> (pure (fromEnum s))
      )

instance Hashable CreateClusterSnapshot

instance NFData CreateClusterSnapshot

instance ToHeaders CreateClusterSnapshot where
  toHeaders = const mempty

instance ToPath CreateClusterSnapshot where
  toPath = const "/"

instance ToQuery CreateClusterSnapshot where
  toQuery CreateClusterSnapshot' {..} =
    mconcat
      [ "Action" =: ("CreateClusterSnapshot" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "ManualSnapshotRetentionPeriod"
          =: _creManualSnapshotRetentionPeriod,
        "Tags" =: toQuery (toQueryList "Tag" <$> _creTags),
        "SnapshotIdentifier" =: _creSnapshotIdentifier,
        "ClusterIdentifier" =: _creClusterIdentifier
      ]

-- | /See:/ 'createClusterSnapshotResponse' smart constructor.
data CreateClusterSnapshotResponse = CreateClusterSnapshotResponse'
  { _ccsrrsSnapshot ::
      !( Maybe
           Snapshot
       ),
    _ccsrrsResponseStatus ::
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

-- | Creates a value of 'CreateClusterSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccsrrsSnapshot' - Undocumented member.
--
-- * 'ccsrrsResponseStatus' - -- | The response status code.
createClusterSnapshotResponse ::
  -- | 'ccsrrsResponseStatus'
  Int ->
  CreateClusterSnapshotResponse
createClusterSnapshotResponse pResponseStatus_ =
  CreateClusterSnapshotResponse'
    { _ccsrrsSnapshot =
        Nothing,
      _ccsrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
ccsrrsSnapshot :: Lens' CreateClusterSnapshotResponse (Maybe Snapshot)
ccsrrsSnapshot = lens _ccsrrsSnapshot (\s a -> s {_ccsrrsSnapshot = a})

-- | -- | The response status code.
ccsrrsResponseStatus :: Lens' CreateClusterSnapshotResponse Int
ccsrrsResponseStatus = lens _ccsrrsResponseStatus (\s a -> s {_ccsrrsResponseStatus = a})

instance NFData CreateClusterSnapshotResponse
