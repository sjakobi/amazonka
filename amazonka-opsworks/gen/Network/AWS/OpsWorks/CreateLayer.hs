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
-- Module      : Network.AWS.OpsWorks.CreateLayer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a layer. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html How to Create a Layer> .
--
--
-- __Required Permissions__ : To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.CreateLayer
  ( -- * Creating a Request
    createLayer,
    CreateLayer,

    -- * Request Lenses
    clInstallUpdatesOnBoot,
    clCustomInstanceProfileARN,
    clCustomSecurityGroupIds,
    clPackages,
    clEnableAutoHealing,
    clVolumeConfigurations,
    clCustomJSON,
    clAttributes,
    clCloudWatchLogsConfiguration,
    clAutoAssignElasticIPs,
    clUseEBSOptimizedInstances,
    clCustomRecipes,
    clAutoAssignPublicIPs,
    clLifecycleEventConfiguration,
    clStackId,
    clType,
    clName,
    clShortname,

    -- * Destructuring the Response
    createLayerResponse,
    CreateLayerResponse,

    -- * Response Lenses
    clrrsLayerId,
    clrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createLayer' smart constructor.
data CreateLayer = CreateLayer'
  { _clInstallUpdatesOnBoot ::
      !(Maybe Bool),
    _clCustomInstanceProfileARN :: !(Maybe Text),
    _clCustomSecurityGroupIds :: !(Maybe [Text]),
    _clPackages :: !(Maybe [Text]),
    _clEnableAutoHealing :: !(Maybe Bool),
    _clVolumeConfigurations ::
      !(Maybe [VolumeConfiguration]),
    _clCustomJSON :: !(Maybe Text),
    _clAttributes ::
      !(Maybe (Map LayerAttributesKeys (Maybe Text))),
    _clCloudWatchLogsConfiguration ::
      !(Maybe CloudWatchLogsConfiguration),
    _clAutoAssignElasticIPs :: !(Maybe Bool),
    _clUseEBSOptimizedInstances :: !(Maybe Bool),
    _clCustomRecipes :: !(Maybe Recipes),
    _clAutoAssignPublicIPs :: !(Maybe Bool),
    _clLifecycleEventConfiguration ::
      !(Maybe LifecycleEventConfiguration),
    _clStackId :: !Text,
    _clType :: !LayerType,
    _clName :: !Text,
    _clShortname :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateLayer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clInstallUpdatesOnBoot' - Whether to install operating system and package updates when the instance boots. The default value is @true@ . To control when updates are installed, set this value to @false@ . You must then update your instances manually by using 'CreateDeployment' to run the @update_dependencies@ stack command or by manually running @yum@ (Amazon Linux) or @apt-get@ (Ubuntu) on the instances.
--
-- * 'clCustomInstanceProfileARN' - The ARN of an IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
--
-- * 'clCustomSecurityGroupIds' - An array containing the layer custom security group IDs.
--
-- * 'clPackages' - An array of @Package@ objects that describes the layer packages.
--
-- * 'clEnableAutoHealing' - Whether to disable auto healing for the layer.
--
-- * 'clVolumeConfigurations' - A @VolumeConfigurations@ object that describes the layer's Amazon EBS volumes.
--
-- * 'clCustomJSON' - A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html Using Custom JSON> . This feature is supported as of version 1.7.42 of the AWS CLI.
--
-- * 'clAttributes' - One or more user-defined key-value pairs to be added to the stack attributes. To create a cluster layer, set the @EcsClusterArn@ attribute to the cluster's ARN.
--
-- * 'clCloudWatchLogsConfiguration' - Specifies CloudWatch Logs configuration options for the layer. For more information, see 'CloudWatchLogsLogStream' .
--
-- * 'clAutoAssignElasticIPs' - Whether to automatically assign an <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP address> to the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html How to Edit a Layer> .
--
-- * 'clUseEBSOptimizedInstances' - Whether to use Amazon EBS-optimized instances.
--
-- * 'clCustomRecipes' - A @LayerCustomRecipes@ object that specifies the layer custom recipes.
--
-- * 'clAutoAssignPublicIPs' - For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html How to Edit a Layer> .
--
-- * 'clLifecycleEventConfiguration' - A @LifeCycleEventConfiguration@ object that you can use to configure the Shutdown event to specify an execution timeout and enable or disable Elastic Load Balancer connection draining.
--
-- * 'clStackId' - The layer stack ID.
--
-- * 'clType' - The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.
--
-- * 'clName' - The layer name, which is used by the console.
--
-- * 'clShortname' - For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'. The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html Layer Reference> .
createLayer ::
  -- | 'clStackId'
  Text ->
  -- | 'clType'
  LayerType ->
  -- | 'clName'
  Text ->
  -- | 'clShortname'
  Text ->
  CreateLayer
createLayer pStackId_ pType_ pName_ pShortname_ =
  CreateLayer'
    { _clInstallUpdatesOnBoot = Nothing,
      _clCustomInstanceProfileARN = Nothing,
      _clCustomSecurityGroupIds = Nothing,
      _clPackages = Nothing,
      _clEnableAutoHealing = Nothing,
      _clVolumeConfigurations = Nothing,
      _clCustomJSON = Nothing,
      _clAttributes = Nothing,
      _clCloudWatchLogsConfiguration = Nothing,
      _clAutoAssignElasticIPs = Nothing,
      _clUseEBSOptimizedInstances = Nothing,
      _clCustomRecipes = Nothing,
      _clAutoAssignPublicIPs = Nothing,
      _clLifecycleEventConfiguration = Nothing,
      _clStackId = pStackId_,
      _clType = pType_,
      _clName = pName_,
      _clShortname = pShortname_
    }

-- | Whether to install operating system and package updates when the instance boots. The default value is @true@ . To control when updates are installed, set this value to @false@ . You must then update your instances manually by using 'CreateDeployment' to run the @update_dependencies@ stack command or by manually running @yum@ (Amazon Linux) or @apt-get@ (Ubuntu) on the instances.
clInstallUpdatesOnBoot :: Lens' CreateLayer (Maybe Bool)
clInstallUpdatesOnBoot = lens _clInstallUpdatesOnBoot (\s a -> s {_clInstallUpdatesOnBoot = a})

-- | The ARN of an IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
clCustomInstanceProfileARN :: Lens' CreateLayer (Maybe Text)
clCustomInstanceProfileARN = lens _clCustomInstanceProfileARN (\s a -> s {_clCustomInstanceProfileARN = a})

-- | An array containing the layer custom security group IDs.
clCustomSecurityGroupIds :: Lens' CreateLayer [Text]
clCustomSecurityGroupIds = lens _clCustomSecurityGroupIds (\s a -> s {_clCustomSecurityGroupIds = a}) . _Default . _Coerce

-- | An array of @Package@ objects that describes the layer packages.
clPackages :: Lens' CreateLayer [Text]
clPackages = lens _clPackages (\s a -> s {_clPackages = a}) . _Default . _Coerce

-- | Whether to disable auto healing for the layer.
clEnableAutoHealing :: Lens' CreateLayer (Maybe Bool)
clEnableAutoHealing = lens _clEnableAutoHealing (\s a -> s {_clEnableAutoHealing = a})

-- | A @VolumeConfigurations@ object that describes the layer's Amazon EBS volumes.
clVolumeConfigurations :: Lens' CreateLayer [VolumeConfiguration]
clVolumeConfigurations = lens _clVolumeConfigurations (\s a -> s {_clVolumeConfigurations = a}) . _Default . _Coerce

-- | A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html Using Custom JSON> . This feature is supported as of version 1.7.42 of the AWS CLI.
clCustomJSON :: Lens' CreateLayer (Maybe Text)
clCustomJSON = lens _clCustomJSON (\s a -> s {_clCustomJSON = a})

-- | One or more user-defined key-value pairs to be added to the stack attributes. To create a cluster layer, set the @EcsClusterArn@ attribute to the cluster's ARN.
clAttributes :: Lens' CreateLayer (HashMap LayerAttributesKeys (Maybe Text))
clAttributes = lens _clAttributes (\s a -> s {_clAttributes = a}) . _Default . _Map

-- | Specifies CloudWatch Logs configuration options for the layer. For more information, see 'CloudWatchLogsLogStream' .
clCloudWatchLogsConfiguration :: Lens' CreateLayer (Maybe CloudWatchLogsConfiguration)
clCloudWatchLogsConfiguration = lens _clCloudWatchLogsConfiguration (\s a -> s {_clCloudWatchLogsConfiguration = a})

-- | Whether to automatically assign an <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP address> to the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html How to Edit a Layer> .
clAutoAssignElasticIPs :: Lens' CreateLayer (Maybe Bool)
clAutoAssignElasticIPs = lens _clAutoAssignElasticIPs (\s a -> s {_clAutoAssignElasticIPs = a})

-- | Whether to use Amazon EBS-optimized instances.
clUseEBSOptimizedInstances :: Lens' CreateLayer (Maybe Bool)
clUseEBSOptimizedInstances = lens _clUseEBSOptimizedInstances (\s a -> s {_clUseEBSOptimizedInstances = a})

-- | A @LayerCustomRecipes@ object that specifies the layer custom recipes.
clCustomRecipes :: Lens' CreateLayer (Maybe Recipes)
clCustomRecipes = lens _clCustomRecipes (\s a -> s {_clCustomRecipes = a})

-- | For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html How to Edit a Layer> .
clAutoAssignPublicIPs :: Lens' CreateLayer (Maybe Bool)
clAutoAssignPublicIPs = lens _clAutoAssignPublicIPs (\s a -> s {_clAutoAssignPublicIPs = a})

-- | A @LifeCycleEventConfiguration@ object that you can use to configure the Shutdown event to specify an execution timeout and enable or disable Elastic Load Balancer connection draining.
clLifecycleEventConfiguration :: Lens' CreateLayer (Maybe LifecycleEventConfiguration)
clLifecycleEventConfiguration = lens _clLifecycleEventConfiguration (\s a -> s {_clLifecycleEventConfiguration = a})

-- | The layer stack ID.
clStackId :: Lens' CreateLayer Text
clStackId = lens _clStackId (\s a -> s {_clStackId = a})

-- | The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.
clType :: Lens' CreateLayer LayerType
clType = lens _clType (\s a -> s {_clType = a})

-- | The layer name, which is used by the console.
clName :: Lens' CreateLayer Text
clName = lens _clName (\s a -> s {_clName = a})

-- | For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'. The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html Layer Reference> .
clShortname :: Lens' CreateLayer Text
clShortname = lens _clShortname (\s a -> s {_clShortname = a})

instance AWSRequest CreateLayer where
  type Rs CreateLayer = CreateLayerResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          CreateLayerResponse'
            <$> (x .?> "LayerId") <*> (pure (fromEnum s))
      )

instance Hashable CreateLayer

instance NFData CreateLayer

instance ToHeaders CreateLayer where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OpsWorks_20130218.CreateLayer" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateLayer where
  toJSON CreateLayer' {..} =
    object
      ( catMaybes
          [ ("InstallUpdatesOnBoot" .=)
              <$> _clInstallUpdatesOnBoot,
            ("CustomInstanceProfileArn" .=)
              <$> _clCustomInstanceProfileARN,
            ("CustomSecurityGroupIds" .=)
              <$> _clCustomSecurityGroupIds,
            ("Packages" .=) <$> _clPackages,
            ("EnableAutoHealing" .=) <$> _clEnableAutoHealing,
            ("VolumeConfigurations" .=)
              <$> _clVolumeConfigurations,
            ("CustomJson" .=) <$> _clCustomJSON,
            ("Attributes" .=) <$> _clAttributes,
            ("CloudWatchLogsConfiguration" .=)
              <$> _clCloudWatchLogsConfiguration,
            ("AutoAssignElasticIps" .=)
              <$> _clAutoAssignElasticIPs,
            ("UseEbsOptimizedInstances" .=)
              <$> _clUseEBSOptimizedInstances,
            ("CustomRecipes" .=) <$> _clCustomRecipes,
            ("AutoAssignPublicIps" .=)
              <$> _clAutoAssignPublicIPs,
            ("LifecycleEventConfiguration" .=)
              <$> _clLifecycleEventConfiguration,
            Just ("StackId" .= _clStackId),
            Just ("Type" .= _clType),
            Just ("Name" .= _clName),
            Just ("Shortname" .= _clShortname)
          ]
      )

instance ToPath CreateLayer where
  toPath = const "/"

instance ToQuery CreateLayer where
  toQuery = const mempty

-- | Contains the response to a @CreateLayer@ request.
--
--
--
-- /See:/ 'createLayerResponse' smart constructor.
data CreateLayerResponse = CreateLayerResponse'
  { _clrrsLayerId ::
      !(Maybe Text),
    _clrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateLayerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clrrsLayerId' - The layer ID.
--
-- * 'clrrsResponseStatus' - -- | The response status code.
createLayerResponse ::
  -- | 'clrrsResponseStatus'
  Int ->
  CreateLayerResponse
createLayerResponse pResponseStatus_ =
  CreateLayerResponse'
    { _clrrsLayerId = Nothing,
      _clrrsResponseStatus = pResponseStatus_
    }

-- | The layer ID.
clrrsLayerId :: Lens' CreateLayerResponse (Maybe Text)
clrrsLayerId = lens _clrrsLayerId (\s a -> s {_clrrsLayerId = a})

-- | -- | The response status code.
clrrsResponseStatus :: Lens' CreateLayerResponse Int
clrrsResponseStatus = lens _clrrsResponseStatus (\s a -> s {_clrrsResponseStatus = a})

instance NFData CreateLayerResponse
