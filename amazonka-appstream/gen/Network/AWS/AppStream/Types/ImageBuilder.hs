{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.ImageBuilder
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ImageBuilder where

import Network.AWS.AppStream.Types.AccessEndpoint
import Network.AWS.AppStream.Types.DomainJoinInfo
import Network.AWS.AppStream.Types.ImageBuilderState
import Network.AWS.AppStream.Types.ImageBuilderStateChangeReason
import Network.AWS.AppStream.Types.NetworkAccessConfiguration
import Network.AWS.AppStream.Types.PlatformType
import Network.AWS.AppStream.Types.ResourceError
import Network.AWS.AppStream.Types.VPCConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a virtual machine that is used to create an image.
--
--
--
-- /See:/ 'imageBuilder' smart constructor.
data ImageBuilder = ImageBuilder'
  { _ibPlatform ::
      !(Maybe PlatformType),
    _ibVPCConfig :: !(Maybe VPCConfig),
    _ibIAMRoleARN :: !(Maybe Text),
    _ibAccessEndpoints ::
      !(Maybe (List1 AccessEndpoint)),
    _ibDomainJoinInfo :: !(Maybe DomainJoinInfo),
    _ibInstanceType :: !(Maybe Text),
    _ibARN :: !(Maybe Text),
    _ibStateChangeReason ::
      !(Maybe ImageBuilderStateChangeReason),
    _ibCreatedTime :: !(Maybe POSIX),
    _ibNetworkAccessConfiguration ::
      !(Maybe NetworkAccessConfiguration),
    _ibState :: !(Maybe ImageBuilderState),
    _ibAppstreamAgentVersion :: !(Maybe Text),
    _ibDescription :: !(Maybe Text),
    _ibDisplayName :: !(Maybe Text),
    _ibEnableDefaultInternetAccess ::
      !(Maybe Bool),
    _ibImageBuilderErrors ::
      !(Maybe [ResourceError]),
    _ibImageARN :: !(Maybe Text),
    _ibName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageBuilder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibPlatform' - The operating system platform of the image builder.
--
-- * 'ibVPCConfig' - The VPC configuration of the image builder.
--
-- * 'ibIAMRoleARN' - The ARN of the IAM role that is applied to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) @AssumeRole@ API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the __appstream_machine_role__ credential profile on the instance. For more information, see <https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances> in the /Amazon AppStream 2.0 Administration Guide/ .
--
-- * 'ibAccessEndpoints' - The list of virtual private cloud (VPC) interface endpoint objects. Administrators can connect to the image builder only through the specified endpoints.
--
-- * 'ibDomainJoinInfo' - The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain.
--
-- * 'ibInstanceType' - The instance type for the image builder. The following instance types are available:     * stream.standard.small     * stream.standard.medium     * stream.standard.large     * stream.compute.large     * stream.compute.xlarge     * stream.compute.2xlarge     * stream.compute.4xlarge     * stream.compute.8xlarge     * stream.memory.large     * stream.memory.xlarge     * stream.memory.2xlarge     * stream.memory.4xlarge     * stream.memory.8xlarge     * stream.memory.z1d.large     * stream.memory.z1d.xlarge     * stream.memory.z1d.2xlarge     * stream.memory.z1d.3xlarge     * stream.memory.z1d.6xlarge     * stream.memory.z1d.12xlarge     * stream.graphics-design.large     * stream.graphics-design.xlarge     * stream.graphics-design.2xlarge     * stream.graphics-design.4xlarge     * stream.graphics-desktop.2xlarge     * stream.graphics.g4dn.xlarge     * stream.graphics.g4dn.2xlarge     * stream.graphics.g4dn.4xlarge     * stream.graphics.g4dn.8xlarge     * stream.graphics.g4dn.12xlarge     * stream.graphics.g4dn.16xlarge     * stream.graphics-pro.4xlarge     * stream.graphics-pro.8xlarge     * stream.graphics-pro.16xlarge
--
-- * 'ibARN' - The ARN for the image builder.
--
-- * 'ibStateChangeReason' - The reason why the last state change occurred.
--
-- * 'ibCreatedTime' - The time stamp when the image builder was created.
--
-- * 'ibNetworkAccessConfiguration' - Undocumented member.
--
-- * 'ibState' - The state of the image builder.
--
-- * 'ibAppstreamAgentVersion' - The version of the AppStream 2.0 agent that is currently being used by the image builder.
--
-- * 'ibDescription' - The description to display.
--
-- * 'ibDisplayName' - The image builder name to display.
--
-- * 'ibEnableDefaultInternetAccess' - Enables or disables default internet access for the image builder.
--
-- * 'ibImageBuilderErrors' - The image builder errors.
--
-- * 'ibImageARN' - The ARN of the image from which this builder was created.
--
-- * 'ibName' - The name of the image builder.
imageBuilder ::
  -- | 'ibName'
  Text ->
  ImageBuilder
imageBuilder pName_ =
  ImageBuilder'
    { _ibPlatform = Nothing,
      _ibVPCConfig = Nothing,
      _ibIAMRoleARN = Nothing,
      _ibAccessEndpoints = Nothing,
      _ibDomainJoinInfo = Nothing,
      _ibInstanceType = Nothing,
      _ibARN = Nothing,
      _ibStateChangeReason = Nothing,
      _ibCreatedTime = Nothing,
      _ibNetworkAccessConfiguration = Nothing,
      _ibState = Nothing,
      _ibAppstreamAgentVersion = Nothing,
      _ibDescription = Nothing,
      _ibDisplayName = Nothing,
      _ibEnableDefaultInternetAccess = Nothing,
      _ibImageBuilderErrors = Nothing,
      _ibImageARN = Nothing,
      _ibName = pName_
    }

-- | The operating system platform of the image builder.
ibPlatform :: Lens' ImageBuilder (Maybe PlatformType)
ibPlatform = lens _ibPlatform (\s a -> s {_ibPlatform = a})

-- | The VPC configuration of the image builder.
ibVPCConfig :: Lens' ImageBuilder (Maybe VPCConfig)
ibVPCConfig = lens _ibVPCConfig (\s a -> s {_ibVPCConfig = a})

-- | The ARN of the IAM role that is applied to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) @AssumeRole@ API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the __appstream_machine_role__ credential profile on the instance. For more information, see <https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances> in the /Amazon AppStream 2.0 Administration Guide/ .
ibIAMRoleARN :: Lens' ImageBuilder (Maybe Text)
ibIAMRoleARN = lens _ibIAMRoleARN (\s a -> s {_ibIAMRoleARN = a})

-- | The list of virtual private cloud (VPC) interface endpoint objects. Administrators can connect to the image builder only through the specified endpoints.
ibAccessEndpoints :: Lens' ImageBuilder (Maybe (NonEmpty AccessEndpoint))
ibAccessEndpoints = lens _ibAccessEndpoints (\s a -> s {_ibAccessEndpoints = a}) . mapping _List1

-- | The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain.
ibDomainJoinInfo :: Lens' ImageBuilder (Maybe DomainJoinInfo)
ibDomainJoinInfo = lens _ibDomainJoinInfo (\s a -> s {_ibDomainJoinInfo = a})

-- | The instance type for the image builder. The following instance types are available:     * stream.standard.small     * stream.standard.medium     * stream.standard.large     * stream.compute.large     * stream.compute.xlarge     * stream.compute.2xlarge     * stream.compute.4xlarge     * stream.compute.8xlarge     * stream.memory.large     * stream.memory.xlarge     * stream.memory.2xlarge     * stream.memory.4xlarge     * stream.memory.8xlarge     * stream.memory.z1d.large     * stream.memory.z1d.xlarge     * stream.memory.z1d.2xlarge     * stream.memory.z1d.3xlarge     * stream.memory.z1d.6xlarge     * stream.memory.z1d.12xlarge     * stream.graphics-design.large     * stream.graphics-design.xlarge     * stream.graphics-design.2xlarge     * stream.graphics-design.4xlarge     * stream.graphics-desktop.2xlarge     * stream.graphics.g4dn.xlarge     * stream.graphics.g4dn.2xlarge     * stream.graphics.g4dn.4xlarge     * stream.graphics.g4dn.8xlarge     * stream.graphics.g4dn.12xlarge     * stream.graphics.g4dn.16xlarge     * stream.graphics-pro.4xlarge     * stream.graphics-pro.8xlarge     * stream.graphics-pro.16xlarge
ibInstanceType :: Lens' ImageBuilder (Maybe Text)
ibInstanceType = lens _ibInstanceType (\s a -> s {_ibInstanceType = a})

-- | The ARN for the image builder.
ibARN :: Lens' ImageBuilder (Maybe Text)
ibARN = lens _ibARN (\s a -> s {_ibARN = a})

-- | The reason why the last state change occurred.
ibStateChangeReason :: Lens' ImageBuilder (Maybe ImageBuilderStateChangeReason)
ibStateChangeReason = lens _ibStateChangeReason (\s a -> s {_ibStateChangeReason = a})

-- | The time stamp when the image builder was created.
ibCreatedTime :: Lens' ImageBuilder (Maybe UTCTime)
ibCreatedTime = lens _ibCreatedTime (\s a -> s {_ibCreatedTime = a}) . mapping _Time

-- | Undocumented member.
ibNetworkAccessConfiguration :: Lens' ImageBuilder (Maybe NetworkAccessConfiguration)
ibNetworkAccessConfiguration = lens _ibNetworkAccessConfiguration (\s a -> s {_ibNetworkAccessConfiguration = a})

-- | The state of the image builder.
ibState :: Lens' ImageBuilder (Maybe ImageBuilderState)
ibState = lens _ibState (\s a -> s {_ibState = a})

-- | The version of the AppStream 2.0 agent that is currently being used by the image builder.
ibAppstreamAgentVersion :: Lens' ImageBuilder (Maybe Text)
ibAppstreamAgentVersion = lens _ibAppstreamAgentVersion (\s a -> s {_ibAppstreamAgentVersion = a})

-- | The description to display.
ibDescription :: Lens' ImageBuilder (Maybe Text)
ibDescription = lens _ibDescription (\s a -> s {_ibDescription = a})

-- | The image builder name to display.
ibDisplayName :: Lens' ImageBuilder (Maybe Text)
ibDisplayName = lens _ibDisplayName (\s a -> s {_ibDisplayName = a})

-- | Enables or disables default internet access for the image builder.
ibEnableDefaultInternetAccess :: Lens' ImageBuilder (Maybe Bool)
ibEnableDefaultInternetAccess = lens _ibEnableDefaultInternetAccess (\s a -> s {_ibEnableDefaultInternetAccess = a})

-- | The image builder errors.
ibImageBuilderErrors :: Lens' ImageBuilder [ResourceError]
ibImageBuilderErrors = lens _ibImageBuilderErrors (\s a -> s {_ibImageBuilderErrors = a}) . _Default . _Coerce

-- | The ARN of the image from which this builder was created.
ibImageARN :: Lens' ImageBuilder (Maybe Text)
ibImageARN = lens _ibImageARN (\s a -> s {_ibImageARN = a})

-- | The name of the image builder.
ibName :: Lens' ImageBuilder Text
ibName = lens _ibName (\s a -> s {_ibName = a})

instance FromJSON ImageBuilder where
  parseJSON =
    withObject
      "ImageBuilder"
      ( \x ->
          ImageBuilder'
            <$> (x .:? "Platform")
            <*> (x .:? "VpcConfig")
            <*> (x .:? "IamRoleArn")
            <*> (x .:? "AccessEndpoints")
            <*> (x .:? "DomainJoinInfo")
            <*> (x .:? "InstanceType")
            <*> (x .:? "Arn")
            <*> (x .:? "StateChangeReason")
            <*> (x .:? "CreatedTime")
            <*> (x .:? "NetworkAccessConfiguration")
            <*> (x .:? "State")
            <*> (x .:? "AppstreamAgentVersion")
            <*> (x .:? "Description")
            <*> (x .:? "DisplayName")
            <*> (x .:? "EnableDefaultInternetAccess")
            <*> (x .:? "ImageBuilderErrors" .!= mempty)
            <*> (x .:? "ImageArn")
            <*> (x .: "Name")
      )

instance Hashable ImageBuilder

instance NFData ImageBuilder
