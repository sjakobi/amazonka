{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkInfo where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.EnaSupport
import Network.AWS.EC2.Types.NetworkCardInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the networking features of the instance type.
--
--
--
-- /See:/ 'networkInfo' smart constructor.
data NetworkInfo = NetworkInfo'
  { _niDefaultNetworkCardIndex ::
      !(Maybe Int),
    _niEfaSupported :: !(Maybe Bool),
    _niNetworkCards :: !(Maybe [NetworkCardInfo]),
    _niIPv4AddressesPerInterface :: !(Maybe Int),
    _niMaximumNetworkInterfaces :: !(Maybe Int),
    _niIPv6Supported :: !(Maybe Bool),
    _niMaximumNetworkCards :: !(Maybe Int),
    _niNetworkPerformance :: !(Maybe Text),
    _niIPv6AddressesPerInterface :: !(Maybe Int),
    _niEnaSupport :: !(Maybe EnaSupport)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworkInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'niDefaultNetworkCardIndex' - The index of the default network card, starting at 0.
--
-- * 'niEfaSupported' - Indicates whether Elastic Fabric Adapter (EFA) is supported.
--
-- * 'niNetworkCards' - Describes the network cards for the instance type.
--
-- * 'niIPv4AddressesPerInterface' - The maximum number of IPv4 addresses per network interface.
--
-- * 'niMaximumNetworkInterfaces' - The maximum number of network interfaces for the instance type.
--
-- * 'niIPv6Supported' - Indicates whether IPv6 is supported.
--
-- * 'niMaximumNetworkCards' - The maximum number of physical network cards that can be allocated to the instance.
--
-- * 'niNetworkPerformance' - The network performance.
--
-- * 'niIPv6AddressesPerInterface' - The maximum number of IPv6 addresses per network interface.
--
-- * 'niEnaSupport' - Indicates whether Elastic Network Adapter (ENA) is supported.
networkInfo ::
  NetworkInfo
networkInfo =
  NetworkInfo'
    { _niDefaultNetworkCardIndex = Nothing,
      _niEfaSupported = Nothing,
      _niNetworkCards = Nothing,
      _niIPv4AddressesPerInterface = Nothing,
      _niMaximumNetworkInterfaces = Nothing,
      _niIPv6Supported = Nothing,
      _niMaximumNetworkCards = Nothing,
      _niNetworkPerformance = Nothing,
      _niIPv6AddressesPerInterface = Nothing,
      _niEnaSupport = Nothing
    }

-- | The index of the default network card, starting at 0.
niDefaultNetworkCardIndex :: Lens' NetworkInfo (Maybe Int)
niDefaultNetworkCardIndex = lens _niDefaultNetworkCardIndex (\s a -> s {_niDefaultNetworkCardIndex = a})

-- | Indicates whether Elastic Fabric Adapter (EFA) is supported.
niEfaSupported :: Lens' NetworkInfo (Maybe Bool)
niEfaSupported = lens _niEfaSupported (\s a -> s {_niEfaSupported = a})

-- | Describes the network cards for the instance type.
niNetworkCards :: Lens' NetworkInfo [NetworkCardInfo]
niNetworkCards = lens _niNetworkCards (\s a -> s {_niNetworkCards = a}) . _Default . _Coerce

-- | The maximum number of IPv4 addresses per network interface.
niIPv4AddressesPerInterface :: Lens' NetworkInfo (Maybe Int)
niIPv4AddressesPerInterface = lens _niIPv4AddressesPerInterface (\s a -> s {_niIPv4AddressesPerInterface = a})

-- | The maximum number of network interfaces for the instance type.
niMaximumNetworkInterfaces :: Lens' NetworkInfo (Maybe Int)
niMaximumNetworkInterfaces = lens _niMaximumNetworkInterfaces (\s a -> s {_niMaximumNetworkInterfaces = a})

-- | Indicates whether IPv6 is supported.
niIPv6Supported :: Lens' NetworkInfo (Maybe Bool)
niIPv6Supported = lens _niIPv6Supported (\s a -> s {_niIPv6Supported = a})

-- | The maximum number of physical network cards that can be allocated to the instance.
niMaximumNetworkCards :: Lens' NetworkInfo (Maybe Int)
niMaximumNetworkCards = lens _niMaximumNetworkCards (\s a -> s {_niMaximumNetworkCards = a})

-- | The network performance.
niNetworkPerformance :: Lens' NetworkInfo (Maybe Text)
niNetworkPerformance = lens _niNetworkPerformance (\s a -> s {_niNetworkPerformance = a})

-- | The maximum number of IPv6 addresses per network interface.
niIPv6AddressesPerInterface :: Lens' NetworkInfo (Maybe Int)
niIPv6AddressesPerInterface = lens _niIPv6AddressesPerInterface (\s a -> s {_niIPv6AddressesPerInterface = a})

-- | Indicates whether Elastic Network Adapter (ENA) is supported.
niEnaSupport :: Lens' NetworkInfo (Maybe EnaSupport)
niEnaSupport = lens _niEnaSupport (\s a -> s {_niEnaSupport = a})

instance FromXML NetworkInfo where
  parseXML x =
    NetworkInfo'
      <$> (x .@? "defaultNetworkCardIndex")
      <*> (x .@? "efaSupported")
      <*> ( x .@? "networkCards" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "ipv4AddressesPerInterface")
      <*> (x .@? "maximumNetworkInterfaces")
      <*> (x .@? "ipv6Supported")
      <*> (x .@? "maximumNetworkCards")
      <*> (x .@? "networkPerformance")
      <*> (x .@? "ipv6AddressesPerInterface")
      <*> (x .@? "enaSupport")

instance Hashable NetworkInfo

instance NFData NetworkInfo
