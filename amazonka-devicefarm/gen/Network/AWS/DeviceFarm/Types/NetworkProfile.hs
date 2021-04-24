{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.NetworkProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.NetworkProfile where

import Network.AWS.DeviceFarm.Types.NetworkProfileType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | An array of settings that describes characteristics of a network profile.
--
--
--
-- /See:/ 'networkProfile' smart constructor.
data NetworkProfile = NetworkProfile'
  { _npUplinkJitterMs ::
      !(Maybe Integer),
    _npDownlinkDelayMs :: !(Maybe Integer),
    _npDownlinkBandwidthBits ::
      !(Maybe Integer),
    _npDownlinkJitterMs :: !(Maybe Integer),
    _npUplinkLossPercent :: !(Maybe Nat),
    _npArn :: !(Maybe Text),
    _npDownlinkLossPercent :: !(Maybe Nat),
    _npName :: !(Maybe Text),
    _npDescription :: !(Maybe Text),
    _npUplinkDelayMs :: !(Maybe Integer),
    _npUplinkBandwidthBits ::
      !(Maybe Integer),
    _npType :: !(Maybe NetworkProfileType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworkProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npUplinkJitterMs' - Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.
--
-- * 'npDownlinkDelayMs' - Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.
--
-- * 'npDownlinkBandwidthBits' - The data throughput rate in bits per second, as an integer from 0 to 104857600.
--
-- * 'npDownlinkJitterMs' - Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.
--
-- * 'npUplinkLossPercent' - Proportion of transmitted packets that fail to arrive from 0 to 100 percent.
--
-- * 'npArn' - The Amazon Resource Name (ARN) of the network profile.
--
-- * 'npDownlinkLossPercent' - Proportion of received packets that fail to arrive from 0 to 100 percent.
--
-- * 'npName' - The name of the network profile.
--
-- * 'npDescription' - The description of the network profile.
--
-- * 'npUplinkDelayMs' - Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.
--
-- * 'npUplinkBandwidthBits' - The data throughput rate in bits per second, as an integer from 0 to 104857600.
--
-- * 'npType' - The type of network profile. Valid values are listed here.
networkProfile ::
  NetworkProfile
networkProfile =
  NetworkProfile'
    { _npUplinkJitterMs = Nothing,
      _npDownlinkDelayMs = Nothing,
      _npDownlinkBandwidthBits = Nothing,
      _npDownlinkJitterMs = Nothing,
      _npUplinkLossPercent = Nothing,
      _npArn = Nothing,
      _npDownlinkLossPercent = Nothing,
      _npName = Nothing,
      _npDescription = Nothing,
      _npUplinkDelayMs = Nothing,
      _npUplinkBandwidthBits = Nothing,
      _npType = Nothing
    }

-- | Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.
npUplinkJitterMs :: Lens' NetworkProfile (Maybe Integer)
npUplinkJitterMs = lens _npUplinkJitterMs (\s a -> s {_npUplinkJitterMs = a})

-- | Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.
npDownlinkDelayMs :: Lens' NetworkProfile (Maybe Integer)
npDownlinkDelayMs = lens _npDownlinkDelayMs (\s a -> s {_npDownlinkDelayMs = a})

-- | The data throughput rate in bits per second, as an integer from 0 to 104857600.
npDownlinkBandwidthBits :: Lens' NetworkProfile (Maybe Integer)
npDownlinkBandwidthBits = lens _npDownlinkBandwidthBits (\s a -> s {_npDownlinkBandwidthBits = a})

-- | Time variation in the delay of received packets in milliseconds as an integer from 0 to 2000.
npDownlinkJitterMs :: Lens' NetworkProfile (Maybe Integer)
npDownlinkJitterMs = lens _npDownlinkJitterMs (\s a -> s {_npDownlinkJitterMs = a})

-- | Proportion of transmitted packets that fail to arrive from 0 to 100 percent.
npUplinkLossPercent :: Lens' NetworkProfile (Maybe Natural)
npUplinkLossPercent = lens _npUplinkLossPercent (\s a -> s {_npUplinkLossPercent = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the network profile.
npArn :: Lens' NetworkProfile (Maybe Text)
npArn = lens _npArn (\s a -> s {_npArn = a})

-- | Proportion of received packets that fail to arrive from 0 to 100 percent.
npDownlinkLossPercent :: Lens' NetworkProfile (Maybe Natural)
npDownlinkLossPercent = lens _npDownlinkLossPercent (\s a -> s {_npDownlinkLossPercent = a}) . mapping _Nat

-- | The name of the network profile.
npName :: Lens' NetworkProfile (Maybe Text)
npName = lens _npName (\s a -> s {_npName = a})

-- | The description of the network profile.
npDescription :: Lens' NetworkProfile (Maybe Text)
npDescription = lens _npDescription (\s a -> s {_npDescription = a})

-- | Delay time for all packets to destination in milliseconds as an integer from 0 to 2000.
npUplinkDelayMs :: Lens' NetworkProfile (Maybe Integer)
npUplinkDelayMs = lens _npUplinkDelayMs (\s a -> s {_npUplinkDelayMs = a})

-- | The data throughput rate in bits per second, as an integer from 0 to 104857600.
npUplinkBandwidthBits :: Lens' NetworkProfile (Maybe Integer)
npUplinkBandwidthBits = lens _npUplinkBandwidthBits (\s a -> s {_npUplinkBandwidthBits = a})

-- | The type of network profile. Valid values are listed here.
npType :: Lens' NetworkProfile (Maybe NetworkProfileType)
npType = lens _npType (\s a -> s {_npType = a})

instance FromJSON NetworkProfile where
  parseJSON =
    withObject
      "NetworkProfile"
      ( \x ->
          NetworkProfile'
            <$> (x .:? "uplinkJitterMs")
            <*> (x .:? "downlinkDelayMs")
            <*> (x .:? "downlinkBandwidthBits")
            <*> (x .:? "downlinkJitterMs")
            <*> (x .:? "uplinkLossPercent")
            <*> (x .:? "arn")
            <*> (x .:? "downlinkLossPercent")
            <*> (x .:? "name")
            <*> (x .:? "description")
            <*> (x .:? "uplinkDelayMs")
            <*> (x .:? "uplinkBandwidthBits")
            <*> (x .:? "type")
      )

instance Hashable NetworkProfile

instance NFData NetworkProfile
