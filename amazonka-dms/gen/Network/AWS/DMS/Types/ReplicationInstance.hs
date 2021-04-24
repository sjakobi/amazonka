{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.ReplicationInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReplicationInstance where

import Network.AWS.DMS.Types.ReplicationPendingModifiedValues
import Network.AWS.DMS.Types.ReplicationSubnetGroup
import Network.AWS.DMS.Types.VPCSecurityGroupMembership
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information that defines a replication instance.
--
--
--
-- /See:/ 'replicationInstance' smart constructor.
data ReplicationInstance = ReplicationInstance'
  { _riReplicationInstancePrivateIPAddress ::
      !(Maybe Text),
    _riVPCSecurityGroups ::
      !( Maybe
           [VPCSecurityGroupMembership]
       ),
    _riFreeUntil :: !(Maybe POSIX),
    _riReplicationSubnetGroup ::
      !(Maybe ReplicationSubnetGroup),
    _riInstanceCreateTime ::
      !(Maybe POSIX),
    _riMultiAZ :: !(Maybe Bool),
    _riPubliclyAccessible ::
      !(Maybe Bool),
    _riKMSKeyId :: !(Maybe Text),
    _riAvailabilityZone ::
      !(Maybe Text),
    _riEngineVersion ::
      !(Maybe Text),
    _riPreferredMaintenanceWindow ::
      !(Maybe Text),
    _riReplicationInstancePrivateIPAddresses ::
      !(Maybe [Text]),
    _riReplicationInstanceStatus ::
      !(Maybe Text),
    _riReplicationInstanceIdentifier ::
      !(Maybe Text),
    _riPendingModifiedValues ::
      !( Maybe
           ReplicationPendingModifiedValues
       ),
    _riReplicationInstancePublicIPAddress ::
      !(Maybe Text),
    _riReplicationInstanceClass ::
      !(Maybe Text),
    _riReplicationInstanceARN ::
      !(Maybe Text),
    _riDNSNameServers ::
      !(Maybe Text),
    _riAllocatedStorage ::
      !(Maybe Int),
    _riReplicationInstancePublicIPAddresses ::
      !(Maybe [Text]),
    _riSecondaryAvailabilityZone ::
      !(Maybe Text),
    _riAutoMinorVersionUpgrade ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReplicationInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riReplicationInstancePrivateIPAddress' - The private IP address of the replication instance.
--
-- * 'riVPCSecurityGroups' - The VPC security group for the instance.
--
-- * 'riFreeUntil' - The expiration date of the free replication instance that is part of the Free DMS program.
--
-- * 'riReplicationSubnetGroup' - The subnet group for the replication instance.
--
-- * 'riInstanceCreateTime' - The time the replication instance was created.
--
-- * 'riMultiAZ' - Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ .
--
-- * 'riPubliclyAccessible' - Specifies the accessibility options for the replication instance. A value of @true@ represents an instance with a public IP address. A value of @false@ represents an instance with a private IP address. The default value is @true@ .
--
-- * 'riKMSKeyId' - An AWS KMS key identifier that is used to encrypt the data on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
--
-- * 'riAvailabilityZone' - The Availability Zone for the instance.
--
-- * 'riEngineVersion' - The engine version number of the replication instance. If an engine version number is not specified when a replication instance is created, the default is the latest engine version available. When modifying a major engine version of an instance, also set @AllowMajorVersionUpgrade@ to @true@ .
--
-- * 'riPreferredMaintenanceWindow' - The maintenance window times for the replication instance. Any pending upgrades to the replication instance are performed during this time.
--
-- * 'riReplicationInstancePrivateIPAddresses' - One or more private IP addresses for the replication instance.
--
-- * 'riReplicationInstanceStatus' - The status of the replication instance. The possible return values include:     * @"available"@      * @"creating"@      * @"deleted"@      * @"deleting"@      * @"failed"@      * @"modifying"@      * @"upgrading"@      * @"rebooting"@      * @"resetting-master-credentials"@      * @"storage-full"@      * @"incompatible-credentials"@      * @"incompatible-network"@      * @"maintenance"@
--
-- * 'riReplicationInstanceIdentifier' - The replication instance identifier is a required parameter. This parameter is stored as a lowercase string. Constraints:     * Must contain 1-63 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens. Example: @myrepinstance@
--
-- * 'riPendingModifiedValues' - The pending modification values.
--
-- * 'riReplicationInstancePublicIPAddress' - The public IP address of the replication instance.
--
-- * 'riReplicationInstanceClass' - The compute and memory capacity of the replication instance as defined for the specified replication instance class. It is a required parameter, although a defualt value is pre-selected in the DMS console. For more information on the settings and capacities for the available replication instance classes, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration> .
--
-- * 'riReplicationInstanceARN' - The Amazon Resource Name (ARN) of the replication instance.
--
-- * 'riDNSNameServers' - The DNS name servers supported for the replication instance to access your on-premise source or target database.
--
-- * 'riAllocatedStorage' - The amount of storage (in gigabytes) that is allocated for the replication instance.
--
-- * 'riReplicationInstancePublicIPAddresses' - One or more public IP addresses for the replication instance.
--
-- * 'riSecondaryAvailabilityZone' - The Availability Zone of the standby replication instance in a Multi-AZ deployment.
--
-- * 'riAutoMinorVersionUpgrade' - Boolean value indicating if minor version upgrades will be automatically applied to the instance.
replicationInstance ::
  ReplicationInstance
replicationInstance =
  ReplicationInstance'
    { _riReplicationInstancePrivateIPAddress =
        Nothing,
      _riVPCSecurityGroups = Nothing,
      _riFreeUntil = Nothing,
      _riReplicationSubnetGroup = Nothing,
      _riInstanceCreateTime = Nothing,
      _riMultiAZ = Nothing,
      _riPubliclyAccessible = Nothing,
      _riKMSKeyId = Nothing,
      _riAvailabilityZone = Nothing,
      _riEngineVersion = Nothing,
      _riPreferredMaintenanceWindow = Nothing,
      _riReplicationInstancePrivateIPAddresses = Nothing,
      _riReplicationInstanceStatus = Nothing,
      _riReplicationInstanceIdentifier = Nothing,
      _riPendingModifiedValues = Nothing,
      _riReplicationInstancePublicIPAddress = Nothing,
      _riReplicationInstanceClass = Nothing,
      _riReplicationInstanceARN = Nothing,
      _riDNSNameServers = Nothing,
      _riAllocatedStorage = Nothing,
      _riReplicationInstancePublicIPAddresses = Nothing,
      _riSecondaryAvailabilityZone = Nothing,
      _riAutoMinorVersionUpgrade = Nothing
    }

-- | The private IP address of the replication instance.
riReplicationInstancePrivateIPAddress :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstancePrivateIPAddress = lens _riReplicationInstancePrivateIPAddress (\s a -> s {_riReplicationInstancePrivateIPAddress = a})

-- | The VPC security group for the instance.
riVPCSecurityGroups :: Lens' ReplicationInstance [VPCSecurityGroupMembership]
riVPCSecurityGroups = lens _riVPCSecurityGroups (\s a -> s {_riVPCSecurityGroups = a}) . _Default . _Coerce

-- | The expiration date of the free replication instance that is part of the Free DMS program.
riFreeUntil :: Lens' ReplicationInstance (Maybe UTCTime)
riFreeUntil = lens _riFreeUntil (\s a -> s {_riFreeUntil = a}) . mapping _Time

-- | The subnet group for the replication instance.
riReplicationSubnetGroup :: Lens' ReplicationInstance (Maybe ReplicationSubnetGroup)
riReplicationSubnetGroup = lens _riReplicationSubnetGroup (\s a -> s {_riReplicationSubnetGroup = a})

-- | The time the replication instance was created.
riInstanceCreateTime :: Lens' ReplicationInstance (Maybe UTCTime)
riInstanceCreateTime = lens _riInstanceCreateTime (\s a -> s {_riInstanceCreateTime = a}) . mapping _Time

-- | Specifies whether the replication instance is a Multi-AZ deployment. You can't set the @AvailabilityZone@ parameter if the Multi-AZ parameter is set to @true@ .
riMultiAZ :: Lens' ReplicationInstance (Maybe Bool)
riMultiAZ = lens _riMultiAZ (\s a -> s {_riMultiAZ = a})

-- | Specifies the accessibility options for the replication instance. A value of @true@ represents an instance with a public IP address. A value of @false@ represents an instance with a private IP address. The default value is @true@ .
riPubliclyAccessible :: Lens' ReplicationInstance (Maybe Bool)
riPubliclyAccessible = lens _riPubliclyAccessible (\s a -> s {_riPubliclyAccessible = a})

-- | An AWS KMS key identifier that is used to encrypt the data on the replication instance. If you don't specify a value for the @KmsKeyId@ parameter, then AWS DMS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.
riKMSKeyId :: Lens' ReplicationInstance (Maybe Text)
riKMSKeyId = lens _riKMSKeyId (\s a -> s {_riKMSKeyId = a})

-- | The Availability Zone for the instance.
riAvailabilityZone :: Lens' ReplicationInstance (Maybe Text)
riAvailabilityZone = lens _riAvailabilityZone (\s a -> s {_riAvailabilityZone = a})

-- | The engine version number of the replication instance. If an engine version number is not specified when a replication instance is created, the default is the latest engine version available. When modifying a major engine version of an instance, also set @AllowMajorVersionUpgrade@ to @true@ .
riEngineVersion :: Lens' ReplicationInstance (Maybe Text)
riEngineVersion = lens _riEngineVersion (\s a -> s {_riEngineVersion = a})

-- | The maintenance window times for the replication instance. Any pending upgrades to the replication instance are performed during this time.
riPreferredMaintenanceWindow :: Lens' ReplicationInstance (Maybe Text)
riPreferredMaintenanceWindow = lens _riPreferredMaintenanceWindow (\s a -> s {_riPreferredMaintenanceWindow = a})

-- | One or more private IP addresses for the replication instance.
riReplicationInstancePrivateIPAddresses :: Lens' ReplicationInstance [Text]
riReplicationInstancePrivateIPAddresses = lens _riReplicationInstancePrivateIPAddresses (\s a -> s {_riReplicationInstancePrivateIPAddresses = a}) . _Default . _Coerce

-- | The status of the replication instance. The possible return values include:     * @"available"@      * @"creating"@      * @"deleted"@      * @"deleting"@      * @"failed"@      * @"modifying"@      * @"upgrading"@      * @"rebooting"@      * @"resetting-master-credentials"@      * @"storage-full"@      * @"incompatible-credentials"@      * @"incompatible-network"@      * @"maintenance"@
riReplicationInstanceStatus :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstanceStatus = lens _riReplicationInstanceStatus (\s a -> s {_riReplicationInstanceStatus = a})

-- | The replication instance identifier is a required parameter. This parameter is stored as a lowercase string. Constraints:     * Must contain 1-63 alphanumeric characters or hyphens.     * First character must be a letter.     * Cannot end with a hyphen or contain two consecutive hyphens. Example: @myrepinstance@
riReplicationInstanceIdentifier :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstanceIdentifier = lens _riReplicationInstanceIdentifier (\s a -> s {_riReplicationInstanceIdentifier = a})

-- | The pending modification values.
riPendingModifiedValues :: Lens' ReplicationInstance (Maybe ReplicationPendingModifiedValues)
riPendingModifiedValues = lens _riPendingModifiedValues (\s a -> s {_riPendingModifiedValues = a})

-- | The public IP address of the replication instance.
riReplicationInstancePublicIPAddress :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstancePublicIPAddress = lens _riReplicationInstancePublicIPAddress (\s a -> s {_riReplicationInstancePublicIPAddress = a})

-- | The compute and memory capacity of the replication instance as defined for the specified replication instance class. It is a required parameter, although a defualt value is pre-selected in the DMS console. For more information on the settings and capacities for the available replication instance classes, see <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right AWS DMS replication instance for your migration> .
riReplicationInstanceClass :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstanceClass = lens _riReplicationInstanceClass (\s a -> s {_riReplicationInstanceClass = a})

-- | The Amazon Resource Name (ARN) of the replication instance.
riReplicationInstanceARN :: Lens' ReplicationInstance (Maybe Text)
riReplicationInstanceARN = lens _riReplicationInstanceARN (\s a -> s {_riReplicationInstanceARN = a})

-- | The DNS name servers supported for the replication instance to access your on-premise source or target database.
riDNSNameServers :: Lens' ReplicationInstance (Maybe Text)
riDNSNameServers = lens _riDNSNameServers (\s a -> s {_riDNSNameServers = a})

-- | The amount of storage (in gigabytes) that is allocated for the replication instance.
riAllocatedStorage :: Lens' ReplicationInstance (Maybe Int)
riAllocatedStorage = lens _riAllocatedStorage (\s a -> s {_riAllocatedStorage = a})

-- | One or more public IP addresses for the replication instance.
riReplicationInstancePublicIPAddresses :: Lens' ReplicationInstance [Text]
riReplicationInstancePublicIPAddresses = lens _riReplicationInstancePublicIPAddresses (\s a -> s {_riReplicationInstancePublicIPAddresses = a}) . _Default . _Coerce

-- | The Availability Zone of the standby replication instance in a Multi-AZ deployment.
riSecondaryAvailabilityZone :: Lens' ReplicationInstance (Maybe Text)
riSecondaryAvailabilityZone = lens _riSecondaryAvailabilityZone (\s a -> s {_riSecondaryAvailabilityZone = a})

-- | Boolean value indicating if minor version upgrades will be automatically applied to the instance.
riAutoMinorVersionUpgrade :: Lens' ReplicationInstance (Maybe Bool)
riAutoMinorVersionUpgrade = lens _riAutoMinorVersionUpgrade (\s a -> s {_riAutoMinorVersionUpgrade = a})

instance FromJSON ReplicationInstance where
  parseJSON =
    withObject
      "ReplicationInstance"
      ( \x ->
          ReplicationInstance'
            <$> (x .:? "ReplicationInstancePrivateIpAddress")
            <*> (x .:? "VpcSecurityGroups" .!= mempty)
            <*> (x .:? "FreeUntil")
            <*> (x .:? "ReplicationSubnetGroup")
            <*> (x .:? "InstanceCreateTime")
            <*> (x .:? "MultiAZ")
            <*> (x .:? "PubliclyAccessible")
            <*> (x .:? "KmsKeyId")
            <*> (x .:? "AvailabilityZone")
            <*> (x .:? "EngineVersion")
            <*> (x .:? "PreferredMaintenanceWindow")
            <*> ( x .:? "ReplicationInstancePrivateIpAddresses"
                    .!= mempty
                )
            <*> (x .:? "ReplicationInstanceStatus")
            <*> (x .:? "ReplicationInstanceIdentifier")
            <*> (x .:? "PendingModifiedValues")
            <*> (x .:? "ReplicationInstancePublicIpAddress")
            <*> (x .:? "ReplicationInstanceClass")
            <*> (x .:? "ReplicationInstanceArn")
            <*> (x .:? "DnsNameServers")
            <*> (x .:? "AllocatedStorage")
            <*> ( x .:? "ReplicationInstancePublicIpAddresses"
                    .!= mempty
                )
            <*> (x .:? "SecondaryAvailabilityZone")
            <*> (x .:? "AutoMinorVersionUpgrade")
      )

instance Hashable ReplicationInstance

instance NFData ReplicationInstance
