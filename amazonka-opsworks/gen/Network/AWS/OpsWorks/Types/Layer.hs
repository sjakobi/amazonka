{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.Layer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.Layer where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types.CloudWatchLogsConfiguration
import Network.AWS.OpsWorks.Types.LayerAttributesKeys
import Network.AWS.OpsWorks.Types.LayerType
import Network.AWS.OpsWorks.Types.LifecycleEventConfiguration
import Network.AWS.OpsWorks.Types.Recipes
import Network.AWS.OpsWorks.Types.VolumeConfiguration
import Network.AWS.Prelude

-- | Describes a layer.
--
--
--
-- /See:/ 'layer' smart constructor.
data Layer = Layer'
  { _lInstallUpdatesOnBoot ::
      !(Maybe Bool),
    _lCustomInstanceProfileARN :: !(Maybe Text),
    _lCustomSecurityGroupIds :: !(Maybe [Text]),
    _lPackages :: !(Maybe [Text]),
    _lEnableAutoHealing :: !(Maybe Bool),
    _lVolumeConfigurations ::
      !(Maybe [VolumeConfiguration]),
    _lStackId :: !(Maybe Text),
    _lCustomJSON :: !(Maybe Text),
    _lDefaultRecipes :: !(Maybe Recipes),
    _lARN :: !(Maybe Text),
    _lShortname :: !(Maybe Text),
    _lCreatedAt :: !(Maybe Text),
    _lAttributes ::
      !(Maybe (Map LayerAttributesKeys (Maybe Text))),
    _lName :: !(Maybe Text),
    _lCloudWatchLogsConfiguration ::
      !(Maybe CloudWatchLogsConfiguration),
    _lAutoAssignElasticIPs :: !(Maybe Bool),
    _lLayerId :: !(Maybe Text),
    _lDefaultSecurityGroupNames :: !(Maybe [Text]),
    _lType :: !(Maybe LayerType),
    _lUseEBSOptimizedInstances :: !(Maybe Bool),
    _lCustomRecipes :: !(Maybe Recipes),
    _lAutoAssignPublicIPs :: !(Maybe Bool),
    _lLifecycleEventConfiguration ::
      !(Maybe LifecycleEventConfiguration)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Layer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lInstallUpdatesOnBoot' - Whether to install operating system and package updates when the instance boots. The default value is @true@ . If this value is set to @false@ , you must then update your instances manually by using 'CreateDeployment' to run the @update_dependencies@ stack command or manually running @yum@ (Amazon Linux) or @apt-get@ (Ubuntu) on the instances.
--
-- * 'lCustomInstanceProfileARN' - The ARN of the default IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
--
-- * 'lCustomSecurityGroupIds' - An array containing the layer's custom security group IDs.
--
-- * 'lPackages' - An array of @Package@ objects that describe the layer's packages.
--
-- * 'lEnableAutoHealing' - Whether auto healing is disabled for the layer.
--
-- * 'lVolumeConfigurations' - A @VolumeConfigurations@ object that describes the layer's Amazon EBS volumes.
--
-- * 'lStackId' - The layer stack ID.
--
-- * 'lCustomJSON' - A JSON formatted string containing the layer's custom stack configuration and deployment attributes.
--
-- * 'lDefaultRecipes' - AWS OpsWorks Stacks supports five lifecycle events: __setup__ , __configuration__ , __deploy__ , __undeploy__ , and __shutdown__ . For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. You can also provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. @LayerCustomRecipes@ specifies the custom recipes for a particular layer to be run in response to each of the five events. To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the @.rb@ extension. For example: @phpapp2::dbsetup@ specifies the @dbsetup.rb@ recipe in the repository's @phpapp2@ folder.
--
-- * 'lARN' - The Amazon Resource Number (ARN) of a layer.
--
-- * 'lShortname' - The layer short name.
--
-- * 'lCreatedAt' - Date when the layer was created.
--
-- * 'lAttributes' - The layer attributes. For the @HaproxyStatsPassword@ , @MysqlRootPassword@ , and @GangliaPassword@ attributes, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead of the actual value For an ECS Cluster layer, AWS OpsWorks Stacks the @EcsClusterArn@ attribute is set to the cluster's ARN.
--
-- * 'lName' - The layer name.
--
-- * 'lCloudWatchLogsConfiguration' - The Amazon CloudWatch Logs configuration settings for the layer.
--
-- * 'lAutoAssignElasticIPs' - Whether to automatically assign an <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP address> to the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html How to Edit a Layer> .
--
-- * 'lLayerId' - The layer ID.
--
-- * 'lDefaultSecurityGroupNames' - An array containing the layer's security group names.
--
-- * 'lType' - The layer type.
--
-- * 'lUseEBSOptimizedInstances' - Whether the layer uses Amazon EBS-optimized instances.
--
-- * 'lCustomRecipes' - A @LayerCustomRecipes@ object that specifies the layer's custom recipes.
--
-- * 'lAutoAssignPublicIPs' - For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html How to Edit a Layer> .
--
-- * 'lLifecycleEventConfiguration' - A @LifeCycleEventConfiguration@ object that specifies the Shutdown event configuration.
layer ::
  Layer
layer =
  Layer'
    { _lInstallUpdatesOnBoot = Nothing,
      _lCustomInstanceProfileARN = Nothing,
      _lCustomSecurityGroupIds = Nothing,
      _lPackages = Nothing,
      _lEnableAutoHealing = Nothing,
      _lVolumeConfigurations = Nothing,
      _lStackId = Nothing,
      _lCustomJSON = Nothing,
      _lDefaultRecipes = Nothing,
      _lARN = Nothing,
      _lShortname = Nothing,
      _lCreatedAt = Nothing,
      _lAttributes = Nothing,
      _lName = Nothing,
      _lCloudWatchLogsConfiguration = Nothing,
      _lAutoAssignElasticIPs = Nothing,
      _lLayerId = Nothing,
      _lDefaultSecurityGroupNames = Nothing,
      _lType = Nothing,
      _lUseEBSOptimizedInstances = Nothing,
      _lCustomRecipes = Nothing,
      _lAutoAssignPublicIPs = Nothing,
      _lLifecycleEventConfiguration = Nothing
    }

-- | Whether to install operating system and package updates when the instance boots. The default value is @true@ . If this value is set to @false@ , you must then update your instances manually by using 'CreateDeployment' to run the @update_dependencies@ stack command or manually running @yum@ (Amazon Linux) or @apt-get@ (Ubuntu) on the instances.
lInstallUpdatesOnBoot :: Lens' Layer (Maybe Bool)
lInstallUpdatesOnBoot = lens _lInstallUpdatesOnBoot (\s a -> s {_lInstallUpdatesOnBoot = a})

-- | The ARN of the default IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
lCustomInstanceProfileARN :: Lens' Layer (Maybe Text)
lCustomInstanceProfileARN = lens _lCustomInstanceProfileARN (\s a -> s {_lCustomInstanceProfileARN = a})

-- | An array containing the layer's custom security group IDs.
lCustomSecurityGroupIds :: Lens' Layer [Text]
lCustomSecurityGroupIds = lens _lCustomSecurityGroupIds (\s a -> s {_lCustomSecurityGroupIds = a}) . _Default . _Coerce

-- | An array of @Package@ objects that describe the layer's packages.
lPackages :: Lens' Layer [Text]
lPackages = lens _lPackages (\s a -> s {_lPackages = a}) . _Default . _Coerce

-- | Whether auto healing is disabled for the layer.
lEnableAutoHealing :: Lens' Layer (Maybe Bool)
lEnableAutoHealing = lens _lEnableAutoHealing (\s a -> s {_lEnableAutoHealing = a})

-- | A @VolumeConfigurations@ object that describes the layer's Amazon EBS volumes.
lVolumeConfigurations :: Lens' Layer [VolumeConfiguration]
lVolumeConfigurations = lens _lVolumeConfigurations (\s a -> s {_lVolumeConfigurations = a}) . _Default . _Coerce

-- | The layer stack ID.
lStackId :: Lens' Layer (Maybe Text)
lStackId = lens _lStackId (\s a -> s {_lStackId = a})

-- | A JSON formatted string containing the layer's custom stack configuration and deployment attributes.
lCustomJSON :: Lens' Layer (Maybe Text)
lCustomJSON = lens _lCustomJSON (\s a -> s {_lCustomJSON = a})

-- | AWS OpsWorks Stacks supports five lifecycle events: __setup__ , __configuration__ , __deploy__ , __undeploy__ , and __shutdown__ . For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. You can also provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. @LayerCustomRecipes@ specifies the custom recipes for a particular layer to be run in response to each of the five events. To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the @.rb@ extension. For example: @phpapp2::dbsetup@ specifies the @dbsetup.rb@ recipe in the repository's @phpapp2@ folder.
lDefaultRecipes :: Lens' Layer (Maybe Recipes)
lDefaultRecipes = lens _lDefaultRecipes (\s a -> s {_lDefaultRecipes = a})

-- | The Amazon Resource Number (ARN) of a layer.
lARN :: Lens' Layer (Maybe Text)
lARN = lens _lARN (\s a -> s {_lARN = a})

-- | The layer short name.
lShortname :: Lens' Layer (Maybe Text)
lShortname = lens _lShortname (\s a -> s {_lShortname = a})

-- | Date when the layer was created.
lCreatedAt :: Lens' Layer (Maybe Text)
lCreatedAt = lens _lCreatedAt (\s a -> s {_lCreatedAt = a})

-- | The layer attributes. For the @HaproxyStatsPassword@ , @MysqlRootPassword@ , and @GangliaPassword@ attributes, AWS OpsWorks Stacks returns @*****FILTERED*****@ instead of the actual value For an ECS Cluster layer, AWS OpsWorks Stacks the @EcsClusterArn@ attribute is set to the cluster's ARN.
lAttributes :: Lens' Layer (HashMap LayerAttributesKeys (Maybe Text))
lAttributes = lens _lAttributes (\s a -> s {_lAttributes = a}) . _Default . _Map

-- | The layer name.
lName :: Lens' Layer (Maybe Text)
lName = lens _lName (\s a -> s {_lName = a})

-- | The Amazon CloudWatch Logs configuration settings for the layer.
lCloudWatchLogsConfiguration :: Lens' Layer (Maybe CloudWatchLogsConfiguration)
lCloudWatchLogsConfiguration = lens _lCloudWatchLogsConfiguration (\s a -> s {_lCloudWatchLogsConfiguration = a})

-- | Whether to automatically assign an <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP address> to the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html How to Edit a Layer> .
lAutoAssignElasticIPs :: Lens' Layer (Maybe Bool)
lAutoAssignElasticIPs = lens _lAutoAssignElasticIPs (\s a -> s {_lAutoAssignElasticIPs = a})

-- | The layer ID.
lLayerId :: Lens' Layer (Maybe Text)
lLayerId = lens _lLayerId (\s a -> s {_lLayerId = a})

-- | An array containing the layer's security group names.
lDefaultSecurityGroupNames :: Lens' Layer [Text]
lDefaultSecurityGroupNames = lens _lDefaultSecurityGroupNames (\s a -> s {_lDefaultSecurityGroupNames = a}) . _Default . _Coerce

-- | The layer type.
lType :: Lens' Layer (Maybe LayerType)
lType = lens _lType (\s a -> s {_lType = a})

-- | Whether the layer uses Amazon EBS-optimized instances.
lUseEBSOptimizedInstances :: Lens' Layer (Maybe Bool)
lUseEBSOptimizedInstances = lens _lUseEBSOptimizedInstances (\s a -> s {_lUseEBSOptimizedInstances = a})

-- | A @LayerCustomRecipes@ object that specifies the layer's custom recipes.
lCustomRecipes :: Lens' Layer (Maybe Recipes)
lCustomRecipes = lens _lCustomRecipes (\s a -> s {_lCustomRecipes = a})

-- | For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html How to Edit a Layer> .
lAutoAssignPublicIPs :: Lens' Layer (Maybe Bool)
lAutoAssignPublicIPs = lens _lAutoAssignPublicIPs (\s a -> s {_lAutoAssignPublicIPs = a})

-- | A @LifeCycleEventConfiguration@ object that specifies the Shutdown event configuration.
lLifecycleEventConfiguration :: Lens' Layer (Maybe LifecycleEventConfiguration)
lLifecycleEventConfiguration = lens _lLifecycleEventConfiguration (\s a -> s {_lLifecycleEventConfiguration = a})

instance FromJSON Layer where
  parseJSON =
    withObject
      "Layer"
      ( \x ->
          Layer'
            <$> (x .:? "InstallUpdatesOnBoot")
            <*> (x .:? "CustomInstanceProfileArn")
            <*> (x .:? "CustomSecurityGroupIds" .!= mempty)
            <*> (x .:? "Packages" .!= mempty)
            <*> (x .:? "EnableAutoHealing")
            <*> (x .:? "VolumeConfigurations" .!= mempty)
            <*> (x .:? "StackId")
            <*> (x .:? "CustomJson")
            <*> (x .:? "DefaultRecipes")
            <*> (x .:? "Arn")
            <*> (x .:? "Shortname")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "Attributes" .!= mempty)
            <*> (x .:? "Name")
            <*> (x .:? "CloudWatchLogsConfiguration")
            <*> (x .:? "AutoAssignElasticIps")
            <*> (x .:? "LayerId")
            <*> (x .:? "DefaultSecurityGroupNames" .!= mempty)
            <*> (x .:? "Type")
            <*> (x .:? "UseEbsOptimizedInstances")
            <*> (x .:? "CustomRecipes")
            <*> (x .:? "AutoAssignPublicIps")
            <*> (x .:? "LifecycleEventConfiguration")
      )

instance Hashable Layer

instance NFData Layer
