{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringNetworkConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringNetworkConfig where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.VPCConfig

-- | The networking configuration for the monitoring job.
--
--
--
-- /See:/ 'monitoringNetworkConfig' smart constructor.
data MonitoringNetworkConfig = MonitoringNetworkConfig'
  { _mncVPCConfig ::
      !(Maybe VPCConfig),
    _mncEnableNetworkIsolation ::
      !(Maybe Bool),
    _mncEnableInterContainerTrafficEncryption ::
      !(Maybe Bool)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'MonitoringNetworkConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mncVPCConfig' - Undocumented member.
--
-- * 'mncEnableNetworkIsolation' - Whether to allow inbound and outbound network calls to and from the containers used for the monitoring job.
--
-- * 'mncEnableInterContainerTrafficEncryption' - Whether to encrypt all communications between the instances used for the monitoring jobs. Choose @True@ to encrypt communications. Encryption provides greater security for distributed jobs, but the processing might take longer.
monitoringNetworkConfig ::
  MonitoringNetworkConfig
monitoringNetworkConfig =
  MonitoringNetworkConfig'
    { _mncVPCConfig = Nothing,
      _mncEnableNetworkIsolation = Nothing,
      _mncEnableInterContainerTrafficEncryption =
        Nothing
    }

-- | Undocumented member.
mncVPCConfig :: Lens' MonitoringNetworkConfig (Maybe VPCConfig)
mncVPCConfig = lens _mncVPCConfig (\s a -> s {_mncVPCConfig = a})

-- | Whether to allow inbound and outbound network calls to and from the containers used for the monitoring job.
mncEnableNetworkIsolation :: Lens' MonitoringNetworkConfig (Maybe Bool)
mncEnableNetworkIsolation = lens _mncEnableNetworkIsolation (\s a -> s {_mncEnableNetworkIsolation = a})

-- | Whether to encrypt all communications between the instances used for the monitoring jobs. Choose @True@ to encrypt communications. Encryption provides greater security for distributed jobs, but the processing might take longer.
mncEnableInterContainerTrafficEncryption :: Lens' MonitoringNetworkConfig (Maybe Bool)
mncEnableInterContainerTrafficEncryption = lens _mncEnableInterContainerTrafficEncryption (\s a -> s {_mncEnableInterContainerTrafficEncryption = a})

instance FromJSON MonitoringNetworkConfig where
  parseJSON =
    withObject
      "MonitoringNetworkConfig"
      ( \x ->
          MonitoringNetworkConfig'
            <$> (x .:? "VpcConfig")
            <*> (x .:? "EnableNetworkIsolation")
            <*> (x .:? "EnableInterContainerTrafficEncryption")
      )

instance Hashable MonitoringNetworkConfig

instance NFData MonitoringNetworkConfig

instance ToJSON MonitoringNetworkConfig where
  toJSON MonitoringNetworkConfig' {..} =
    object
      ( catMaybes
          [ ("VpcConfig" .=) <$> _mncVPCConfig,
            ("EnableNetworkIsolation" .=)
              <$> _mncEnableNetworkIsolation,
            ("EnableInterContainerTrafficEncryption" .=)
              <$> _mncEnableInterContainerTrafficEncryption
          ]
      )
