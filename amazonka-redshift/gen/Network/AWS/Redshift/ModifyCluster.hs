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
-- Module      : Network.AWS.Redshift.ModifyCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the settings for a cluster.
--
--
-- You can also change node type and the number of nodes to scale up or down the cluster. When resizing a cluster, you must specify both the number of nodes and the node type even if one of the parameters does not change.
--
-- You can add another security or parameter group, or change the master user password. Resetting a cluster password or modifying the security groups associated with a cluster do not need a reboot. However, modifying a parameter group requires a reboot for parameters to take effect. For more information about managing clusters, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html Amazon Redshift Clusters> in the /Amazon Redshift Cluster Management Guide/ .
module Network.AWS.Redshift.ModifyCluster
  ( -- * Creating a Request
    modifyCluster,
    ModifyCluster,

    -- * Request Lenses
    mcEnhancedVPCRouting,
    mcElasticIP,
    mcHSMClientCertificateIdentifier,
    mcEncrypted,
    mcAllowVersionUpgrade,
    mcAutomatedSnapshotRetentionPeriod,
    mcClusterParameterGroupName,
    mcNewClusterIdentifier,
    mcAvailabilityZoneRelocation,
    mcMasterUserPassword,
    mcPubliclyAccessible,
    mcVPCSecurityGroupIds,
    mcClusterType,
    mcManualSnapshotRetentionPeriod,
    mcKMSKeyId,
    mcAvailabilityZone,
    mcPreferredMaintenanceWindow,
    mcNumberOfNodes,
    mcPort,
    mcNodeType,
    mcClusterVersion,
    mcClusterSecurityGroups,
    mcMaintenanceTrackName,
    mcHSMConfigurationIdentifier,
    mcClusterIdentifier,

    -- * Destructuring the Response
    modifyClusterResponse,
    ModifyClusterResponse,

    -- * Response Lenses
    mcrrsCluster,
    mcrrsResponseStatus,
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
-- /See:/ 'modifyCluster' smart constructor.
data ModifyCluster = ModifyCluster'
  { _mcEnhancedVPCRouting ::
      !(Maybe Bool),
    _mcElasticIP :: !(Maybe Text),
    _mcHSMClientCertificateIdentifier ::
      !(Maybe Text),
    _mcEncrypted :: !(Maybe Bool),
    _mcAllowVersionUpgrade :: !(Maybe Bool),
    _mcAutomatedSnapshotRetentionPeriod ::
      !(Maybe Int),
    _mcClusterParameterGroupName ::
      !(Maybe Text),
    _mcNewClusterIdentifier :: !(Maybe Text),
    _mcAvailabilityZoneRelocation ::
      !(Maybe Bool),
    _mcMasterUserPassword :: !(Maybe Text),
    _mcPubliclyAccessible :: !(Maybe Bool),
    _mcVPCSecurityGroupIds :: !(Maybe [Text]),
    _mcClusterType :: !(Maybe Text),
    _mcManualSnapshotRetentionPeriod ::
      !(Maybe Int),
    _mcKMSKeyId :: !(Maybe Text),
    _mcAvailabilityZone :: !(Maybe Text),
    _mcPreferredMaintenanceWindow ::
      !(Maybe Text),
    _mcNumberOfNodes :: !(Maybe Int),
    _mcPort :: !(Maybe Int),
    _mcNodeType :: !(Maybe Text),
    _mcClusterVersion :: !(Maybe Text),
    _mcClusterSecurityGroups :: !(Maybe [Text]),
    _mcMaintenanceTrackName :: !(Maybe Text),
    _mcHSMConfigurationIdentifier ::
      !(Maybe Text),
    _mcClusterIdentifier :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyCluster' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcEnhancedVPCRouting' - An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing> in the Amazon Redshift Cluster Management Guide. If this option is @true@ , enhanced VPC routing is enabled.  Default: false
--
-- * 'mcElasticIP' - The Elastic IP (EIP) address for the cluster. Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms Supported Platforms to Launch Your Cluster> in the Amazon Redshift Cluster Management Guide.
--
-- * 'mcHSMClientCertificateIdentifier' - Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.
--
-- * 'mcEncrypted' - Indicates whether the cluster is encrypted. If the value is encrypted (true) and you provide a value for the @KmsKeyId@ parameter, we encrypt the cluster with the provided @KmsKeyId@ . If you don't provide a @KmsKeyId@ , we encrypt with the default key.  If the value is not encrypted (false), then the cluster is decrypted.
--
-- * 'mcAllowVersionUpgrade' - If @true@ , major version upgrades will be applied automatically to the cluster during the maintenance window.  Default: @false@
--
-- * 'mcAutomatedSnapshotRetentionPeriod' - The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with 'CreateClusterSnapshot' .  If you decrease the automated snapshot retention period from its current value, existing automated snapshots that fall outside of the new retention period will be immediately deleted. Default: Uses existing setting. Constraints: Must be a value from 0 to 35.
--
-- * 'mcClusterParameterGroupName' - The name of the cluster parameter group to apply to this cluster. This change is applied only after the cluster is rebooted. To reboot a cluster use 'RebootCluster' .  Default: Uses existing setting. Constraints: The cluster parameter group must be in the same parameter group family that matches the cluster version.
--
-- * 'mcNewClusterIdentifier' - The new identifier for the cluster. Constraints:     * Must contain from 1 to 63 alphanumeric characters or hyphens.     * Alphabetic characters must be lowercase.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.     * Must be unique for all clusters within an AWS account. Example: @examplecluster@
--
-- * 'mcAvailabilityZoneRelocation' - The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.
--
-- * 'mcMasterUserPassword' - The new password for the cluster master user. This change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the @MasterUserPassword@ element exists in the @PendingModifiedValues@ element of the operation response.  Default: Uses existing setting. Constraints:     * Must be between 8 and 64 characters in length.     * Must contain at least one uppercase letter.     * Must contain at least one lowercase letter.     * Must contain one number.     * Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), " (double quote), \, /, @, or space.
--
-- * 'mcPubliclyAccessible' - If @true@ , the cluster can be accessed from a public network. Only clusters in VPCs can be set to be publicly available.
--
-- * 'mcVPCSecurityGroupIds' - A list of virtual private cloud (VPC) security groups to be associated with the cluster. This change is asynchronously applied as soon as possible.
--
-- * 'mcClusterType' - The new cluster type. When you submit your cluster resize request, your existing cluster goes into a read-only mode. After Amazon Redshift provisions a new cluster based on your resize requirements, there will be outage for a period while the old cluster is deleted and your connection is switched to the new cluster. You can use 'DescribeResize' to track the progress of the resize request.  Valid Values: @multi-node | single-node @
--
-- * 'mcManualSnapshotRetentionPeriod' - The default for number of days that a newly created manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. This value doesn't retroactively change the retention periods of existing manual snapshots. The value must be either -1 or an integer between 1 and 3,653. The default value is -1.
--
-- * 'mcKMSKeyId' - The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.
--
-- * 'mcAvailabilityZone' - The option to initiate relocation for an Amazon Redshift cluster to the target Availability Zone.
--
-- * 'mcPreferredMaintenanceWindow' - The weekly time range (in UTC) during which system maintenance can occur, if necessary. If system maintenance is necessary during the window, it may result in an outage. This maintenance window change is made immediately. If the new maintenance window indicates the current time, there must be at least 120 minutes between the current time and end of the window in order to ensure that pending changes are applied. Default: Uses existing setting. Format: ddd:hh24:mi-ddd:hh24:mi, for example @wed:07:30-wed:08:00@ . Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Must be at least 30 minutes.
--
-- * 'mcNumberOfNodes' - The new number of nodes of the cluster. If you specify a new number of nodes, you must also specify the node type parameter. For more information about resizing clusters, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html Resizing Clusters in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ . Valid Values: Integer greater than @0@ .
--
-- * 'mcPort' - The option to change the port of an Amazon Redshift cluster.
--
-- * 'mcNodeType' - The new node type of the cluster. If you specify a new node type, you must also specify the number of nodes parameter. For more information about resizing clusters, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html Resizing Clusters in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ . Valid Values: @ds2.xlarge@ | @ds2.8xlarge@ | @dc1.large@ | @dc1.8xlarge@ | @dc2.large@ | @dc2.8xlarge@ | @ra3.xlplus@ | @ra3.4xlarge@ | @ra3.16xlarge@
--
-- * 'mcClusterVersion' - The new version number of the Amazon Redshift engine to upgrade to. For major version upgrades, if a non-default cluster parameter group is currently in use, a new cluster parameter group in the cluster parameter group family for the new version must be specified. The new cluster parameter group can be the default for that cluster parameter group family. For more information about parameters and parameter groups, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html Amazon Redshift Parameter Groups> in the /Amazon Redshift Cluster Management Guide/ . Example: @1.0@
--
-- * 'mcClusterSecurityGroups' - A list of cluster security groups to be authorized on this cluster. This change is asynchronously applied as soon as possible. Security groups currently associated with the cluster, and not in the list of groups to apply, will be revoked from the cluster. Constraints:     * Must be 1 to 255 alphanumeric characters or hyphens     * First character must be a letter     * Cannot end with a hyphen or contain two consecutive hyphens
--
-- * 'mcMaintenanceTrackName' - The name for the maintenance track that you want to assign for the cluster. This name change is asynchronous. The new track name stays in the @PendingModifiedValues@ for the cluster until the next maintenance window. When the maintenance track changes, the cluster is switched to the latest cluster release available for the maintenance track. At this point, the maintenance track name is applied.
--
-- * 'mcHSMConfigurationIdentifier' - Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.
--
-- * 'mcClusterIdentifier' - The unique identifier of the cluster to be modified. Example: @examplecluster@
modifyCluster ::
  -- | 'mcClusterIdentifier'
  Text ->
  ModifyCluster
modifyCluster pClusterIdentifier_ =
  ModifyCluster'
    { _mcEnhancedVPCRouting = Nothing,
      _mcElasticIP = Nothing,
      _mcHSMClientCertificateIdentifier = Nothing,
      _mcEncrypted = Nothing,
      _mcAllowVersionUpgrade = Nothing,
      _mcAutomatedSnapshotRetentionPeriod = Nothing,
      _mcClusterParameterGroupName = Nothing,
      _mcNewClusterIdentifier = Nothing,
      _mcAvailabilityZoneRelocation = Nothing,
      _mcMasterUserPassword = Nothing,
      _mcPubliclyAccessible = Nothing,
      _mcVPCSecurityGroupIds = Nothing,
      _mcClusterType = Nothing,
      _mcManualSnapshotRetentionPeriod = Nothing,
      _mcKMSKeyId = Nothing,
      _mcAvailabilityZone = Nothing,
      _mcPreferredMaintenanceWindow = Nothing,
      _mcNumberOfNodes = Nothing,
      _mcPort = Nothing,
      _mcNodeType = Nothing,
      _mcClusterVersion = Nothing,
      _mcClusterSecurityGroups = Nothing,
      _mcMaintenanceTrackName = Nothing,
      _mcHSMConfigurationIdentifier = Nothing,
      _mcClusterIdentifier = pClusterIdentifier_
    }

-- | An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see <https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html Enhanced VPC Routing> in the Amazon Redshift Cluster Management Guide. If this option is @true@ , enhanced VPC routing is enabled.  Default: false
mcEnhancedVPCRouting :: Lens' ModifyCluster (Maybe Bool)
mcEnhancedVPCRouting = lens _mcEnhancedVPCRouting (\s a -> s {_mcEnhancedVPCRouting = a})

-- | The Elastic IP (EIP) address for the cluster. Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible through an Internet gateway. For more information about provisioning clusters in EC2-VPC, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms Supported Platforms to Launch Your Cluster> in the Amazon Redshift Cluster Management Guide.
mcElasticIP :: Lens' ModifyCluster (Maybe Text)
mcElasticIP = lens _mcElasticIP (\s a -> s {_mcElasticIP = a})

-- | Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM.
mcHSMClientCertificateIdentifier :: Lens' ModifyCluster (Maybe Text)
mcHSMClientCertificateIdentifier = lens _mcHSMClientCertificateIdentifier (\s a -> s {_mcHSMClientCertificateIdentifier = a})

-- | Indicates whether the cluster is encrypted. If the value is encrypted (true) and you provide a value for the @KmsKeyId@ parameter, we encrypt the cluster with the provided @KmsKeyId@ . If you don't provide a @KmsKeyId@ , we encrypt with the default key.  If the value is not encrypted (false), then the cluster is decrypted.
mcEncrypted :: Lens' ModifyCluster (Maybe Bool)
mcEncrypted = lens _mcEncrypted (\s a -> s {_mcEncrypted = a})

-- | If @true@ , major version upgrades will be applied automatically to the cluster during the maintenance window.  Default: @false@
mcAllowVersionUpgrade :: Lens' ModifyCluster (Maybe Bool)
mcAllowVersionUpgrade = lens _mcAllowVersionUpgrade (\s a -> s {_mcAllowVersionUpgrade = a})

-- | The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with 'CreateClusterSnapshot' .  If you decrease the automated snapshot retention period from its current value, existing automated snapshots that fall outside of the new retention period will be immediately deleted. Default: Uses existing setting. Constraints: Must be a value from 0 to 35.
mcAutomatedSnapshotRetentionPeriod :: Lens' ModifyCluster (Maybe Int)
mcAutomatedSnapshotRetentionPeriod = lens _mcAutomatedSnapshotRetentionPeriod (\s a -> s {_mcAutomatedSnapshotRetentionPeriod = a})

-- | The name of the cluster parameter group to apply to this cluster. This change is applied only after the cluster is rebooted. To reboot a cluster use 'RebootCluster' .  Default: Uses existing setting. Constraints: The cluster parameter group must be in the same parameter group family that matches the cluster version.
mcClusterParameterGroupName :: Lens' ModifyCluster (Maybe Text)
mcClusterParameterGroupName = lens _mcClusterParameterGroupName (\s a -> s {_mcClusterParameterGroupName = a})

-- | The new identifier for the cluster. Constraints:     * Must contain from 1 to 63 alphanumeric characters or hyphens.     * Alphabetic characters must be lowercase.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens.     * Must be unique for all clusters within an AWS account. Example: @examplecluster@
mcNewClusterIdentifier :: Lens' ModifyCluster (Maybe Text)
mcNewClusterIdentifier = lens _mcNewClusterIdentifier (\s a -> s {_mcNewClusterIdentifier = a})

-- | The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.
mcAvailabilityZoneRelocation :: Lens' ModifyCluster (Maybe Bool)
mcAvailabilityZoneRelocation = lens _mcAvailabilityZoneRelocation (\s a -> s {_mcAvailabilityZoneRelocation = a})

-- | The new password for the cluster master user. This change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the @MasterUserPassword@ element exists in the @PendingModifiedValues@ element of the operation response.  Default: Uses existing setting. Constraints:     * Must be between 8 and 64 characters in length.     * Must contain at least one uppercase letter.     * Must contain at least one lowercase letter.     * Must contain one number.     * Can be any printable ASCII character (ASCII code 33 to 126) except ' (single quote), " (double quote), \, /, @, or space.
mcMasterUserPassword :: Lens' ModifyCluster (Maybe Text)
mcMasterUserPassword = lens _mcMasterUserPassword (\s a -> s {_mcMasterUserPassword = a})

-- | If @true@ , the cluster can be accessed from a public network. Only clusters in VPCs can be set to be publicly available.
mcPubliclyAccessible :: Lens' ModifyCluster (Maybe Bool)
mcPubliclyAccessible = lens _mcPubliclyAccessible (\s a -> s {_mcPubliclyAccessible = a})

-- | A list of virtual private cloud (VPC) security groups to be associated with the cluster. This change is asynchronously applied as soon as possible.
mcVPCSecurityGroupIds :: Lens' ModifyCluster [Text]
mcVPCSecurityGroupIds = lens _mcVPCSecurityGroupIds (\s a -> s {_mcVPCSecurityGroupIds = a}) . _Default . _Coerce

-- | The new cluster type. When you submit your cluster resize request, your existing cluster goes into a read-only mode. After Amazon Redshift provisions a new cluster based on your resize requirements, there will be outage for a period while the old cluster is deleted and your connection is switched to the new cluster. You can use 'DescribeResize' to track the progress of the resize request.  Valid Values: @multi-node | single-node @
mcClusterType :: Lens' ModifyCluster (Maybe Text)
mcClusterType = lens _mcClusterType (\s a -> s {_mcClusterType = a})

-- | The default for number of days that a newly created manual snapshot is retained. If the value is -1, the manual snapshot is retained indefinitely. This value doesn't retroactively change the retention periods of existing manual snapshots. The value must be either -1 or an integer between 1 and 3,653. The default value is -1.
mcManualSnapshotRetentionPeriod :: Lens' ModifyCluster (Maybe Int)
mcManualSnapshotRetentionPeriod = lens _mcManualSnapshotRetentionPeriod (\s a -> s {_mcManualSnapshotRetentionPeriod = a})

-- | The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.
mcKMSKeyId :: Lens' ModifyCluster (Maybe Text)
mcKMSKeyId = lens _mcKMSKeyId (\s a -> s {_mcKMSKeyId = a})

-- | The option to initiate relocation for an Amazon Redshift cluster to the target Availability Zone.
mcAvailabilityZone :: Lens' ModifyCluster (Maybe Text)
mcAvailabilityZone = lens _mcAvailabilityZone (\s a -> s {_mcAvailabilityZone = a})

-- | The weekly time range (in UTC) during which system maintenance can occur, if necessary. If system maintenance is necessary during the window, it may result in an outage. This maintenance window change is made immediately. If the new maintenance window indicates the current time, there must be at least 120 minutes between the current time and end of the window in order to ensure that pending changes are applied. Default: Uses existing setting. Format: ddd:hh24:mi-ddd:hh24:mi, for example @wed:07:30-wed:08:00@ . Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun Constraints: Must be at least 30 minutes.
mcPreferredMaintenanceWindow :: Lens' ModifyCluster (Maybe Text)
mcPreferredMaintenanceWindow = lens _mcPreferredMaintenanceWindow (\s a -> s {_mcPreferredMaintenanceWindow = a})

-- | The new number of nodes of the cluster. If you specify a new number of nodes, you must also specify the node type parameter. For more information about resizing clusters, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html Resizing Clusters in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ . Valid Values: Integer greater than @0@ .
mcNumberOfNodes :: Lens' ModifyCluster (Maybe Int)
mcNumberOfNodes = lens _mcNumberOfNodes (\s a -> s {_mcNumberOfNodes = a})

-- | The option to change the port of an Amazon Redshift cluster.
mcPort :: Lens' ModifyCluster (Maybe Int)
mcPort = lens _mcPort (\s a -> s {_mcPort = a})

-- | The new node type of the cluster. If you specify a new node type, you must also specify the number of nodes parameter. For more information about resizing clusters, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html Resizing Clusters in Amazon Redshift> in the /Amazon Redshift Cluster Management Guide/ . Valid Values: @ds2.xlarge@ | @ds2.8xlarge@ | @dc1.large@ | @dc1.8xlarge@ | @dc2.large@ | @dc2.8xlarge@ | @ra3.xlplus@ | @ra3.4xlarge@ | @ra3.16xlarge@
mcNodeType :: Lens' ModifyCluster (Maybe Text)
mcNodeType = lens _mcNodeType (\s a -> s {_mcNodeType = a})

-- | The new version number of the Amazon Redshift engine to upgrade to. For major version upgrades, if a non-default cluster parameter group is currently in use, a new cluster parameter group in the cluster parameter group family for the new version must be specified. The new cluster parameter group can be the default for that cluster parameter group family. For more information about parameters and parameter groups, go to <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html Amazon Redshift Parameter Groups> in the /Amazon Redshift Cluster Management Guide/ . Example: @1.0@
mcClusterVersion :: Lens' ModifyCluster (Maybe Text)
mcClusterVersion = lens _mcClusterVersion (\s a -> s {_mcClusterVersion = a})

-- | A list of cluster security groups to be authorized on this cluster. This change is asynchronously applied as soon as possible. Security groups currently associated with the cluster, and not in the list of groups to apply, will be revoked from the cluster. Constraints:     * Must be 1 to 255 alphanumeric characters or hyphens     * First character must be a letter     * Cannot end with a hyphen or contain two consecutive hyphens
mcClusterSecurityGroups :: Lens' ModifyCluster [Text]
mcClusterSecurityGroups = lens _mcClusterSecurityGroups (\s a -> s {_mcClusterSecurityGroups = a}) . _Default . _Coerce

-- | The name for the maintenance track that you want to assign for the cluster. This name change is asynchronous. The new track name stays in the @PendingModifiedValues@ for the cluster until the next maintenance window. When the maintenance track changes, the cluster is switched to the latest cluster release available for the maintenance track. At this point, the maintenance track name is applied.
mcMaintenanceTrackName :: Lens' ModifyCluster (Maybe Text)
mcMaintenanceTrackName = lens _mcMaintenanceTrackName (\s a -> s {_mcMaintenanceTrackName = a})

-- | Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.
mcHSMConfigurationIdentifier :: Lens' ModifyCluster (Maybe Text)
mcHSMConfigurationIdentifier = lens _mcHSMConfigurationIdentifier (\s a -> s {_mcHSMConfigurationIdentifier = a})

-- | The unique identifier of the cluster to be modified. Example: @examplecluster@
mcClusterIdentifier :: Lens' ModifyCluster Text
mcClusterIdentifier = lens _mcClusterIdentifier (\s a -> s {_mcClusterIdentifier = a})

instance AWSRequest ModifyCluster where
  type Rs ModifyCluster = ModifyClusterResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "ModifyClusterResult"
      ( \s h x ->
          ModifyClusterResponse'
            <$> (x .@? "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable ModifyCluster

instance NFData ModifyCluster

instance ToHeaders ModifyCluster where
  toHeaders = const mempty

instance ToPath ModifyCluster where
  toPath = const "/"

instance ToQuery ModifyCluster where
  toQuery ModifyCluster' {..} =
    mconcat
      [ "Action" =: ("ModifyCluster" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "EnhancedVpcRouting" =: _mcEnhancedVPCRouting,
        "ElasticIp" =: _mcElasticIP,
        "HsmClientCertificateIdentifier"
          =: _mcHSMClientCertificateIdentifier,
        "Encrypted" =: _mcEncrypted,
        "AllowVersionUpgrade" =: _mcAllowVersionUpgrade,
        "AutomatedSnapshotRetentionPeriod"
          =: _mcAutomatedSnapshotRetentionPeriod,
        "ClusterParameterGroupName"
          =: _mcClusterParameterGroupName,
        "NewClusterIdentifier" =: _mcNewClusterIdentifier,
        "AvailabilityZoneRelocation"
          =: _mcAvailabilityZoneRelocation,
        "MasterUserPassword" =: _mcMasterUserPassword,
        "PubliclyAccessible" =: _mcPubliclyAccessible,
        "VpcSecurityGroupIds"
          =: toQuery
            ( toQueryList "VpcSecurityGroupId"
                <$> _mcVPCSecurityGroupIds
            ),
        "ClusterType" =: _mcClusterType,
        "ManualSnapshotRetentionPeriod"
          =: _mcManualSnapshotRetentionPeriod,
        "KmsKeyId" =: _mcKMSKeyId,
        "AvailabilityZone" =: _mcAvailabilityZone,
        "PreferredMaintenanceWindow"
          =: _mcPreferredMaintenanceWindow,
        "NumberOfNodes" =: _mcNumberOfNodes,
        "Port" =: _mcPort,
        "NodeType" =: _mcNodeType,
        "ClusterVersion" =: _mcClusterVersion,
        "ClusterSecurityGroups"
          =: toQuery
            ( toQueryList "ClusterSecurityGroupName"
                <$> _mcClusterSecurityGroups
            ),
        "MaintenanceTrackName" =: _mcMaintenanceTrackName,
        "HsmConfigurationIdentifier"
          =: _mcHSMConfigurationIdentifier,
        "ClusterIdentifier" =: _mcClusterIdentifier
      ]

-- | /See:/ 'modifyClusterResponse' smart constructor.
data ModifyClusterResponse = ModifyClusterResponse'
  { _mcrrsCluster ::
      !(Maybe Cluster),
    _mcrrsResponseStatus ::
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

-- | Creates a value of 'ModifyClusterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcrrsCluster' - Undocumented member.
--
-- * 'mcrrsResponseStatus' - -- | The response status code.
modifyClusterResponse ::
  -- | 'mcrrsResponseStatus'
  Int ->
  ModifyClusterResponse
modifyClusterResponse pResponseStatus_ =
  ModifyClusterResponse'
    { _mcrrsCluster = Nothing,
      _mcrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
mcrrsCluster :: Lens' ModifyClusterResponse (Maybe Cluster)
mcrrsCluster = lens _mcrrsCluster (\s a -> s {_mcrrsCluster = a})

-- | -- | The response status code.
mcrrsResponseStatus :: Lens' ModifyClusterResponse Int
mcrrsResponseStatus = lens _mcrrsResponseStatus (\s a -> s {_mcrrsResponseStatus = a})

instance NFData ModifyClusterResponse
