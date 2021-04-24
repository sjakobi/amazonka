{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.ServerLaunchConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerLaunchConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SMS.Types.S3Location
import Network.AWS.SMS.Types.ScriptType
import Network.AWS.SMS.Types.Server
import Network.AWS.SMS.Types.UserData

-- | Launch configuration for a server.
--
--
--
-- /See:/ 'serverLaunchConfiguration' smart constructor.
data ServerLaunchConfiguration = ServerLaunchConfiguration'
  { _slcConfigureScript ::
      !(Maybe S3Location),
    _slcEc2KeyName ::
      !(Maybe Text),
    _slcInstanceType ::
      !(Maybe Text),
    _slcUserData ::
      !(Maybe UserData),
    _slcLogicalId ::
      !(Maybe Text),
    _slcSubnet ::
      !(Maybe Text),
    _slcIamInstanceProfileName ::
      !(Maybe Text),
    _slcServer ::
      !(Maybe Server),
    _slcAssociatePublicIPAddress ::
      !(Maybe Bool),
    _slcConfigureScriptType ::
      !(Maybe ScriptType),
    _slcSecurityGroup ::
      !(Maybe Text),
    _slcVpc ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ServerLaunchConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slcConfigureScript' - Undocumented member.
--
-- * 'slcEc2KeyName' - The name of the Amazon EC2 SSH key to be used for connecting to the launched server.
--
-- * 'slcInstanceType' - The instance type to use when launching the server.
--
-- * 'slcUserData' - Location of the user-data script to be executed when launching the server.
--
-- * 'slcLogicalId' - The logical ID of the server in the AWS CloudFormation template.
--
-- * 'slcSubnet' - The ID of the subnet the server should be launched into.
--
-- * 'slcIamInstanceProfileName' - The name of the IAM instance profile.
--
-- * 'slcServer' - The ID of the server with which the launch configuration is associated.
--
-- * 'slcAssociatePublicIPAddress' - Indicates whether a publicly accessible IP address is created when launching the server.
--
-- * 'slcConfigureScriptType' - The type of configuration script.
--
-- * 'slcSecurityGroup' - The ID of the security group that applies to the launched server.
--
-- * 'slcVpc' - The ID of the VPC into which the server should be launched.
serverLaunchConfiguration ::
  ServerLaunchConfiguration
serverLaunchConfiguration =
  ServerLaunchConfiguration'
    { _slcConfigureScript =
        Nothing,
      _slcEc2KeyName = Nothing,
      _slcInstanceType = Nothing,
      _slcUserData = Nothing,
      _slcLogicalId = Nothing,
      _slcSubnet = Nothing,
      _slcIamInstanceProfileName = Nothing,
      _slcServer = Nothing,
      _slcAssociatePublicIPAddress = Nothing,
      _slcConfigureScriptType = Nothing,
      _slcSecurityGroup = Nothing,
      _slcVpc = Nothing
    }

-- | Undocumented member.
slcConfigureScript :: Lens' ServerLaunchConfiguration (Maybe S3Location)
slcConfigureScript = lens _slcConfigureScript (\s a -> s {_slcConfigureScript = a})

-- | The name of the Amazon EC2 SSH key to be used for connecting to the launched server.
slcEc2KeyName :: Lens' ServerLaunchConfiguration (Maybe Text)
slcEc2KeyName = lens _slcEc2KeyName (\s a -> s {_slcEc2KeyName = a})

-- | The instance type to use when launching the server.
slcInstanceType :: Lens' ServerLaunchConfiguration (Maybe Text)
slcInstanceType = lens _slcInstanceType (\s a -> s {_slcInstanceType = a})

-- | Location of the user-data script to be executed when launching the server.
slcUserData :: Lens' ServerLaunchConfiguration (Maybe UserData)
slcUserData = lens _slcUserData (\s a -> s {_slcUserData = a})

-- | The logical ID of the server in the AWS CloudFormation template.
slcLogicalId :: Lens' ServerLaunchConfiguration (Maybe Text)
slcLogicalId = lens _slcLogicalId (\s a -> s {_slcLogicalId = a})

-- | The ID of the subnet the server should be launched into.
slcSubnet :: Lens' ServerLaunchConfiguration (Maybe Text)
slcSubnet = lens _slcSubnet (\s a -> s {_slcSubnet = a})

-- | The name of the IAM instance profile.
slcIamInstanceProfileName :: Lens' ServerLaunchConfiguration (Maybe Text)
slcIamInstanceProfileName = lens _slcIamInstanceProfileName (\s a -> s {_slcIamInstanceProfileName = a})

-- | The ID of the server with which the launch configuration is associated.
slcServer :: Lens' ServerLaunchConfiguration (Maybe Server)
slcServer = lens _slcServer (\s a -> s {_slcServer = a})

-- | Indicates whether a publicly accessible IP address is created when launching the server.
slcAssociatePublicIPAddress :: Lens' ServerLaunchConfiguration (Maybe Bool)
slcAssociatePublicIPAddress = lens _slcAssociatePublicIPAddress (\s a -> s {_slcAssociatePublicIPAddress = a})

-- | The type of configuration script.
slcConfigureScriptType :: Lens' ServerLaunchConfiguration (Maybe ScriptType)
slcConfigureScriptType = lens _slcConfigureScriptType (\s a -> s {_slcConfigureScriptType = a})

-- | The ID of the security group that applies to the launched server.
slcSecurityGroup :: Lens' ServerLaunchConfiguration (Maybe Text)
slcSecurityGroup = lens _slcSecurityGroup (\s a -> s {_slcSecurityGroup = a})

-- | The ID of the VPC into which the server should be launched.
slcVpc :: Lens' ServerLaunchConfiguration (Maybe Text)
slcVpc = lens _slcVpc (\s a -> s {_slcVpc = a})

instance FromJSON ServerLaunchConfiguration where
  parseJSON =
    withObject
      "ServerLaunchConfiguration"
      ( \x ->
          ServerLaunchConfiguration'
            <$> (x .:? "configureScript")
            <*> (x .:? "ec2KeyName")
            <*> (x .:? "instanceType")
            <*> (x .:? "userData")
            <*> (x .:? "logicalId")
            <*> (x .:? "subnet")
            <*> (x .:? "iamInstanceProfileName")
            <*> (x .:? "server")
            <*> (x .:? "associatePublicIpAddress")
            <*> (x .:? "configureScriptType")
            <*> (x .:? "securityGroup")
            <*> (x .:? "vpc")
      )

instance Hashable ServerLaunchConfiguration

instance NFData ServerLaunchConfiguration

instance ToJSON ServerLaunchConfiguration where
  toJSON ServerLaunchConfiguration' {..} =
    object
      ( catMaybes
          [ ("configureScript" .=) <$> _slcConfigureScript,
            ("ec2KeyName" .=) <$> _slcEc2KeyName,
            ("instanceType" .=) <$> _slcInstanceType,
            ("userData" .=) <$> _slcUserData,
            ("logicalId" .=) <$> _slcLogicalId,
            ("subnet" .=) <$> _slcSubnet,
            ("iamInstanceProfileName" .=)
              <$> _slcIamInstanceProfileName,
            ("server" .=) <$> _slcServer,
            ("associatePublicIpAddress" .=)
              <$> _slcAssociatePublicIPAddress,
            ("configureScriptType" .=)
              <$> _slcConfigureScriptType,
            ("securityGroup" .=) <$> _slcSecurityGroup,
            ("vpc" .=) <$> _slcVpc
          ]
      )
