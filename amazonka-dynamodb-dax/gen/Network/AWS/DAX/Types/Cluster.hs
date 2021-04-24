{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.Cluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.Cluster where

import Network.AWS.DAX.Types.Endpoint
import Network.AWS.DAX.Types.Node
import Network.AWS.DAX.Types.NotificationConfiguration
import Network.AWS.DAX.Types.ParameterGroupStatus
import Network.AWS.DAX.Types.SSEDescription
import Network.AWS.DAX.Types.SecurityGroupMembership
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains all of the attributes of a specific DAX cluster.
--
--
--
-- /See:/ 'cluster' smart constructor.
data Cluster = Cluster'
  { _cClusterARN ::
      !(Maybe Text),
    _cSubnetGroup :: !(Maybe Text),
    _cIAMRoleARN :: !(Maybe Text),
    _cStatus :: !(Maybe Text),
    _cTotalNodes :: !(Maybe Int),
    _cParameterGroup :: !(Maybe ParameterGroupStatus),
    _cNodes :: !(Maybe [Node]),
    _cNotificationConfiguration ::
      !(Maybe NotificationConfiguration),
    _cSecurityGroups ::
      !(Maybe [SecurityGroupMembership]),
    _cActiveNodes :: !(Maybe Int),
    _cPreferredMaintenanceWindow :: !(Maybe Text),
    _cDescription :: !(Maybe Text),
    _cSSEDescription :: !(Maybe SSEDescription),
    _cClusterDiscoveryEndpoint :: !(Maybe Endpoint),
    _cNodeIdsToRemove :: !(Maybe [Text]),
    _cNodeType :: !(Maybe Text),
    _cClusterName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Cluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cClusterARN' - The Amazon Resource Name (ARN) that uniquely identifies the cluster.
--
-- * 'cSubnetGroup' - The subnet group where the DAX cluster is running.
--
-- * 'cIAMRoleARN' - A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.
--
-- * 'cStatus' - The current status of the cluster.
--
-- * 'cTotalNodes' - The total number of nodes in the cluster.
--
-- * 'cParameterGroup' - The parameter group being used by nodes in the cluster.
--
-- * 'cNodes' - A list of nodes that are currently in the cluster.
--
-- * 'cNotificationConfiguration' - Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).
--
-- * 'cSecurityGroups' - A list of security groups, and the status of each, for the nodes in the cluster.
--
-- * 'cActiveNodes' - The number of nodes in the cluster that are active (i.e., capable of serving requests).
--
-- * 'cPreferredMaintenanceWindow' - A range of time when maintenance of DAX cluster software will be performed. For example: @sun:01:00-sun:09:00@ . Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.
--
-- * 'cDescription' - The description of the cluster.
--
-- * 'cSSEDescription' - The description of the server-side encryption status on the specified DAX cluster.
--
-- * 'cClusterDiscoveryEndpoint' - The configuration endpoint for this DAX cluster, consisting of a DNS name and a port number. Client applications can specify this endpoint, rather than an individual node endpoint, and allow the DAX client software to intelligently route requests and responses to nodes in the DAX cluster.
--
-- * 'cNodeIdsToRemove' - A list of nodes to be removed from the cluster.
--
-- * 'cNodeType' - The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)
--
-- * 'cClusterName' - The name of the DAX cluster.
cluster ::
  Cluster
cluster =
  Cluster'
    { _cClusterARN = Nothing,
      _cSubnetGroup = Nothing,
      _cIAMRoleARN = Nothing,
      _cStatus = Nothing,
      _cTotalNodes = Nothing,
      _cParameterGroup = Nothing,
      _cNodes = Nothing,
      _cNotificationConfiguration = Nothing,
      _cSecurityGroups = Nothing,
      _cActiveNodes = Nothing,
      _cPreferredMaintenanceWindow = Nothing,
      _cDescription = Nothing,
      _cSSEDescription = Nothing,
      _cClusterDiscoveryEndpoint = Nothing,
      _cNodeIdsToRemove = Nothing,
      _cNodeType = Nothing,
      _cClusterName = Nothing
    }

-- | The Amazon Resource Name (ARN) that uniquely identifies the cluster.
cClusterARN :: Lens' Cluster (Maybe Text)
cClusterARN = lens _cClusterARN (\s a -> s {_cClusterARN = a})

-- | The subnet group where the DAX cluster is running.
cSubnetGroup :: Lens' Cluster (Maybe Text)
cSubnetGroup = lens _cSubnetGroup (\s a -> s {_cSubnetGroup = a})

-- | A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.
cIAMRoleARN :: Lens' Cluster (Maybe Text)
cIAMRoleARN = lens _cIAMRoleARN (\s a -> s {_cIAMRoleARN = a})

-- | The current status of the cluster.
cStatus :: Lens' Cluster (Maybe Text)
cStatus = lens _cStatus (\s a -> s {_cStatus = a})

-- | The total number of nodes in the cluster.
cTotalNodes :: Lens' Cluster (Maybe Int)
cTotalNodes = lens _cTotalNodes (\s a -> s {_cTotalNodes = a})

-- | The parameter group being used by nodes in the cluster.
cParameterGroup :: Lens' Cluster (Maybe ParameterGroupStatus)
cParameterGroup = lens _cParameterGroup (\s a -> s {_cParameterGroup = a})

-- | A list of nodes that are currently in the cluster.
cNodes :: Lens' Cluster [Node]
cNodes = lens _cNodes (\s a -> s {_cNodes = a}) . _Default . _Coerce

-- | Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).
cNotificationConfiguration :: Lens' Cluster (Maybe NotificationConfiguration)
cNotificationConfiguration = lens _cNotificationConfiguration (\s a -> s {_cNotificationConfiguration = a})

-- | A list of security groups, and the status of each, for the nodes in the cluster.
cSecurityGroups :: Lens' Cluster [SecurityGroupMembership]
cSecurityGroups = lens _cSecurityGroups (\s a -> s {_cSecurityGroups = a}) . _Default . _Coerce

-- | The number of nodes in the cluster that are active (i.e., capable of serving requests).
cActiveNodes :: Lens' Cluster (Maybe Int)
cActiveNodes = lens _cActiveNodes (\s a -> s {_cActiveNodes = a})

-- | A range of time when maintenance of DAX cluster software will be performed. For example: @sun:01:00-sun:09:00@ . Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.
cPreferredMaintenanceWindow :: Lens' Cluster (Maybe Text)
cPreferredMaintenanceWindow = lens _cPreferredMaintenanceWindow (\s a -> s {_cPreferredMaintenanceWindow = a})

-- | The description of the cluster.
cDescription :: Lens' Cluster (Maybe Text)
cDescription = lens _cDescription (\s a -> s {_cDescription = a})

-- | The description of the server-side encryption status on the specified DAX cluster.
cSSEDescription :: Lens' Cluster (Maybe SSEDescription)
cSSEDescription = lens _cSSEDescription (\s a -> s {_cSSEDescription = a})

-- | The configuration endpoint for this DAX cluster, consisting of a DNS name and a port number. Client applications can specify this endpoint, rather than an individual node endpoint, and allow the DAX client software to intelligently route requests and responses to nodes in the DAX cluster.
cClusterDiscoveryEndpoint :: Lens' Cluster (Maybe Endpoint)
cClusterDiscoveryEndpoint = lens _cClusterDiscoveryEndpoint (\s a -> s {_cClusterDiscoveryEndpoint = a})

-- | A list of nodes to be removed from the cluster.
cNodeIdsToRemove :: Lens' Cluster [Text]
cNodeIdsToRemove = lens _cNodeIdsToRemove (\s a -> s {_cNodeIdsToRemove = a}) . _Default . _Coerce

-- | The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)
cNodeType :: Lens' Cluster (Maybe Text)
cNodeType = lens _cNodeType (\s a -> s {_cNodeType = a})

-- | The name of the DAX cluster.
cClusterName :: Lens' Cluster (Maybe Text)
cClusterName = lens _cClusterName (\s a -> s {_cClusterName = a})

instance FromJSON Cluster where
  parseJSON =
    withObject
      "Cluster"
      ( \x ->
          Cluster'
            <$> (x .:? "ClusterArn")
            <*> (x .:? "SubnetGroup")
            <*> (x .:? "IamRoleArn")
            <*> (x .:? "Status")
            <*> (x .:? "TotalNodes")
            <*> (x .:? "ParameterGroup")
            <*> (x .:? "Nodes" .!= mempty)
            <*> (x .:? "NotificationConfiguration")
            <*> (x .:? "SecurityGroups" .!= mempty)
            <*> (x .:? "ActiveNodes")
            <*> (x .:? "PreferredMaintenanceWindow")
            <*> (x .:? "Description")
            <*> (x .:? "SSEDescription")
            <*> (x .:? "ClusterDiscoveryEndpoint")
            <*> (x .:? "NodeIdsToRemove" .!= mempty)
            <*> (x .:? "NodeType")
            <*> (x .:? "ClusterName")
      )

instance Hashable Cluster

instance NFData Cluster
