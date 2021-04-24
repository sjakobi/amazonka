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
-- Module      : Network.AWS.OpsWorks.CloneStack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a clone of a specified stack. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html Clone a Stack> . By default, all parameters are set to the values used by the parent stack.
--
--
-- __Required Permissions__ : To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.CloneStack
  ( -- * Creating a Request
    cloneStack,
    CloneStack,

    -- * Request Lenses
    csDefaultOS,
    csUseOpsworksSecurityGroups,
    csCustomCookbooksSource,
    csDefaultAvailabilityZone,
    csAgentVersion,
    csClonePermissions,
    csCustomJSON,
    csDefaultRootDeviceType,
    csAttributes,
    csName,
    csCloneAppIds,
    csDefaultInstanceProfileARN,
    csHostnameTheme,
    csDefaultSSHKeyName,
    csConfigurationManager,
    csRegion,
    csVPCId,
    csChefConfiguration,
    csDefaultSubnetId,
    csUseCustomCookbooks,
    csSourceStackId,
    csServiceRoleARN,

    -- * Destructuring the Response
    cloneStackResponse,
    CloneStackResponse,

    -- * Response Lenses
    crsStackId,
    crsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'cloneStack' smart constructor.
data CloneStack = CloneStack'
  { _csDefaultOS ::
      !(Maybe Text),
    _csUseOpsworksSecurityGroups :: !(Maybe Bool),
    _csCustomCookbooksSource :: !(Maybe Source),
    _csDefaultAvailabilityZone :: !(Maybe Text),
    _csAgentVersion :: !(Maybe Text),
    _csClonePermissions :: !(Maybe Bool),
    _csCustomJSON :: !(Maybe Text),
    _csDefaultRootDeviceType ::
      !(Maybe RootDeviceType),
    _csAttributes ::
      !(Maybe (Map StackAttributesKeys (Maybe Text))),
    _csName :: !(Maybe Text),
    _csCloneAppIds :: !(Maybe [Text]),
    _csDefaultInstanceProfileARN :: !(Maybe Text),
    _csHostnameTheme :: !(Maybe Text),
    _csDefaultSSHKeyName :: !(Maybe Text),
    _csConfigurationManager ::
      !(Maybe StackConfigurationManager),
    _csRegion :: !(Maybe Text),
    _csVPCId :: !(Maybe Text),
    _csChefConfiguration ::
      !(Maybe ChefConfiguration),
    _csDefaultSubnetId :: !(Maybe Text),
    _csUseCustomCookbooks :: !(Maybe Bool),
    _csSourceStackId :: !Text,
    _csServiceRoleARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CloneStack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csDefaultOS' - The stack's operating system, which must be set to one of the following.     * A supported Linux operating system: An Amazon Linux version, such as @Amazon Linux 2018.03@ , @Amazon Linux 2017.09@ , @Amazon Linux 2017.03@ , @Amazon Linux 2016.09@ , @Amazon Linux 2016.03@ , @Amazon Linux 2015.09@ , or @Amazon Linux 2015.03@ .     * A supported Ubuntu operating system, such as @Ubuntu 16.04 LTS@ , @Ubuntu 14.04 LTS@ , or @Ubuntu 12.04 LTS@ .     * @CentOS Linux 7@      * @Red Hat Enterprise Linux 7@      * @Microsoft Windows Server 2012 R2 Base@ , @Microsoft Windows Server 2012 R2 with SQL Server Express@ , @Microsoft Windows Server 2012 R2 with SQL Server Standard@ , or @Microsoft Windows Server 2012 R2 with SQL Server Web@ .     * A custom AMI: @Custom@ . You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html Using Custom AMIs> . The default option is the parent stack's operating system. For more information about supported operating systems, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html AWS OpsWorks Stacks Operating Systems> .
--
-- * 'csUseOpsworksSecurityGroups' - Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers. AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With @UseOpsworksSecurityGroups@ you can instead provide your own custom security groups. @UseOpsworksSecurityGroups@ has the following settings:      * True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.     * False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
--
-- * 'csCustomCookbooksSource' - Contains the information required to retrieve an app or cookbook from a repository. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Adding Apps> or <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Cookbooks and Recipes> .
--
-- * 'csDefaultAvailabilityZone' - The cloned stack's default Availability Zone, which must be in the specified region. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> . If you also specify a value for @DefaultSubnetId@ , the subnet must be in the same zone. For more information, see the @VpcId@ parameter description.
--
-- * 'csAgentVersion' - The default AWS OpsWorks Stacks agent version. You have the following options:     * Auto-update - Set this parameter to @LATEST@ . AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.     * Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances. The default setting is @LATEST@ . To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call 'DescribeAgentVersions' . AgentVersion cannot be set to Chef 12.2.
--
-- * 'csClonePermissions' - Whether to clone the source stack's permissions.
--
-- * 'csCustomJSON' - A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format: @"{\"key1\": \"value1\", \"key2\": \"value2\",...}"@  For more information about custom JSON, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes>
--
-- * 'csDefaultRootDeviceType' - The default root device type. This value is used by default for all instances in the cloned stack, but you can override it when you create an instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device> .
--
-- * 'csAttributes' - A list of stack attributes and values as key/value pairs to be added to the cloned stack.
--
-- * 'csName' - The cloned stack name.
--
-- * 'csCloneAppIds' - A list of source stack app IDs to be included in the cloned stack.
--
-- * 'csDefaultInstanceProfileARN' - The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
--
-- * 'csHostnameTheme' - The stack's host name theme, with spaces are replaced by underscores. The theme is used to generate host names for the stack's instances. By default, @HostnameTheme@ is set to @Layer_Dependent@ , which creates host names by appending integers to the layer's short name. The other themes are:     * @Baked_Goods@      * @Clouds@      * @Europe_Cities@      * @Fruits@      * @Greek_Deities_and_Titans@      * @Legendary_creatures_from_Japan@      * @Planets_and_Moons@      * @Roman_Deities@      * @Scottish_Islands@      * @US_Cities@      * @Wild_Cats@  To obtain a generated host name, call @GetHostNameSuggestion@ , which returns a host name based on the current theme.
--
-- * 'csDefaultSSHKeyName' - A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html Using SSH to Communicate with an Instance> and <https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html Managing SSH Access> . You can override this setting by specifying a different key pair, or no key pair, when you <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html create an instance> .
--
-- * 'csConfigurationManager' - The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.
--
-- * 'csRegion' - The cloned stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
--
-- * 'csVPCId' - The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All instances are launched into this VPC, and you cannot change the ID later.     * If your account supports EC2 Classic, the default value is no VPC.     * If your account does not support EC2 Classic, the default value is the default VPC for the specified region. If the VPC ID corresponds to a default VPC and you have specified either the @DefaultAvailabilityZone@ or the @DefaultSubnetId@ parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.  If you specify a nondefault VPC ID, note the following:     * It must belong to a VPC in your account that is in the specified region.     * You must specify a value for @DefaultSubnetId@ . For more information about how to use AWS OpsWorks Stacks with a VPC, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html Running a Stack in a VPC> . For more information about default VPC and EC2 Classic, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html Supported Platforms> .
--
-- * 'csChefConfiguration' - A @ChefConfiguration@ object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
--
-- * 'csDefaultSubnetId' - The stack's default VPC subnet ID. This parameter is required if you specify a value for the @VpcId@ parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for @DefaultAvailabilityZone@ , the subnet must be in that zone. For information on default values and when this parameter is required, see the @VpcId@ parameter description.
--
-- * 'csUseCustomCookbooks' - Whether to use custom cookbooks.
--
-- * 'csSourceStackId' - The source stack ID.
--
-- * 'csServiceRoleARN' - The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for you. You can obtain an existing stack's IAM ARN programmatically by calling 'DescribePermissions' . For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
cloneStack ::
  -- | 'csSourceStackId'
  Text ->
  -- | 'csServiceRoleARN'
  Text ->
  CloneStack
cloneStack pSourceStackId_ pServiceRoleARN_ =
  CloneStack'
    { _csDefaultOS = Nothing,
      _csUseOpsworksSecurityGroups = Nothing,
      _csCustomCookbooksSource = Nothing,
      _csDefaultAvailabilityZone = Nothing,
      _csAgentVersion = Nothing,
      _csClonePermissions = Nothing,
      _csCustomJSON = Nothing,
      _csDefaultRootDeviceType = Nothing,
      _csAttributes = Nothing,
      _csName = Nothing,
      _csCloneAppIds = Nothing,
      _csDefaultInstanceProfileARN = Nothing,
      _csHostnameTheme = Nothing,
      _csDefaultSSHKeyName = Nothing,
      _csConfigurationManager = Nothing,
      _csRegion = Nothing,
      _csVPCId = Nothing,
      _csChefConfiguration = Nothing,
      _csDefaultSubnetId = Nothing,
      _csUseCustomCookbooks = Nothing,
      _csSourceStackId = pSourceStackId_,
      _csServiceRoleARN = pServiceRoleARN_
    }

-- | The stack's operating system, which must be set to one of the following.     * A supported Linux operating system: An Amazon Linux version, such as @Amazon Linux 2018.03@ , @Amazon Linux 2017.09@ , @Amazon Linux 2017.03@ , @Amazon Linux 2016.09@ , @Amazon Linux 2016.03@ , @Amazon Linux 2015.09@ , or @Amazon Linux 2015.03@ .     * A supported Ubuntu operating system, such as @Ubuntu 16.04 LTS@ , @Ubuntu 14.04 LTS@ , or @Ubuntu 12.04 LTS@ .     * @CentOS Linux 7@      * @Red Hat Enterprise Linux 7@      * @Microsoft Windows Server 2012 R2 Base@ , @Microsoft Windows Server 2012 R2 with SQL Server Express@ , @Microsoft Windows Server 2012 R2 with SQL Server Standard@ , or @Microsoft Windows Server 2012 R2 with SQL Server Web@ .     * A custom AMI: @Custom@ . You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html Using Custom AMIs> . The default option is the parent stack's operating system. For more information about supported operating systems, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html AWS OpsWorks Stacks Operating Systems> .
csDefaultOS :: Lens' CloneStack (Maybe Text)
csDefaultOS = lens _csDefaultOS (\s a -> s {_csDefaultOS = a})

-- | Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers. AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With @UseOpsworksSecurityGroups@ you can instead provide your own custom security groups. @UseOpsworksSecurityGroups@ has the following settings:      * True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.     * False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
csUseOpsworksSecurityGroups :: Lens' CloneStack (Maybe Bool)
csUseOpsworksSecurityGroups = lens _csUseOpsworksSecurityGroups (\s a -> s {_csUseOpsworksSecurityGroups = a})

-- | Contains the information required to retrieve an app or cookbook from a repository. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Adding Apps> or <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Cookbooks and Recipes> .
csCustomCookbooksSource :: Lens' CloneStack (Maybe Source)
csCustomCookbooksSource = lens _csCustomCookbooksSource (\s a -> s {_csCustomCookbooksSource = a})

-- | The cloned stack's default Availability Zone, which must be in the specified region. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> . If you also specify a value for @DefaultSubnetId@ , the subnet must be in the same zone. For more information, see the @VpcId@ parameter description.
csDefaultAvailabilityZone :: Lens' CloneStack (Maybe Text)
csDefaultAvailabilityZone = lens _csDefaultAvailabilityZone (\s a -> s {_csDefaultAvailabilityZone = a})

-- | The default AWS OpsWorks Stacks agent version. You have the following options:     * Auto-update - Set this parameter to @LATEST@ . AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.     * Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances. The default setting is @LATEST@ . To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call 'DescribeAgentVersions' . AgentVersion cannot be set to Chef 12.2.
csAgentVersion :: Lens' CloneStack (Maybe Text)
csAgentVersion = lens _csAgentVersion (\s a -> s {_csAgentVersion = a})

-- | Whether to clone the source stack's permissions.
csClonePermissions :: Lens' CloneStack (Maybe Bool)
csClonePermissions = lens _csClonePermissions (\s a -> s {_csClonePermissions = a})

-- | A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format: @"{\"key1\": \"value1\", \"key2\": \"value2\",...}"@  For more information about custom JSON, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes>
csCustomJSON :: Lens' CloneStack (Maybe Text)
csCustomJSON = lens _csCustomJSON (\s a -> s {_csCustomJSON = a})

-- | The default root device type. This value is used by default for all instances in the cloned stack, but you can override it when you create an instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device> .
csDefaultRootDeviceType :: Lens' CloneStack (Maybe RootDeviceType)
csDefaultRootDeviceType = lens _csDefaultRootDeviceType (\s a -> s {_csDefaultRootDeviceType = a})

-- | A list of stack attributes and values as key/value pairs to be added to the cloned stack.
csAttributes :: Lens' CloneStack (HashMap StackAttributesKeys (Maybe Text))
csAttributes = lens _csAttributes (\s a -> s {_csAttributes = a}) . _Default . _Map

-- | The cloned stack name.
csName :: Lens' CloneStack (Maybe Text)
csName = lens _csName (\s a -> s {_csName = a})

-- | A list of source stack app IDs to be included in the cloned stack.
csCloneAppIds :: Lens' CloneStack [Text]
csCloneAppIds = lens _csCloneAppIds (\s a -> s {_csCloneAppIds = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
csDefaultInstanceProfileARN :: Lens' CloneStack (Maybe Text)
csDefaultInstanceProfileARN = lens _csDefaultInstanceProfileARN (\s a -> s {_csDefaultInstanceProfileARN = a})

-- | The stack's host name theme, with spaces are replaced by underscores. The theme is used to generate host names for the stack's instances. By default, @HostnameTheme@ is set to @Layer_Dependent@ , which creates host names by appending integers to the layer's short name. The other themes are:     * @Baked_Goods@      * @Clouds@      * @Europe_Cities@      * @Fruits@      * @Greek_Deities_and_Titans@      * @Legendary_creatures_from_Japan@      * @Planets_and_Moons@      * @Roman_Deities@      * @Scottish_Islands@      * @US_Cities@      * @Wild_Cats@  To obtain a generated host name, call @GetHostNameSuggestion@ , which returns a host name based on the current theme.
csHostnameTheme :: Lens' CloneStack (Maybe Text)
csHostnameTheme = lens _csHostnameTheme (\s a -> s {_csHostnameTheme = a})

-- | A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html Using SSH to Communicate with an Instance> and <https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html Managing SSH Access> . You can override this setting by specifying a different key pair, or no key pair, when you <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html create an instance> .
csDefaultSSHKeyName :: Lens' CloneStack (Maybe Text)
csDefaultSSHKeyName = lens _csDefaultSSHKeyName (\s a -> s {_csDefaultSSHKeyName = a})

-- | The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.
csConfigurationManager :: Lens' CloneStack (Maybe StackConfigurationManager)
csConfigurationManager = lens _csConfigurationManager (\s a -> s {_csConfigurationManager = a})

-- | The cloned stack AWS region, such as "ap-northeast-2". For more information about AWS regions, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
csRegion :: Lens' CloneStack (Maybe Text)
csRegion = lens _csRegion (\s a -> s {_csRegion = a})

-- | The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All instances are launched into this VPC, and you cannot change the ID later.     * If your account supports EC2 Classic, the default value is no VPC.     * If your account does not support EC2 Classic, the default value is the default VPC for the specified region. If the VPC ID corresponds to a default VPC and you have specified either the @DefaultAvailabilityZone@ or the @DefaultSubnetId@ parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.  If you specify a nondefault VPC ID, note the following:     * It must belong to a VPC in your account that is in the specified region.     * You must specify a value for @DefaultSubnetId@ . For more information about how to use AWS OpsWorks Stacks with a VPC, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html Running a Stack in a VPC> . For more information about default VPC and EC2 Classic, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html Supported Platforms> .
csVPCId :: Lens' CloneStack (Maybe Text)
csVPCId = lens _csVPCId (\s a -> s {_csVPCId = a})

-- | A @ChefConfiguration@ object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
csChefConfiguration :: Lens' CloneStack (Maybe ChefConfiguration)
csChefConfiguration = lens _csChefConfiguration (\s a -> s {_csChefConfiguration = a})

-- | The stack's default VPC subnet ID. This parameter is required if you specify a value for the @VpcId@ parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for @DefaultAvailabilityZone@ , the subnet must be in that zone. For information on default values and when this parameter is required, see the @VpcId@ parameter description.
csDefaultSubnetId :: Lens' CloneStack (Maybe Text)
csDefaultSubnetId = lens _csDefaultSubnetId (\s a -> s {_csDefaultSubnetId = a})

-- | Whether to use custom cookbooks.
csUseCustomCookbooks :: Lens' CloneStack (Maybe Bool)
csUseCustomCookbooks = lens _csUseCustomCookbooks (\s a -> s {_csUseCustomCookbooks = a})

-- | The source stack ID.
csSourceStackId :: Lens' CloneStack Text
csSourceStackId = lens _csSourceStackId (\s a -> s {_csSourceStackId = a})

-- | The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for you. You can obtain an existing stack's IAM ARN programmatically by calling 'DescribePermissions' . For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
csServiceRoleARN :: Lens' CloneStack Text
csServiceRoleARN = lens _csServiceRoleARN (\s a -> s {_csServiceRoleARN = a})

instance AWSRequest CloneStack where
  type Rs CloneStack = CloneStackResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          CloneStackResponse'
            <$> (x .?> "StackId") <*> (pure (fromEnum s))
      )

instance Hashable CloneStack

instance NFData CloneStack

instance ToHeaders CloneStack where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OpsWorks_20130218.CloneStack" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CloneStack where
  toJSON CloneStack' {..} =
    object
      ( catMaybes
          [ ("DefaultOs" .=) <$> _csDefaultOS,
            ("UseOpsworksSecurityGroups" .=)
              <$> _csUseOpsworksSecurityGroups,
            ("CustomCookbooksSource" .=)
              <$> _csCustomCookbooksSource,
            ("DefaultAvailabilityZone" .=)
              <$> _csDefaultAvailabilityZone,
            ("AgentVersion" .=) <$> _csAgentVersion,
            ("ClonePermissions" .=) <$> _csClonePermissions,
            ("CustomJson" .=) <$> _csCustomJSON,
            ("DefaultRootDeviceType" .=)
              <$> _csDefaultRootDeviceType,
            ("Attributes" .=) <$> _csAttributes,
            ("Name" .=) <$> _csName,
            ("CloneAppIds" .=) <$> _csCloneAppIds,
            ("DefaultInstanceProfileArn" .=)
              <$> _csDefaultInstanceProfileARN,
            ("HostnameTheme" .=) <$> _csHostnameTheme,
            ("DefaultSshKeyName" .=) <$> _csDefaultSSHKeyName,
            ("ConfigurationManager" .=)
              <$> _csConfigurationManager,
            ("Region" .=) <$> _csRegion,
            ("VpcId" .=) <$> _csVPCId,
            ("ChefConfiguration" .=) <$> _csChefConfiguration,
            ("DefaultSubnetId" .=) <$> _csDefaultSubnetId,
            ("UseCustomCookbooks" .=) <$> _csUseCustomCookbooks,
            Just ("SourceStackId" .= _csSourceStackId),
            Just ("ServiceRoleArn" .= _csServiceRoleARN)
          ]
      )

instance ToPath CloneStack where
  toPath = const "/"

instance ToQuery CloneStack where
  toQuery = const mempty

-- | Contains the response to a @CloneStack@ request.
--
--
--
-- /See:/ 'cloneStackResponse' smart constructor.
data CloneStackResponse = CloneStackResponse'
  { _crsStackId ::
      !(Maybe Text),
    _crsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CloneStackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crsStackId' - The cloned stack ID.
--
-- * 'crsResponseStatus' - -- | The response status code.
cloneStackResponse ::
  -- | 'crsResponseStatus'
  Int ->
  CloneStackResponse
cloneStackResponse pResponseStatus_ =
  CloneStackResponse'
    { _crsStackId = Nothing,
      _crsResponseStatus = pResponseStatus_
    }

-- | The cloned stack ID.
crsStackId :: Lens' CloneStackResponse (Maybe Text)
crsStackId = lens _crsStackId (\s a -> s {_crsStackId = a})

-- | -- | The response status code.
crsResponseStatus :: Lens' CloneStackResponse Int
crsResponseStatus = lens _crsResponseStatus (\s a -> s {_crsResponseStatus = a})

instance NFData CloneStackResponse
