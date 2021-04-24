{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.Stack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.Stack where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types.ChefConfiguration
import Network.AWS.OpsWorks.Types.RootDeviceType
import Network.AWS.OpsWorks.Types.Source
import Network.AWS.OpsWorks.Types.StackAttributesKeys
import Network.AWS.OpsWorks.Types.StackConfigurationManager
import Network.AWS.Prelude

-- | Describes a stack.
--
--
--
-- /See:/ 'stack' smart constructor.
data Stack = Stack'
  { _staDefaultOS :: !(Maybe Text),
    _staUseOpsworksSecurityGroups :: !(Maybe Bool),
    _staCustomCookbooksSource :: !(Maybe Source),
    _staServiceRoleARN :: !(Maybe Text),
    _staDefaultAvailabilityZone :: !(Maybe Text),
    _staStackId :: !(Maybe Text),
    _staAgentVersion :: !(Maybe Text),
    _staCustomJSON :: !(Maybe Text),
    _staARN :: !(Maybe Text),
    _staCreatedAt :: !(Maybe Text),
    _staDefaultRootDeviceType :: !(Maybe RootDeviceType),
    _staAttributes ::
      !(Maybe (Map StackAttributesKeys (Maybe Text))),
    _staName :: !(Maybe Text),
    _staDefaultInstanceProfileARN :: !(Maybe Text),
    _staHostnameTheme :: !(Maybe Text),
    _staDefaultSSHKeyName :: !(Maybe Text),
    _staConfigurationManager ::
      !(Maybe StackConfigurationManager),
    _staRegion :: !(Maybe Text),
    _staVPCId :: !(Maybe Text),
    _staChefConfiguration :: !(Maybe ChefConfiguration),
    _staDefaultSubnetId :: !(Maybe Text),
    _staUseCustomCookbooks :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Stack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'staDefaultOS' - The stack's default operating system.
--
-- * 'staUseOpsworksSecurityGroups' - Whether the stack automatically associates the AWS OpsWorks Stacks built-in security groups with the stack's layers.
--
-- * 'staCustomCookbooksSource' - Contains the information required to retrieve an app or cookbook from a repository. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Adding Apps> or <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Cookbooks and Recipes> .
--
-- * 'staServiceRoleARN' - The stack AWS Identity and Access Management (IAM) role.
--
-- * 'staDefaultAvailabilityZone' - The stack's default Availability Zone. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
--
-- * 'staStackId' - The stack ID.
--
-- * 'staAgentVersion' - The agent version. This parameter is set to @LATEST@ for auto-update. or a version number for a fixed agent version.
--
-- * 'staCustomJSON' - A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format: @"{\"key1\": \"value1\", \"key2\": \"value2\",...}"@  For more information on custom JSON, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes> .
--
-- * 'staARN' - The stack's ARN.
--
-- * 'staCreatedAt' - The date when the stack was created.
--
-- * 'staDefaultRootDeviceType' - The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device> .
--
-- * 'staAttributes' - The stack's attributes.
--
-- * 'staName' - The stack name.
--
-- * 'staDefaultInstanceProfileARN' - The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
--
-- * 'staHostnameTheme' - The stack host name theme, with spaces replaced by underscores.
--
-- * 'staDefaultSSHKeyName' - A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or update an instance.
--
-- * 'staConfigurationManager' - The configuration manager.
--
-- * 'staRegion' - The stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
--
-- * 'staVPCId' - The VPC ID; applicable only if the stack is running in a VPC.
--
-- * 'staChefConfiguration' - A @ChefConfiguration@ object that specifies whether to enable Berkshelf and the Berkshelf version. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
--
-- * 'staDefaultSubnetId' - The default subnet ID; applicable only if the stack is running in a VPC.
--
-- * 'staUseCustomCookbooks' - Whether the stack uses custom cookbooks.
stack ::
  Stack
stack =
  Stack'
    { _staDefaultOS = Nothing,
      _staUseOpsworksSecurityGroups = Nothing,
      _staCustomCookbooksSource = Nothing,
      _staServiceRoleARN = Nothing,
      _staDefaultAvailabilityZone = Nothing,
      _staStackId = Nothing,
      _staAgentVersion = Nothing,
      _staCustomJSON = Nothing,
      _staARN = Nothing,
      _staCreatedAt = Nothing,
      _staDefaultRootDeviceType = Nothing,
      _staAttributes = Nothing,
      _staName = Nothing,
      _staDefaultInstanceProfileARN = Nothing,
      _staHostnameTheme = Nothing,
      _staDefaultSSHKeyName = Nothing,
      _staConfigurationManager = Nothing,
      _staRegion = Nothing,
      _staVPCId = Nothing,
      _staChefConfiguration = Nothing,
      _staDefaultSubnetId = Nothing,
      _staUseCustomCookbooks = Nothing
    }

-- | The stack's default operating system.
staDefaultOS :: Lens' Stack (Maybe Text)
staDefaultOS = lens _staDefaultOS (\s a -> s {_staDefaultOS = a})

-- | Whether the stack automatically associates the AWS OpsWorks Stacks built-in security groups with the stack's layers.
staUseOpsworksSecurityGroups :: Lens' Stack (Maybe Bool)
staUseOpsworksSecurityGroups = lens _staUseOpsworksSecurityGroups (\s a -> s {_staUseOpsworksSecurityGroups = a})

-- | Contains the information required to retrieve an app or cookbook from a repository. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Adding Apps> or <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Cookbooks and Recipes> .
staCustomCookbooksSource :: Lens' Stack (Maybe Source)
staCustomCookbooksSource = lens _staCustomCookbooksSource (\s a -> s {_staCustomCookbooksSource = a})

-- | The stack AWS Identity and Access Management (IAM) role.
staServiceRoleARN :: Lens' Stack (Maybe Text)
staServiceRoleARN = lens _staServiceRoleARN (\s a -> s {_staServiceRoleARN = a})

-- | The stack's default Availability Zone. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
staDefaultAvailabilityZone :: Lens' Stack (Maybe Text)
staDefaultAvailabilityZone = lens _staDefaultAvailabilityZone (\s a -> s {_staDefaultAvailabilityZone = a})

-- | The stack ID.
staStackId :: Lens' Stack (Maybe Text)
staStackId = lens _staStackId (\s a -> s {_staStackId = a})

-- | The agent version. This parameter is set to @LATEST@ for auto-update. or a version number for a fixed agent version.
staAgentVersion :: Lens' Stack (Maybe Text)
staAgentVersion = lens _staAgentVersion (\s a -> s {_staAgentVersion = a})

-- | A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format: @"{\"key1\": \"value1\", \"key2\": \"value2\",...}"@  For more information on custom JSON, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes> .
staCustomJSON :: Lens' Stack (Maybe Text)
staCustomJSON = lens _staCustomJSON (\s a -> s {_staCustomJSON = a})

-- | The stack's ARN.
staARN :: Lens' Stack (Maybe Text)
staARN = lens _staARN (\s a -> s {_staARN = a})

-- | The date when the stack was created.
staCreatedAt :: Lens' Stack (Maybe Text)
staCreatedAt = lens _staCreatedAt (\s a -> s {_staCreatedAt = a})

-- | The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device> .
staDefaultRootDeviceType :: Lens' Stack (Maybe RootDeviceType)
staDefaultRootDeviceType = lens _staDefaultRootDeviceType (\s a -> s {_staDefaultRootDeviceType = a})

-- | The stack's attributes.
staAttributes :: Lens' Stack (HashMap StackAttributesKeys (Maybe Text))
staAttributes = lens _staAttributes (\s a -> s {_staAttributes = a}) . _Default . _Map

-- | The stack name.
staName :: Lens' Stack (Maybe Text)
staName = lens _staName (\s a -> s {_staName = a})

-- | The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
staDefaultInstanceProfileARN :: Lens' Stack (Maybe Text)
staDefaultInstanceProfileARN = lens _staDefaultInstanceProfileARN (\s a -> s {_staDefaultInstanceProfileARN = a})

-- | The stack host name theme, with spaces replaced by underscores.
staHostnameTheme :: Lens' Stack (Maybe Text)
staHostnameTheme = lens _staHostnameTheme (\s a -> s {_staHostnameTheme = a})

-- | A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or update an instance.
staDefaultSSHKeyName :: Lens' Stack (Maybe Text)
staDefaultSSHKeyName = lens _staDefaultSSHKeyName (\s a -> s {_staDefaultSSHKeyName = a})

-- | The configuration manager.
staConfigurationManager :: Lens' Stack (Maybe StackConfigurationManager)
staConfigurationManager = lens _staConfigurationManager (\s a -> s {_staConfigurationManager = a})

-- | The stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
staRegion :: Lens' Stack (Maybe Text)
staRegion = lens _staRegion (\s a -> s {_staRegion = a})

-- | The VPC ID; applicable only if the stack is running in a VPC.
staVPCId :: Lens' Stack (Maybe Text)
staVPCId = lens _staVPCId (\s a -> s {_staVPCId = a})

-- | A @ChefConfiguration@ object that specifies whether to enable Berkshelf and the Berkshelf version. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
staChefConfiguration :: Lens' Stack (Maybe ChefConfiguration)
staChefConfiguration = lens _staChefConfiguration (\s a -> s {_staChefConfiguration = a})

-- | The default subnet ID; applicable only if the stack is running in a VPC.
staDefaultSubnetId :: Lens' Stack (Maybe Text)
staDefaultSubnetId = lens _staDefaultSubnetId (\s a -> s {_staDefaultSubnetId = a})

-- | Whether the stack uses custom cookbooks.
staUseCustomCookbooks :: Lens' Stack (Maybe Bool)
staUseCustomCookbooks = lens _staUseCustomCookbooks (\s a -> s {_staUseCustomCookbooks = a})

instance FromJSON Stack where
  parseJSON =
    withObject
      "Stack"
      ( \x ->
          Stack'
            <$> (x .:? "DefaultOs")
            <*> (x .:? "UseOpsworksSecurityGroups")
            <*> (x .:? "CustomCookbooksSource")
            <*> (x .:? "ServiceRoleArn")
            <*> (x .:? "DefaultAvailabilityZone")
            <*> (x .:? "StackId")
            <*> (x .:? "AgentVersion")
            <*> (x .:? "CustomJson")
            <*> (x .:? "Arn")
            <*> (x .:? "CreatedAt")
            <*> (x .:? "DefaultRootDeviceType")
            <*> (x .:? "Attributes" .!= mempty)
            <*> (x .:? "Name")
            <*> (x .:? "DefaultInstanceProfileArn")
            <*> (x .:? "HostnameTheme")
            <*> (x .:? "DefaultSshKeyName")
            <*> (x .:? "ConfigurationManager")
            <*> (x .:? "Region")
            <*> (x .:? "VpcId")
            <*> (x .:? "ChefConfiguration")
            <*> (x .:? "DefaultSubnetId")
            <*> (x .:? "UseCustomCookbooks")
      )

instance Hashable Stack

instance NFData Stack
