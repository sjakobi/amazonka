{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.InputDeviceNetworkSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceNetworkSettings where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types.InputDeviceIPScheme
import Network.AWS.Prelude

-- | The network settings for the input device.
--
-- /See:/ 'inputDeviceNetworkSettings' smart constructor.
data InputDeviceNetworkSettings = InputDeviceNetworkSettings'
  { _idnsDNSAddresses ::
      !(Maybe [Text]),
    _idnsIPAddress ::
      !(Maybe Text),
    _idnsSubnetMask ::
      !(Maybe Text),
    _idnsIPScheme ::
      !( Maybe
           InputDeviceIPScheme
       ),
    _idnsGateway ::
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

-- | Creates a value of 'InputDeviceNetworkSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idnsDNSAddresses' - The DNS addresses of the input device.
--
-- * 'idnsIPAddress' - The IP address of the input device.
--
-- * 'idnsSubnetMask' - The subnet mask of the input device.
--
-- * 'idnsIPScheme' - Specifies whether the input device has been configured (outside of MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP address.
--
-- * 'idnsGateway' - The network gateway IP address.
inputDeviceNetworkSettings ::
  InputDeviceNetworkSettings
inputDeviceNetworkSettings =
  InputDeviceNetworkSettings'
    { _idnsDNSAddresses =
        Nothing,
      _idnsIPAddress = Nothing,
      _idnsSubnetMask = Nothing,
      _idnsIPScheme = Nothing,
      _idnsGateway = Nothing
    }

-- | The DNS addresses of the input device.
idnsDNSAddresses :: Lens' InputDeviceNetworkSettings [Text]
idnsDNSAddresses = lens _idnsDNSAddresses (\s a -> s {_idnsDNSAddresses = a}) . _Default . _Coerce

-- | The IP address of the input device.
idnsIPAddress :: Lens' InputDeviceNetworkSettings (Maybe Text)
idnsIPAddress = lens _idnsIPAddress (\s a -> s {_idnsIPAddress = a})

-- | The subnet mask of the input device.
idnsSubnetMask :: Lens' InputDeviceNetworkSettings (Maybe Text)
idnsSubnetMask = lens _idnsSubnetMask (\s a -> s {_idnsSubnetMask = a})

-- | Specifies whether the input device has been configured (outside of MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP address.
idnsIPScheme :: Lens' InputDeviceNetworkSettings (Maybe InputDeviceIPScheme)
idnsIPScheme = lens _idnsIPScheme (\s a -> s {_idnsIPScheme = a})

-- | The network gateway IP address.
idnsGateway :: Lens' InputDeviceNetworkSettings (Maybe Text)
idnsGateway = lens _idnsGateway (\s a -> s {_idnsGateway = a})

instance FromJSON InputDeviceNetworkSettings where
  parseJSON =
    withObject
      "InputDeviceNetworkSettings"
      ( \x ->
          InputDeviceNetworkSettings'
            <$> (x .:? "dnsAddresses" .!= mempty)
            <*> (x .:? "ipAddress")
            <*> (x .:? "subnetMask")
            <*> (x .:? "ipScheme")
            <*> (x .:? "gateway")
      )

instance Hashable InputDeviceNetworkSettings

instance NFData InputDeviceNetworkSettings
