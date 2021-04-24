{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.Instance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.Instance where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.AddOn
import Network.AWS.Lightsail.Types.IPAddressType
import Network.AWS.Lightsail.Types.InstanceHardware
import Network.AWS.Lightsail.Types.InstanceNetworking
import Network.AWS.Lightsail.Types.InstanceState
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Lightsail.Types.Tag
import Network.AWS.Prelude

-- | Describes an instance (a virtual private server).
--
--
--
-- /See:/ 'instance'' smart constructor.
data Instance = Instance'
  { _iIpAddressType ::
      !(Maybe IPAddressType),
    _iIpv6Addresses :: !(Maybe [Text]),
    _iBundleId :: !(Maybe Text),
    _iHardware :: !(Maybe InstanceHardware),
    _iAddOns :: !(Maybe [AddOn]),
    _iBlueprintName :: !(Maybe Text),
    _iSshKeyName :: !(Maybe Text),
    _iCreatedAt :: !(Maybe POSIX),
    _iArn :: !(Maybe Text),
    _iBlueprintId :: !(Maybe Text),
    _iResourceType :: !(Maybe ResourceType),
    _iSupportCode :: !(Maybe Text),
    _iState :: !(Maybe InstanceState),
    _iName :: !(Maybe Text),
    _iTags :: !(Maybe [Tag]),
    _iNetworking :: !(Maybe InstanceNetworking),
    _iUsername :: !(Maybe Text),
    _iPublicIPAddress :: !(Maybe Text),
    _iIsStaticIP :: !(Maybe Bool),
    _iLocation :: !(Maybe ResourceLocation),
    _iPrivateIPAddress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iIpAddressType' - The IP address type of the instance. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6.
--
-- * 'iIpv6Addresses' - The IPv6 addresses of the instance.
--
-- * 'iBundleId' - The bundle for the instance (e.g., @micro_1_0@ ).
--
-- * 'iHardware' - The size of the vCPU and the amount of RAM for the instance.
--
-- * 'iAddOns' - An array of objects representing the add-ons enabled on the instance.
--
-- * 'iBlueprintName' - The friendly name of the blueprint (e.g., @Amazon Linux@ ).
--
-- * 'iSshKeyName' - The name of the SSH key being used to connect to the instance (e.g., @LightsailDefaultKeyPair@ ).
--
-- * 'iCreatedAt' - The timestamp when the instance was created (e.g., @1479734909.17@ ) in Unix time format.
--
-- * 'iArn' - The Amazon Resource Name (ARN) of the instance (e.g., @arn:aws:lightsail:us-east-2:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE@ ).
--
-- * 'iBlueprintId' - The blueprint ID (e.g., @os_amlinux_2016_03@ ).
--
-- * 'iResourceType' - The type of resource (usually @Instance@ ).
--
-- * 'iSupportCode' - The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
--
-- * 'iState' - The status code and the state (e.g., @running@ ) for the instance.
--
-- * 'iName' - The name the user gave the instance (e.g., @Amazon_Linux-1GB-Ohio-1@ ).
--
-- * 'iTags' - The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
--
-- * 'iNetworking' - Information about the public ports and monthly data transfer rates for the instance.
--
-- * 'iUsername' - The user name for connecting to the instance (e.g., @ec2-user@ ).
--
-- * 'iPublicIPAddress' - The public IP address of the instance.
--
-- * 'iIsStaticIP' - A Boolean value indicating whether this instance has a static IP assigned to it.
--
-- * 'iLocation' - The region name and Availability Zone where the instance is located.
--
-- * 'iPrivateIPAddress' - The private IP address of the instance.
instance' ::
  Instance
instance' =
  Instance'
    { _iIpAddressType = Nothing,
      _iIpv6Addresses = Nothing,
      _iBundleId = Nothing,
      _iHardware = Nothing,
      _iAddOns = Nothing,
      _iBlueprintName = Nothing,
      _iSshKeyName = Nothing,
      _iCreatedAt = Nothing,
      _iArn = Nothing,
      _iBlueprintId = Nothing,
      _iResourceType = Nothing,
      _iSupportCode = Nothing,
      _iState = Nothing,
      _iName = Nothing,
      _iTags = Nothing,
      _iNetworking = Nothing,
      _iUsername = Nothing,
      _iPublicIPAddress = Nothing,
      _iIsStaticIP = Nothing,
      _iLocation = Nothing,
      _iPrivateIPAddress = Nothing
    }

-- | The IP address type of the instance. The possible values are @ipv4@ for IPv4 only, and @dualstack@ for IPv4 and IPv6.
iIpAddressType :: Lens' Instance (Maybe IPAddressType)
iIpAddressType = lens _iIpAddressType (\s a -> s {_iIpAddressType = a})

-- | The IPv6 addresses of the instance.
iIpv6Addresses :: Lens' Instance [Text]
iIpv6Addresses = lens _iIpv6Addresses (\s a -> s {_iIpv6Addresses = a}) . _Default . _Coerce

-- | The bundle for the instance (e.g., @micro_1_0@ ).
iBundleId :: Lens' Instance (Maybe Text)
iBundleId = lens _iBundleId (\s a -> s {_iBundleId = a})

-- | The size of the vCPU and the amount of RAM for the instance.
iHardware :: Lens' Instance (Maybe InstanceHardware)
iHardware = lens _iHardware (\s a -> s {_iHardware = a})

-- | An array of objects representing the add-ons enabled on the instance.
iAddOns :: Lens' Instance [AddOn]
iAddOns = lens _iAddOns (\s a -> s {_iAddOns = a}) . _Default . _Coerce

-- | The friendly name of the blueprint (e.g., @Amazon Linux@ ).
iBlueprintName :: Lens' Instance (Maybe Text)
iBlueprintName = lens _iBlueprintName (\s a -> s {_iBlueprintName = a})

-- | The name of the SSH key being used to connect to the instance (e.g., @LightsailDefaultKeyPair@ ).
iSshKeyName :: Lens' Instance (Maybe Text)
iSshKeyName = lens _iSshKeyName (\s a -> s {_iSshKeyName = a})

-- | The timestamp when the instance was created (e.g., @1479734909.17@ ) in Unix time format.
iCreatedAt :: Lens' Instance (Maybe UTCTime)
iCreatedAt = lens _iCreatedAt (\s a -> s {_iCreatedAt = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the instance (e.g., @arn:aws:lightsail:us-east-2:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE@ ).
iArn :: Lens' Instance (Maybe Text)
iArn = lens _iArn (\s a -> s {_iArn = a})

-- | The blueprint ID (e.g., @os_amlinux_2016_03@ ).
iBlueprintId :: Lens' Instance (Maybe Text)
iBlueprintId = lens _iBlueprintId (\s a -> s {_iBlueprintId = a})

-- | The type of resource (usually @Instance@ ).
iResourceType :: Lens' Instance (Maybe ResourceType)
iResourceType = lens _iResourceType (\s a -> s {_iResourceType = a})

-- | The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
iSupportCode :: Lens' Instance (Maybe Text)
iSupportCode = lens _iSupportCode (\s a -> s {_iSupportCode = a})

-- | The status code and the state (e.g., @running@ ) for the instance.
iState :: Lens' Instance (Maybe InstanceState)
iState = lens _iState (\s a -> s {_iState = a})

-- | The name the user gave the instance (e.g., @Amazon_Linux-1GB-Ohio-1@ ).
iName :: Lens' Instance (Maybe Text)
iName = lens _iName (\s a -> s {_iName = a})

-- | The tag keys and optional values for the resource. For more information about tags in Lightsail, see the <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags Lightsail Dev Guide> .
iTags :: Lens' Instance [Tag]
iTags = lens _iTags (\s a -> s {_iTags = a}) . _Default . _Coerce

-- | Information about the public ports and monthly data transfer rates for the instance.
iNetworking :: Lens' Instance (Maybe InstanceNetworking)
iNetworking = lens _iNetworking (\s a -> s {_iNetworking = a})

-- | The user name for connecting to the instance (e.g., @ec2-user@ ).
iUsername :: Lens' Instance (Maybe Text)
iUsername = lens _iUsername (\s a -> s {_iUsername = a})

-- | The public IP address of the instance.
iPublicIPAddress :: Lens' Instance (Maybe Text)
iPublicIPAddress = lens _iPublicIPAddress (\s a -> s {_iPublicIPAddress = a})

-- | A Boolean value indicating whether this instance has a static IP assigned to it.
iIsStaticIP :: Lens' Instance (Maybe Bool)
iIsStaticIP = lens _iIsStaticIP (\s a -> s {_iIsStaticIP = a})

-- | The region name and Availability Zone where the instance is located.
iLocation :: Lens' Instance (Maybe ResourceLocation)
iLocation = lens _iLocation (\s a -> s {_iLocation = a})

-- | The private IP address of the instance.
iPrivateIPAddress :: Lens' Instance (Maybe Text)
iPrivateIPAddress = lens _iPrivateIPAddress (\s a -> s {_iPrivateIPAddress = a})

instance FromJSON Instance where
  parseJSON =
    withObject
      "Instance"
      ( \x ->
          Instance'
            <$> (x .:? "ipAddressType")
            <*> (x .:? "ipv6Addresses" .!= mempty)
            <*> (x .:? "bundleId")
            <*> (x .:? "hardware")
            <*> (x .:? "addOns" .!= mempty)
            <*> (x .:? "blueprintName")
            <*> (x .:? "sshKeyName")
            <*> (x .:? "createdAt")
            <*> (x .:? "arn")
            <*> (x .:? "blueprintId")
            <*> (x .:? "resourceType")
            <*> (x .:? "supportCode")
            <*> (x .:? "state")
            <*> (x .:? "name")
            <*> (x .:? "tags" .!= mempty)
            <*> (x .:? "networking")
            <*> (x .:? "username")
            <*> (x .:? "publicIpAddress")
            <*> (x .:? "isStaticIp")
            <*> (x .:? "location")
            <*> (x .:? "privateIpAddress")
      )

instance Hashable Instance

instance NFData Instance
