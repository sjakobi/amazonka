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
-- Module      : Network.AWS.OpsWorks.CreateStack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new stack. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html Create a New Stack> .
--
--
-- __Required Permissions__ : To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html Managing User Permissions> .
module Network.AWS.OpsWorks.CreateStack
  ( -- * Creating a Request
    createStack,
    CreateStack,

    -- * Request Lenses
    cDefaultOS,
    cUseOpsworksSecurityGroups,
    cCustomCookbooksSource,
    cDefaultAvailabilityZone,
    cAgentVersion,
    cCustomJSON,
    cDefaultRootDeviceType,
    cAttributes,
    cHostnameTheme,
    cDefaultSSHKeyName,
    cConfigurationManager,
    cVPCId,
    cChefConfiguration,
    cDefaultSubnetId,
    cUseCustomCookbooks,
    cName,
    cRegion,
    cServiceRoleARN,
    cDefaultInstanceProfileARN,

    -- * Destructuring the Response
    createStackResponse,
    CreateStackResponse,

    -- * Response Lenses
    csrrsStackId,
    csrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.OpsWorks.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createStack' smart constructor.
data CreateStack = CreateStack'
  { _cDefaultOS ::
      !(Maybe Text),
    _cUseOpsworksSecurityGroups :: !(Maybe Bool),
    _cCustomCookbooksSource :: !(Maybe Source),
    _cDefaultAvailabilityZone :: !(Maybe Text),
    _cAgentVersion :: !(Maybe Text),
    _cCustomJSON :: !(Maybe Text),
    _cDefaultRootDeviceType ::
      !(Maybe RootDeviceType),
    _cAttributes ::
      !(Maybe (Map StackAttributesKeys (Maybe Text))),
    _cHostnameTheme :: !(Maybe Text),
    _cDefaultSSHKeyName :: !(Maybe Text),
    _cConfigurationManager ::
      !(Maybe StackConfigurationManager),
    _cVPCId :: !(Maybe Text),
    _cChefConfiguration ::
      !(Maybe ChefConfiguration),
    _cDefaultSubnetId :: !(Maybe Text),
    _cUseCustomCookbooks :: !(Maybe Bool),
    _cName :: !Text,
    _cRegion :: !Text,
    _cServiceRoleARN :: !Text,
    _cDefaultInstanceProfileARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStack' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDefaultOS' - The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.     * A supported Linux operating system: An Amazon Linux version, such as @Amazon Linux 2018.03@ , @Amazon Linux 2017.09@ , @Amazon Linux 2017.03@ , @Amazon Linux 2016.09@ , @Amazon Linux 2016.03@ , @Amazon Linux 2015.09@ , or @Amazon Linux 2015.03@ .     * A supported Ubuntu operating system, such as @Ubuntu 16.04 LTS@ , @Ubuntu 14.04 LTS@ , or @Ubuntu 12.04 LTS@ .     * @CentOS Linux 7@      * @Red Hat Enterprise Linux 7@      * A supported Windows operating system, such as @Microsoft Windows Server 2012 R2 Base@ , @Microsoft Windows Server 2012 R2 with SQL Server Express@ , @Microsoft Windows Server 2012 R2 with SQL Server Standard@ , or @Microsoft Windows Server 2012 R2 with SQL Server Web@ .     * A custom AMI: @Custom@ . You specify the custom AMI you want to use when you create instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html Using Custom AMIs> . The default option is the current Amazon Linux version. For more information about supported operating systems, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html AWS OpsWorks Stacks Operating Systems> .
--
-- * 'cUseOpsworksSecurityGroups' - Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers. AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With @UseOpsworksSecurityGroups@ you can instead provide your own custom security groups. @UseOpsworksSecurityGroups@ has the following settings:      * True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.     * False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
--
-- * 'cCustomCookbooksSource' - Contains the information required to retrieve an app or cookbook from a repository. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Adding Apps> or <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Cookbooks and Recipes> .
--
-- * 'cDefaultAvailabilityZone' - The stack's default Availability Zone, which must be in the specified region. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> . If you also specify a value for @DefaultSubnetId@ , the subnet must be in the same zone. For more information, see the @VpcId@ parameter description.
--
-- * 'cAgentVersion' - The default AWS OpsWorks Stacks agent version. You have the following options:     * Auto-update - Set this parameter to @LATEST@ . AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.     * Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances. The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call 'DescribeAgentVersions' . AgentVersion cannot be set to Chef 12.2.
--
-- * 'cCustomJSON' - A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format: @"{\"key1\": \"value1\", \"key2\": \"value2\",...}"@  For more information about custom JSON, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes> .
--
-- * 'cDefaultRootDeviceType' - The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is @instance-store@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device> .
--
-- * 'cAttributes' - One or more user-defined key-value pairs to be added to the stack attributes.
--
-- * 'cHostnameTheme' - The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, @HostnameTheme@ is set to @Layer_Dependent@ , which creates host names by appending integers to the layer's short name. The other themes are:     * @Baked_Goods@      * @Clouds@      * @Europe_Cities@      * @Fruits@      * @Greek_Deities_and_Titans@      * @Legendary_creatures_from_Japan@      * @Planets_and_Moons@      * @Roman_Deities@      * @Scottish_Islands@      * @US_Cities@      * @Wild_Cats@  To obtain a generated host name, call @GetHostNameSuggestion@ , which returns a host name based on the current theme.
--
-- * 'cDefaultSSHKeyName' - A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html Using SSH to Communicate with an Instance> and <https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html Managing SSH Access> . You can override this setting by specifying a different key pair, or no key pair, when you <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html create an instance> .
--
-- * 'cConfigurationManager' - The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.
--
-- * 'cVPCId' - The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.     * If your account supports EC2-Classic, the default value is @no VPC@ .     * If your account does not support EC2-Classic, the default value is the default VPC for the specified region. If the VPC ID corresponds to a default VPC and you have specified either the @DefaultAvailabilityZone@ or the @DefaultSubnetId@ parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively. If you specify a nondefault VPC ID, note the following:     * It must belong to a VPC in your account that is in the specified region.     * You must specify a value for @DefaultSubnetId@ . For more information about how to use AWS OpsWorks Stacks with a VPC, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html Running a Stack in a VPC> . For more information about default VPC and EC2-Classic, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html Supported Platforms> .
--
-- * 'cChefConfiguration' - A @ChefConfiguration@ object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
--
-- * 'cDefaultSubnetId' - The stack's default VPC subnet ID. This parameter is required if you specify a value for the @VpcId@ parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for @DefaultAvailabilityZone@ , the subnet must be in that zone. For information on default values and when this parameter is required, see the @VpcId@ parameter description.
--
-- * 'cUseCustomCookbooks' - Whether the stack uses custom cookbooks.
--
-- * 'cName' - The stack name.
--
-- * 'cRegion' - The stack's AWS region, such as @ap-south-1@ . For more information about Amazon regions, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
--
-- * 'cServiceRoleARN' - The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
--
-- * 'cDefaultInstanceProfileARN' - The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
createStack ::
  -- | 'cName'
  Text ->
  -- | 'cRegion'
  Text ->
  -- | 'cServiceRoleARN'
  Text ->
  -- | 'cDefaultInstanceProfileARN'
  Text ->
  CreateStack
createStack
  pName_
  pRegion_
  pServiceRoleARN_
  pDefaultInstanceProfileARN_ =
    CreateStack'
      { _cDefaultOS = Nothing,
        _cUseOpsworksSecurityGroups = Nothing,
        _cCustomCookbooksSource = Nothing,
        _cDefaultAvailabilityZone = Nothing,
        _cAgentVersion = Nothing,
        _cCustomJSON = Nothing,
        _cDefaultRootDeviceType = Nothing,
        _cAttributes = Nothing,
        _cHostnameTheme = Nothing,
        _cDefaultSSHKeyName = Nothing,
        _cConfigurationManager = Nothing,
        _cVPCId = Nothing,
        _cChefConfiguration = Nothing,
        _cDefaultSubnetId = Nothing,
        _cUseCustomCookbooks = Nothing,
        _cName = pName_,
        _cRegion = pRegion_,
        _cServiceRoleARN = pServiceRoleARN_,
        _cDefaultInstanceProfileARN =
          pDefaultInstanceProfileARN_
      }

-- | The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.     * A supported Linux operating system: An Amazon Linux version, such as @Amazon Linux 2018.03@ , @Amazon Linux 2017.09@ , @Amazon Linux 2017.03@ , @Amazon Linux 2016.09@ , @Amazon Linux 2016.03@ , @Amazon Linux 2015.09@ , or @Amazon Linux 2015.03@ .     * A supported Ubuntu operating system, such as @Ubuntu 16.04 LTS@ , @Ubuntu 14.04 LTS@ , or @Ubuntu 12.04 LTS@ .     * @CentOS Linux 7@      * @Red Hat Enterprise Linux 7@      * A supported Windows operating system, such as @Microsoft Windows Server 2012 R2 Base@ , @Microsoft Windows Server 2012 R2 with SQL Server Express@ , @Microsoft Windows Server 2012 R2 with SQL Server Standard@ , or @Microsoft Windows Server 2012 R2 with SQL Server Web@ .     * A custom AMI: @Custom@ . You specify the custom AMI you want to use when you create instances. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html Using Custom AMIs> . The default option is the current Amazon Linux version. For more information about supported operating systems, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html AWS OpsWorks Stacks Operating Systems> .
cDefaultOS :: Lens' CreateStack (Maybe Text)
cDefaultOS = lens _cDefaultOS (\s a -> s {_cDefaultOS = a})

-- | Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers. AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With @UseOpsworksSecurityGroups@ you can instead provide your own custom security groups. @UseOpsworksSecurityGroups@ has the following settings:      * True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.     * False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
cUseOpsworksSecurityGroups :: Lens' CreateStack (Maybe Bool)
cUseOpsworksSecurityGroups = lens _cUseOpsworksSecurityGroups (\s a -> s {_cUseOpsworksSecurityGroups = a})

-- | Contains the information required to retrieve an app or cookbook from a repository. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html Adding Apps> or <https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html Cookbooks and Recipes> .
cCustomCookbooksSource :: Lens' CreateStack (Maybe Source)
cCustomCookbooksSource = lens _cCustomCookbooksSource (\s a -> s {_cCustomCookbooksSource = a})

-- | The stack's default Availability Zone, which must be in the specified region. For more information, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> . If you also specify a value for @DefaultSubnetId@ , the subnet must be in the same zone. For more information, see the @VpcId@ parameter description.
cDefaultAvailabilityZone :: Lens' CreateStack (Maybe Text)
cDefaultAvailabilityZone = lens _cDefaultAvailabilityZone (\s a -> s {_cDefaultAvailabilityZone = a})

-- | The default AWS OpsWorks Stacks agent version. You have the following options:     * Auto-update - Set this parameter to @LATEST@ . AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.     * Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances. The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call 'DescribeAgentVersions' . AgentVersion cannot be set to Chef 12.2.
cAgentVersion :: Lens' CreateStack (Maybe Text)
cAgentVersion = lens _cAgentVersion (\s a -> s {_cAgentVersion = a})

-- | A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format: @"{\"key1\": \"value1\", \"key2\": \"value2\",...}"@  For more information about custom JSON, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html Use Custom JSON to Modify the Stack Configuration Attributes> .
cCustomJSON :: Lens' CreateStack (Maybe Text)
cCustomJSON = lens _cCustomJSON (\s a -> s {_cCustomJSON = a})

-- | The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is @instance-store@ . For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device Storage for the Root Device> .
cDefaultRootDeviceType :: Lens' CreateStack (Maybe RootDeviceType)
cDefaultRootDeviceType = lens _cDefaultRootDeviceType (\s a -> s {_cDefaultRootDeviceType = a})

-- | One or more user-defined key-value pairs to be added to the stack attributes.
cAttributes :: Lens' CreateStack (HashMap StackAttributesKeys (Maybe Text))
cAttributes = lens _cAttributes (\s a -> s {_cAttributes = a}) . _Default . _Map

-- | The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, @HostnameTheme@ is set to @Layer_Dependent@ , which creates host names by appending integers to the layer's short name. The other themes are:     * @Baked_Goods@      * @Clouds@      * @Europe_Cities@      * @Fruits@      * @Greek_Deities_and_Titans@      * @Legendary_creatures_from_Japan@      * @Planets_and_Moons@      * @Roman_Deities@      * @Scottish_Islands@      * @US_Cities@      * @Wild_Cats@  To obtain a generated host name, call @GetHostNameSuggestion@ , which returns a host name based on the current theme.
cHostnameTheme :: Lens' CreateStack (Maybe Text)
cHostnameTheme = lens _cHostnameTheme (\s a -> s {_cHostnameTheme = a})

-- | A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html Using SSH to Communicate with an Instance> and <https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html Managing SSH Access> . You can override this setting by specifying a different key pair, or no key pair, when you <https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html create an instance> .
cDefaultSSHKeyName :: Lens' CreateStack (Maybe Text)
cDefaultSSHKeyName = lens _cDefaultSSHKeyName (\s a -> s {_cDefaultSSHKeyName = a})

-- | The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.
cConfigurationManager :: Lens' CreateStack (Maybe StackConfigurationManager)
cConfigurationManager = lens _cConfigurationManager (\s a -> s {_cConfigurationManager = a})

-- | The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.     * If your account supports EC2-Classic, the default value is @no VPC@ .     * If your account does not support EC2-Classic, the default value is the default VPC for the specified region. If the VPC ID corresponds to a default VPC and you have specified either the @DefaultAvailabilityZone@ or the @DefaultSubnetId@ parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively. If you specify a nondefault VPC ID, note the following:     * It must belong to a VPC in your account that is in the specified region.     * You must specify a value for @DefaultSubnetId@ . For more information about how to use AWS OpsWorks Stacks with a VPC, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html Running a Stack in a VPC> . For more information about default VPC and EC2-Classic, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html Supported Platforms> .
cVPCId :: Lens' CreateStack (Maybe Text)
cVPCId = lens _cVPCId (\s a -> s {_cVPCId = a})

-- | A @ChefConfiguration@ object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html Create a New Stack> .
cChefConfiguration :: Lens' CreateStack (Maybe ChefConfiguration)
cChefConfiguration = lens _cChefConfiguration (\s a -> s {_cChefConfiguration = a})

-- | The stack's default VPC subnet ID. This parameter is required if you specify a value for the @VpcId@ parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for @DefaultAvailabilityZone@ , the subnet must be in that zone. For information on default values and when this parameter is required, see the @VpcId@ parameter description.
cDefaultSubnetId :: Lens' CreateStack (Maybe Text)
cDefaultSubnetId = lens _cDefaultSubnetId (\s a -> s {_cDefaultSubnetId = a})

-- | Whether the stack uses custom cookbooks.
cUseCustomCookbooks :: Lens' CreateStack (Maybe Bool)
cUseCustomCookbooks = lens _cUseCustomCookbooks (\s a -> s {_cUseCustomCookbooks = a})

-- | The stack name.
cName :: Lens' CreateStack Text
cName = lens _cName (\s a -> s {_cName = a})

-- | The stack's AWS region, such as @ap-south-1@ . For more information about Amazon regions, see <https://docs.aws.amazon.com/general/latest/gr/rande.html Regions and Endpoints> .
cRegion :: Lens' CreateStack Text
cRegion = lens _cRegion (\s a -> s {_cRegion = a})

-- | The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
cServiceRoleARN :: Lens' CreateStack Text
cServiceRoleARN = lens _cServiceRoleARN (\s a -> s {_cServiceRoleARN = a})

-- | The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html Using Identifiers> .
cDefaultInstanceProfileARN :: Lens' CreateStack Text
cDefaultInstanceProfileARN = lens _cDefaultInstanceProfileARN (\s a -> s {_cDefaultInstanceProfileARN = a})

instance AWSRequest CreateStack where
  type Rs CreateStack = CreateStackResponse
  request = postJSON opsWorks
  response =
    receiveJSON
      ( \s h x ->
          CreateStackResponse'
            <$> (x .?> "StackId") <*> (pure (fromEnum s))
      )

instance Hashable CreateStack

instance NFData CreateStack

instance ToHeaders CreateStack where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("OpsWorks_20130218.CreateStack" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateStack where
  toJSON CreateStack' {..} =
    object
      ( catMaybes
          [ ("DefaultOs" .=) <$> _cDefaultOS,
            ("UseOpsworksSecurityGroups" .=)
              <$> _cUseOpsworksSecurityGroups,
            ("CustomCookbooksSource" .=)
              <$> _cCustomCookbooksSource,
            ("DefaultAvailabilityZone" .=)
              <$> _cDefaultAvailabilityZone,
            ("AgentVersion" .=) <$> _cAgentVersion,
            ("CustomJson" .=) <$> _cCustomJSON,
            ("DefaultRootDeviceType" .=)
              <$> _cDefaultRootDeviceType,
            ("Attributes" .=) <$> _cAttributes,
            ("HostnameTheme" .=) <$> _cHostnameTheme,
            ("DefaultSshKeyName" .=) <$> _cDefaultSSHKeyName,
            ("ConfigurationManager" .=)
              <$> _cConfigurationManager,
            ("VpcId" .=) <$> _cVPCId,
            ("ChefConfiguration" .=) <$> _cChefConfiguration,
            ("DefaultSubnetId" .=) <$> _cDefaultSubnetId,
            ("UseCustomCookbooks" .=) <$> _cUseCustomCookbooks,
            Just ("Name" .= _cName),
            Just ("Region" .= _cRegion),
            Just ("ServiceRoleArn" .= _cServiceRoleARN),
            Just
              ( "DefaultInstanceProfileArn"
                  .= _cDefaultInstanceProfileARN
              )
          ]
      )

instance ToPath CreateStack where
  toPath = const "/"

instance ToQuery CreateStack where
  toQuery = const mempty

-- | Contains the response to a @CreateStack@ request.
--
--
--
-- /See:/ 'createStackResponse' smart constructor.
data CreateStackResponse = CreateStackResponse'
  { _csrrsStackId ::
      !(Maybe Text),
    _csrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateStackResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsStackId' - The stack ID, which is an opaque string that you use to identify the stack when performing actions such as @DescribeStacks@ .
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createStackResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateStackResponse
createStackResponse pResponseStatus_ =
  CreateStackResponse'
    { _csrrsStackId = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The stack ID, which is an opaque string that you use to identify the stack when performing actions such as @DescribeStacks@ .
csrrsStackId :: Lens' CreateStackResponse (Maybe Text)
csrrsStackId = lens _csrrsStackId (\s a -> s {_csrrsStackId = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateStackResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateStackResponse
