{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.JobFlowInstancesConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.JobFlowInstancesConfig where

import Network.AWS.EMR.Types.InstanceFleetConfig
import Network.AWS.EMR.Types.InstanceGroupConfig
import Network.AWS.EMR.Types.PlacementType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A description of the Amazon EC2 instance on which the cluster (job flow) runs. A valid JobFlowInstancesConfig must contain either InstanceGroups or InstanceFleets. They cannot be used together. You may also have MasterInstanceType, SlaveInstanceType, and InstanceCount (all three must be present), but we don't recommend this configuration.
--
--
--
-- /See:/ 'jobFlowInstancesConfig' smart constructor.
data JobFlowInstancesConfig = JobFlowInstancesConfig'
  { _jficHadoopVersion ::
      !(Maybe Text),
    _jficEC2KeyName ::
      !(Maybe Text),
    _jficInstanceFleets ::
      !( Maybe
           [InstanceFleetConfig]
       ),
    _jficEC2SubnetIds ::
      !(Maybe [Text]),
    _jficPlacement ::
      !(Maybe PlacementType),
    _jficAdditionalSlaveSecurityGroups ::
      !(Maybe [Text]),
    _jficTerminationProtected ::
      !(Maybe Bool),
    _jficEmrManagedSlaveSecurityGroup ::
      !(Maybe Text),
    _jficInstanceGroups ::
      !( Maybe
           [InstanceGroupConfig]
       ),
    _jficMasterInstanceType ::
      !(Maybe Text),
    _jficEC2SubnetId ::
      !(Maybe Text),
    _jficEmrManagedMasterSecurityGroup ::
      !(Maybe Text),
    _jficAdditionalMasterSecurityGroups ::
      !(Maybe [Text]),
    _jficSlaveInstanceType ::
      !(Maybe Text),
    _jficServiceAccessSecurityGroup ::
      !(Maybe Text),
    _jficKeepJobFlowAliveWhenNoSteps ::
      !(Maybe Bool),
    _jficInstanceCount ::
      !(Maybe Int)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'JobFlowInstancesConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jficHadoopVersion' - Applies only to Amazon EMR release versions earlier than 4.0. The Hadoop version for the cluster. Valid inputs are "0.18" (no longer maintained), "0.20" (no longer maintained), "0.20.205" (no longer maintained), "1.0.3", "2.2.0", or "2.4.0". If you do not set this value, the default of 0.18 is used, unless the @AmiVersion@ parameter is set in the RunJobFlow call, in which case the default version of Hadoop for that AMI version is used.
--
-- * 'jficEC2KeyName' - The name of the EC2 key pair that can be used to connect to the master node using SSH as the user called "hadoop."
--
-- * 'jficInstanceFleets' - Describes the EC2 instances and instance configurations for clusters that use the instance fleet configuration.
--
-- * 'jficEC2SubnetIds' - Applies to clusters that use the instance fleet configuration. When multiple EC2 subnet IDs are specified, Amazon EMR evaluates them and launches instances in the optimal subnet.
--
-- * 'jficPlacement' - The Availability Zone in which the cluster runs.
--
-- * 'jficAdditionalSlaveSecurityGroups' - A list of additional Amazon EC2 security group IDs for the core and task nodes.
--
-- * 'jficTerminationProtected' - Specifies whether to lock the cluster to prevent the Amazon EC2 instances from being terminated by API call, user intervention, or in the event of a job-flow error.
--
-- * 'jficEmrManagedSlaveSecurityGroup' - The identifier of the Amazon EC2 security group for the core and task nodes.
--
-- * 'jficInstanceGroups' - Configuration for the instance groups in a cluster.
--
-- * 'jficMasterInstanceType' - The EC2 instance type of the master node.
--
-- * 'jficEC2SubnetId' - Applies to clusters that use the uniform instance group configuration. To launch the cluster in Amazon Virtual Private Cloud (Amazon VPC), set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value and your account supports EC2-Classic, the cluster launches in EC2-Classic.
--
-- * 'jficEmrManagedMasterSecurityGroup' - The identifier of the Amazon EC2 security group for the master node.
--
-- * 'jficAdditionalMasterSecurityGroups' - A list of additional Amazon EC2 security group IDs for the master node.
--
-- * 'jficSlaveInstanceType' - The EC2 instance type of the core and task nodes.
--
-- * 'jficServiceAccessSecurityGroup' - The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.
--
-- * 'jficKeepJobFlowAliveWhenNoSteps' - Specifies whether the cluster should remain available after completing all steps.
--
-- * 'jficInstanceCount' - The number of EC2 instances in the cluster.
jobFlowInstancesConfig ::
  JobFlowInstancesConfig
jobFlowInstancesConfig =
  JobFlowInstancesConfig'
    { _jficHadoopVersion =
        Nothing,
      _jficEC2KeyName = Nothing,
      _jficInstanceFleets = Nothing,
      _jficEC2SubnetIds = Nothing,
      _jficPlacement = Nothing,
      _jficAdditionalSlaveSecurityGroups = Nothing,
      _jficTerminationProtected = Nothing,
      _jficEmrManagedSlaveSecurityGroup = Nothing,
      _jficInstanceGroups = Nothing,
      _jficMasterInstanceType = Nothing,
      _jficEC2SubnetId = Nothing,
      _jficEmrManagedMasterSecurityGroup = Nothing,
      _jficAdditionalMasterSecurityGroups = Nothing,
      _jficSlaveInstanceType = Nothing,
      _jficServiceAccessSecurityGroup = Nothing,
      _jficKeepJobFlowAliveWhenNoSteps = Nothing,
      _jficInstanceCount = Nothing
    }

-- | Applies only to Amazon EMR release versions earlier than 4.0. The Hadoop version for the cluster. Valid inputs are "0.18" (no longer maintained), "0.20" (no longer maintained), "0.20.205" (no longer maintained), "1.0.3", "2.2.0", or "2.4.0". If you do not set this value, the default of 0.18 is used, unless the @AmiVersion@ parameter is set in the RunJobFlow call, in which case the default version of Hadoop for that AMI version is used.
jficHadoopVersion :: Lens' JobFlowInstancesConfig (Maybe Text)
jficHadoopVersion = lens _jficHadoopVersion (\s a -> s {_jficHadoopVersion = a})

-- | The name of the EC2 key pair that can be used to connect to the master node using SSH as the user called "hadoop."
jficEC2KeyName :: Lens' JobFlowInstancesConfig (Maybe Text)
jficEC2KeyName = lens _jficEC2KeyName (\s a -> s {_jficEC2KeyName = a})

-- | Describes the EC2 instances and instance configurations for clusters that use the instance fleet configuration.
jficInstanceFleets :: Lens' JobFlowInstancesConfig [InstanceFleetConfig]
jficInstanceFleets = lens _jficInstanceFleets (\s a -> s {_jficInstanceFleets = a}) . _Default . _Coerce

-- | Applies to clusters that use the instance fleet configuration. When multiple EC2 subnet IDs are specified, Amazon EMR evaluates them and launches instances in the optimal subnet.
jficEC2SubnetIds :: Lens' JobFlowInstancesConfig [Text]
jficEC2SubnetIds = lens _jficEC2SubnetIds (\s a -> s {_jficEC2SubnetIds = a}) . _Default . _Coerce

-- | The Availability Zone in which the cluster runs.
jficPlacement :: Lens' JobFlowInstancesConfig (Maybe PlacementType)
jficPlacement = lens _jficPlacement (\s a -> s {_jficPlacement = a})

-- | A list of additional Amazon EC2 security group IDs for the core and task nodes.
jficAdditionalSlaveSecurityGroups :: Lens' JobFlowInstancesConfig [Text]
jficAdditionalSlaveSecurityGroups = lens _jficAdditionalSlaveSecurityGroups (\s a -> s {_jficAdditionalSlaveSecurityGroups = a}) . _Default . _Coerce

-- | Specifies whether to lock the cluster to prevent the Amazon EC2 instances from being terminated by API call, user intervention, or in the event of a job-flow error.
jficTerminationProtected :: Lens' JobFlowInstancesConfig (Maybe Bool)
jficTerminationProtected = lens _jficTerminationProtected (\s a -> s {_jficTerminationProtected = a})

-- | The identifier of the Amazon EC2 security group for the core and task nodes.
jficEmrManagedSlaveSecurityGroup :: Lens' JobFlowInstancesConfig (Maybe Text)
jficEmrManagedSlaveSecurityGroup = lens _jficEmrManagedSlaveSecurityGroup (\s a -> s {_jficEmrManagedSlaveSecurityGroup = a})

-- | Configuration for the instance groups in a cluster.
jficInstanceGroups :: Lens' JobFlowInstancesConfig [InstanceGroupConfig]
jficInstanceGroups = lens _jficInstanceGroups (\s a -> s {_jficInstanceGroups = a}) . _Default . _Coerce

-- | The EC2 instance type of the master node.
jficMasterInstanceType :: Lens' JobFlowInstancesConfig (Maybe Text)
jficMasterInstanceType = lens _jficMasterInstanceType (\s a -> s {_jficMasterInstanceType = a})

-- | Applies to clusters that use the uniform instance group configuration. To launch the cluster in Amazon Virtual Private Cloud (Amazon VPC), set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value and your account supports EC2-Classic, the cluster launches in EC2-Classic.
jficEC2SubnetId :: Lens' JobFlowInstancesConfig (Maybe Text)
jficEC2SubnetId = lens _jficEC2SubnetId (\s a -> s {_jficEC2SubnetId = a})

-- | The identifier of the Amazon EC2 security group for the master node.
jficEmrManagedMasterSecurityGroup :: Lens' JobFlowInstancesConfig (Maybe Text)
jficEmrManagedMasterSecurityGroup = lens _jficEmrManagedMasterSecurityGroup (\s a -> s {_jficEmrManagedMasterSecurityGroup = a})

-- | A list of additional Amazon EC2 security group IDs for the master node.
jficAdditionalMasterSecurityGroups :: Lens' JobFlowInstancesConfig [Text]
jficAdditionalMasterSecurityGroups = lens _jficAdditionalMasterSecurityGroups (\s a -> s {_jficAdditionalMasterSecurityGroups = a}) . _Default . _Coerce

-- | The EC2 instance type of the core and task nodes.
jficSlaveInstanceType :: Lens' JobFlowInstancesConfig (Maybe Text)
jficSlaveInstanceType = lens _jficSlaveInstanceType (\s a -> s {_jficSlaveInstanceType = a})

-- | The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.
jficServiceAccessSecurityGroup :: Lens' JobFlowInstancesConfig (Maybe Text)
jficServiceAccessSecurityGroup = lens _jficServiceAccessSecurityGroup (\s a -> s {_jficServiceAccessSecurityGroup = a})

-- | Specifies whether the cluster should remain available after completing all steps.
jficKeepJobFlowAliveWhenNoSteps :: Lens' JobFlowInstancesConfig (Maybe Bool)
jficKeepJobFlowAliveWhenNoSteps = lens _jficKeepJobFlowAliveWhenNoSteps (\s a -> s {_jficKeepJobFlowAliveWhenNoSteps = a})

-- | The number of EC2 instances in the cluster.
jficInstanceCount :: Lens' JobFlowInstancesConfig (Maybe Int)
jficInstanceCount = lens _jficInstanceCount (\s a -> s {_jficInstanceCount = a})

instance Hashable JobFlowInstancesConfig

instance NFData JobFlowInstancesConfig

instance ToJSON JobFlowInstancesConfig where
  toJSON JobFlowInstancesConfig' {..} =
    object
      ( catMaybes
          [ ("HadoopVersion" .=) <$> _jficHadoopVersion,
            ("Ec2KeyName" .=) <$> _jficEC2KeyName,
            ("InstanceFleets" .=) <$> _jficInstanceFleets,
            ("Ec2SubnetIds" .=) <$> _jficEC2SubnetIds,
            ("Placement" .=) <$> _jficPlacement,
            ("AdditionalSlaveSecurityGroups" .=)
              <$> _jficAdditionalSlaveSecurityGroups,
            ("TerminationProtected" .=)
              <$> _jficTerminationProtected,
            ("EmrManagedSlaveSecurityGroup" .=)
              <$> _jficEmrManagedSlaveSecurityGroup,
            ("InstanceGroups" .=) <$> _jficInstanceGroups,
            ("MasterInstanceType" .=)
              <$> _jficMasterInstanceType,
            ("Ec2SubnetId" .=) <$> _jficEC2SubnetId,
            ("EmrManagedMasterSecurityGroup" .=)
              <$> _jficEmrManagedMasterSecurityGroup,
            ("AdditionalMasterSecurityGroups" .=)
              <$> _jficAdditionalMasterSecurityGroups,
            ("SlaveInstanceType" .=) <$> _jficSlaveInstanceType,
            ("ServiceAccessSecurityGroup" .=)
              <$> _jficServiceAccessSecurityGroup,
            ("KeepJobFlowAliveWhenNoSteps" .=)
              <$> _jficKeepJobFlowAliveWhenNoSteps,
            ("InstanceCount" .=) <$> _jficInstanceCount
          ]
      )
