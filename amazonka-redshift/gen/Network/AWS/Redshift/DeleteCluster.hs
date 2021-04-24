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
-- Module      : Network.AWS.Redshift.DeleteCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a previously provisioned cluster without its final snapshot being created. A successful response from the web service indicates that the request was received correctly. Use 'DescribeClusters' to monitor the status of the deletion. The delete operation cannot be canceled or reverted once submitted. For more information about managing clusters, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html Amazon Redshift Clusters> in the /Amazon Redshift Cluster Management Guide/ .
--
--
-- If you want to shut down the cluster and retain it for future use, set /SkipFinalClusterSnapshot/ to @false@ and specify a name for /FinalClusterSnapshotIdentifier/ . You can later restore this snapshot to resume using the cluster. If a final cluster snapshot is requested, the status of the cluster will be "final-snapshot" while the snapshot is being taken, then it's "deleting" once Amazon Redshift begins deleting the cluster.
--
-- For more information about managing clusters, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html Amazon Redshift Clusters> in the /Amazon Redshift Cluster Management Guide/ .
module Network.AWS.Redshift.DeleteCluster
  ( -- * Creating a Request
    deleteCluster,
    DeleteCluster,

    -- * Request Lenses
    dFinalClusterSnapshotIdentifier,
    dSkipFinalClusterSnapshot,
    dFinalClusterSnapshotRetentionPeriod,
    dClusterIdentifier,

    -- * Destructuring the Response
    deleteClusterResponse,
    DeleteClusterResponse,

    -- * Response Lenses
    delrsCluster,
    delrsResponseStatus,
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
-- /See:/ 'deleteCluster' smart constructor.
data DeleteCluster = DeleteCluster'
  { _dFinalClusterSnapshotIdentifier ::
      !(Maybe Text),
    _dSkipFinalClusterSnapshot :: !(Maybe Bool),
    _dFinalClusterSnapshotRetentionPeriod ::
      !(Maybe Int),
    _dClusterIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dFinalClusterSnapshotIdentifier' - The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, /SkipFinalClusterSnapshot/ must be @false@ .  Constraints:     * Must be 1 to 255 alphanumeric characters.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
--
-- * 'dSkipFinalClusterSnapshot' - Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If @true@ , a final cluster snapshot is not created. If @false@ , a final cluster snapshot is created before the cluster is deleted.  Default: @false@
--
-- * 'dFinalClusterSnapshotRetentionPeriod' - The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. The value must be either -1 or an integer between 1 and 3,653. The default value is -1.
--
-- * 'dClusterIdentifier' - The identifier of the cluster to be deleted. Constraints:     * Must contain lowercase characters.     * Must contain from 1 to 63 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
deleteCluster ::
  -- | 'dClusterIdentifier'
  Text ->
  DeleteCluster
deleteCluster pClusterIdentifier_ =
  DeleteCluster'
    { _dFinalClusterSnapshotIdentifier =
        Nothing,
      _dSkipFinalClusterSnapshot = Nothing,
      _dFinalClusterSnapshotRetentionPeriod = Nothing,
      _dClusterIdentifier = pClusterIdentifier_
    }

-- | The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, /SkipFinalClusterSnapshot/ must be @false@ .  Constraints:     * Must be 1 to 255 alphanumeric characters.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
dFinalClusterSnapshotIdentifier :: Lens' DeleteCluster (Maybe Text)
dFinalClusterSnapshotIdentifier = lens _dFinalClusterSnapshotIdentifier (\s a -> s {_dFinalClusterSnapshotIdentifier = a})

-- | Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If @true@ , a final cluster snapshot is not created. If @false@ , a final cluster snapshot is created before the cluster is deleted.  Default: @false@
dSkipFinalClusterSnapshot :: Lens' DeleteCluster (Maybe Bool)
dSkipFinalClusterSnapshot = lens _dSkipFinalClusterSnapshot (\s a -> s {_dSkipFinalClusterSnapshot = a})

-- | The number of days that a manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. The value must be either -1 or an integer between 1 and 3,653. The default value is -1.
dFinalClusterSnapshotRetentionPeriod :: Lens' DeleteCluster (Maybe Int)
dFinalClusterSnapshotRetentionPeriod = lens _dFinalClusterSnapshotRetentionPeriod (\s a -> s {_dFinalClusterSnapshotRetentionPeriod = a})

-- | The identifier of the cluster to be deleted. Constraints:     * Must contain lowercase characters.     * Must contain from 1 to 63 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.
dClusterIdentifier :: Lens' DeleteCluster Text
dClusterIdentifier = lens _dClusterIdentifier (\s a -> s {_dClusterIdentifier = a})

instance AWSRequest DeleteCluster where
  type Rs DeleteCluster = DeleteClusterResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DeleteClusterResult"
      ( \s h x ->
          DeleteClusterResponse'
            <$> (x .@? "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable DeleteCluster

instance NFData DeleteCluster

instance ToHeaders DeleteCluster where
  toHeaders = const mempty

instance ToPath DeleteCluster where
  toPath = const "/"

instance ToQuery DeleteCluster where
  toQuery DeleteCluster' {..} =
    mconcat
      [ "Action" =: ("DeleteCluster" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "FinalClusterSnapshotIdentifier"
          =: _dFinalClusterSnapshotIdentifier,
        "SkipFinalClusterSnapshot"
          =: _dSkipFinalClusterSnapshot,
        "FinalClusterSnapshotRetentionPeriod"
          =: _dFinalClusterSnapshotRetentionPeriod,
        "ClusterIdentifier" =: _dClusterIdentifier
      ]

-- | /See:/ 'deleteClusterResponse' smart constructor.
data DeleteClusterResponse = DeleteClusterResponse'
  { _delrsCluster ::
      !(Maybe Cluster),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsCluster' - Undocumented member.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteClusterResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteClusterResponse
deleteClusterResponse pResponseStatus_ =
  DeleteClusterResponse'
    { _delrsCluster = Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
delrsCluster :: Lens' DeleteClusterResponse (Maybe Cluster)
delrsCluster = lens _delrsCluster (\s a -> s {_delrsCluster = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteClusterResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteClusterResponse
