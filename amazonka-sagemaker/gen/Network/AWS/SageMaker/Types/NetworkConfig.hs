{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.NetworkConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.NetworkConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.VPCConfig

-- | Networking options for a job, such as network traffic encryption between containers, whether to allow inbound and outbound network calls to and from containers, and the VPC subnets and security groups to use for VPC-enabled jobs.
--
--
--
-- /See:/ 'networkConfig' smart constructor.
data NetworkConfig = NetworkConfig'
  { _ncVPCConfig ::
      !(Maybe VPCConfig),
    _ncEnableNetworkIsolation :: !(Maybe Bool),
    _ncEnableInterContainerTrafficEncryption ::
      !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ncVPCConfig' - Undocumented member.
--
-- * 'ncEnableNetworkIsolation' - Whether to allow inbound and outbound network calls to and from the containers used for the processing job.
--
-- * 'ncEnableInterContainerTrafficEncryption' - Whether to encrypt all communications between distributed processing jobs. Choose @True@ to encrypt communications. Encryption provides greater security for distributed processing jobs, but the processing might take longer.
networkConfig ::
  NetworkConfig
networkConfig =
  NetworkConfig'
    { _ncVPCConfig = Nothing,
      _ncEnableNetworkIsolation = Nothing,
      _ncEnableInterContainerTrafficEncryption = Nothing
    }

-- | Undocumented member.
ncVPCConfig :: Lens' NetworkConfig (Maybe VPCConfig)
ncVPCConfig = lens _ncVPCConfig (\s a -> s {_ncVPCConfig = a})

-- | Whether to allow inbound and outbound network calls to and from the containers used for the processing job.
ncEnableNetworkIsolation :: Lens' NetworkConfig (Maybe Bool)
ncEnableNetworkIsolation = lens _ncEnableNetworkIsolation (\s a -> s {_ncEnableNetworkIsolation = a})

-- | Whether to encrypt all communications between distributed processing jobs. Choose @True@ to encrypt communications. Encryption provides greater security for distributed processing jobs, but the processing might take longer.
ncEnableInterContainerTrafficEncryption :: Lens' NetworkConfig (Maybe Bool)
ncEnableInterContainerTrafficEncryption = lens _ncEnableInterContainerTrafficEncryption (\s a -> s {_ncEnableInterContainerTrafficEncryption = a})

instance FromJSON NetworkConfig where
  parseJSON =
    withObject
      "NetworkConfig"
      ( \x ->
          NetworkConfig'
            <$> (x .:? "VpcConfig")
            <*> (x .:? "EnableNetworkIsolation")
            <*> (x .:? "EnableInterContainerTrafficEncryption")
      )

instance Hashable NetworkConfig

instance NFData NetworkConfig

instance ToJSON NetworkConfig where
  toJSON NetworkConfig' {..} =
    object
      ( catMaybes
          [ ("VpcConfig" .=) <$> _ncVPCConfig,
            ("EnableNetworkIsolation" .=)
              <$> _ncEnableNetworkIsolation,
            ("EnableInterContainerTrafficEncryption" .=)
              <$> _ncEnableInterContainerTrafficEncryption
          ]
      )
