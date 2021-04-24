{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.VPCEConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.VPCEConfiguration where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents an Amazon Virtual Private Cloud (VPC) endpoint configuration.
--
--
--
-- /See:/ 'vpcEConfiguration' smart constructor.
data VPCEConfiguration = VPCEConfiguration'
  { _vecVpceConfigurationName ::
      !(Maybe Text),
    _vecVpceConfigurationDescription ::
      !(Maybe Text),
    _vecArn :: !(Maybe Text),
    _vecServiceDNSName :: !(Maybe Text),
    _vecVpceServiceName ::
      !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VPCEConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vecVpceConfigurationName' - The friendly name you give to your VPC endpoint configuration to manage your configurations more easily.
--
-- * 'vecVpceConfigurationDescription' - An optional description that provides details about your VPC endpoint configuration.
--
-- * 'vecArn' - The Amazon Resource Name (ARN) of the VPC endpoint configuration.
--
-- * 'vecServiceDNSName' - The DNS name that maps to the private IP address of the service you want to access.
--
-- * 'vecVpceServiceName' - The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.
vpcEConfiguration ::
  VPCEConfiguration
vpcEConfiguration =
  VPCEConfiguration'
    { _vecVpceConfigurationName =
        Nothing,
      _vecVpceConfigurationDescription = Nothing,
      _vecArn = Nothing,
      _vecServiceDNSName = Nothing,
      _vecVpceServiceName = Nothing
    }

-- | The friendly name you give to your VPC endpoint configuration to manage your configurations more easily.
vecVpceConfigurationName :: Lens' VPCEConfiguration (Maybe Text)
vecVpceConfigurationName = lens _vecVpceConfigurationName (\s a -> s {_vecVpceConfigurationName = a})

-- | An optional description that provides details about your VPC endpoint configuration.
vecVpceConfigurationDescription :: Lens' VPCEConfiguration (Maybe Text)
vecVpceConfigurationDescription = lens _vecVpceConfigurationDescription (\s a -> s {_vecVpceConfigurationDescription = a})

-- | The Amazon Resource Name (ARN) of the VPC endpoint configuration.
vecArn :: Lens' VPCEConfiguration (Maybe Text)
vecArn = lens _vecArn (\s a -> s {_vecArn = a})

-- | The DNS name that maps to the private IP address of the service you want to access.
vecServiceDNSName :: Lens' VPCEConfiguration (Maybe Text)
vecServiceDNSName = lens _vecServiceDNSName (\s a -> s {_vecServiceDNSName = a})

-- | The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.
vecVpceServiceName :: Lens' VPCEConfiguration (Maybe Text)
vecVpceServiceName = lens _vecVpceServiceName (\s a -> s {_vecVpceServiceName = a})

instance FromJSON VPCEConfiguration where
  parseJSON =
    withObject
      "VPCEConfiguration"
      ( \x ->
          VPCEConfiguration'
            <$> (x .:? "vpceConfigurationName")
            <*> (x .:? "vpceConfigurationDescription")
            <*> (x .:? "arn")
            <*> (x .:? "serviceDnsName")
            <*> (x .:? "vpceServiceName")
      )

instance Hashable VPCEConfiguration

instance NFData VPCEConfiguration
