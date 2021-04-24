{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.StaticIP
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.StaticIP where

import Network.AWS.Lens
import Network.AWS.Lightsail.Types.ResourceLocation
import Network.AWS.Lightsail.Types.ResourceType
import Network.AWS.Prelude

-- | Describes the static IP.
--
--
--
-- /See:/ 'staticIP' smart constructor.
data StaticIP = StaticIP'
  { _siIsAttached ::
      !(Maybe Bool),
    _siCreatedAt :: !(Maybe POSIX),
    _siArn :: !(Maybe Text),
    _siResourceType :: !(Maybe ResourceType),
    _siSupportCode :: !(Maybe Text),
    _siName :: !(Maybe Text),
    _siIpAddress :: !(Maybe Text),
    _siAttachedTo :: !(Maybe Text),
    _siLocation :: !(Maybe ResourceLocation)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StaticIP' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siIsAttached' - A Boolean value indicating whether the static IP is attached.
--
-- * 'siCreatedAt' - The timestamp when the static IP was created (e.g., @1479735304.222@ ).
--
-- * 'siArn' - The Amazon Resource Name (ARN) of the static IP (e.g., @arn:aws:lightsail:us-east-2:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE@ ).
--
-- * 'siResourceType' - The resource type (usually @StaticIp@ ).
--
-- * 'siSupportCode' - The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
--
-- * 'siName' - The name of the static IP (e.g., @StaticIP-Ohio-EXAMPLE@ ).
--
-- * 'siIpAddress' - The static IP address.
--
-- * 'siAttachedTo' - The instance where the static IP is attached (e.g., @Amazon_Linux-1GB-Ohio-1@ ).
--
-- * 'siLocation' - The region and Availability Zone where the static IP was created.
staticIP ::
  StaticIP
staticIP =
  StaticIP'
    { _siIsAttached = Nothing,
      _siCreatedAt = Nothing,
      _siArn = Nothing,
      _siResourceType = Nothing,
      _siSupportCode = Nothing,
      _siName = Nothing,
      _siIpAddress = Nothing,
      _siAttachedTo = Nothing,
      _siLocation = Nothing
    }

-- | A Boolean value indicating whether the static IP is attached.
siIsAttached :: Lens' StaticIP (Maybe Bool)
siIsAttached = lens _siIsAttached (\s a -> s {_siIsAttached = a})

-- | The timestamp when the static IP was created (e.g., @1479735304.222@ ).
siCreatedAt :: Lens' StaticIP (Maybe UTCTime)
siCreatedAt = lens _siCreatedAt (\s a -> s {_siCreatedAt = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the static IP (e.g., @arn:aws:lightsail:us-east-2:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE@ ).
siArn :: Lens' StaticIP (Maybe Text)
siArn = lens _siArn (\s a -> s {_siArn = a})

-- | The resource type (usually @StaticIp@ ).
siResourceType :: Lens' StaticIP (Maybe ResourceType)
siResourceType = lens _siResourceType (\s a -> s {_siResourceType = a})

-- | The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail. This code enables our support team to look up your Lightsail information more easily.
siSupportCode :: Lens' StaticIP (Maybe Text)
siSupportCode = lens _siSupportCode (\s a -> s {_siSupportCode = a})

-- | The name of the static IP (e.g., @StaticIP-Ohio-EXAMPLE@ ).
siName :: Lens' StaticIP (Maybe Text)
siName = lens _siName (\s a -> s {_siName = a})

-- | The static IP address.
siIpAddress :: Lens' StaticIP (Maybe Text)
siIpAddress = lens _siIpAddress (\s a -> s {_siIpAddress = a})

-- | The instance where the static IP is attached (e.g., @Amazon_Linux-1GB-Ohio-1@ ).
siAttachedTo :: Lens' StaticIP (Maybe Text)
siAttachedTo = lens _siAttachedTo (\s a -> s {_siAttachedTo = a})

-- | The region and Availability Zone where the static IP was created.
siLocation :: Lens' StaticIP (Maybe ResourceLocation)
siLocation = lens _siLocation (\s a -> s {_siLocation = a})

instance FromJSON StaticIP where
  parseJSON =
    withObject
      "StaticIP"
      ( \x ->
          StaticIP'
            <$> (x .:? "isAttached")
            <*> (x .:? "createdAt")
            <*> (x .:? "arn")
            <*> (x .:? "resourceType")
            <*> (x .:? "supportCode")
            <*> (x .:? "name")
            <*> (x .:? "ipAddress")
            <*> (x .:? "attachedTo")
            <*> (x .:? "location")
      )

instance Hashable StaticIP

instance NFData StaticIP
