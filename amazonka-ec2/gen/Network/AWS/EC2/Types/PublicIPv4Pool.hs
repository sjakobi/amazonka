{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.PublicIPv4Pool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.PublicIPv4Pool where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PublicIPv4PoolRange
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an IPv4 address pool.
--
--
--
-- /See:/ 'publicIPv4Pool' smart constructor.
data PublicIPv4Pool = PublicIPv4Pool'
  { _pipPoolId ::
      !(Maybe Text),
    _pipPoolAddressRanges ::
      !(Maybe [PublicIPv4PoolRange]),
    _pipTotalAddressCount :: !(Maybe Int),
    _pipTags :: !(Maybe [Tag]),
    _pipTotalAvailableAddressCount ::
      !(Maybe Int),
    _pipDescription :: !(Maybe Text),
    _pipNetworkBorderGroup :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PublicIPv4Pool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pipPoolId' - The ID of the address pool.
--
-- * 'pipPoolAddressRanges' - The address ranges.
--
-- * 'pipTotalAddressCount' - The total number of addresses.
--
-- * 'pipTags' - Any tags for the address pool.
--
-- * 'pipTotalAvailableAddressCount' - The total number of available addresses.
--
-- * 'pipDescription' - A description of the address pool.
--
-- * 'pipNetworkBorderGroup' - The name of the location from which the address pool is advertised. A network border group is a unique set of Availability Zones or Local Zones from where AWS advertises public IP addresses.
publicIPv4Pool ::
  PublicIPv4Pool
publicIPv4Pool =
  PublicIPv4Pool'
    { _pipPoolId = Nothing,
      _pipPoolAddressRanges = Nothing,
      _pipTotalAddressCount = Nothing,
      _pipTags = Nothing,
      _pipTotalAvailableAddressCount = Nothing,
      _pipDescription = Nothing,
      _pipNetworkBorderGroup = Nothing
    }

-- | The ID of the address pool.
pipPoolId :: Lens' PublicIPv4Pool (Maybe Text)
pipPoolId = lens _pipPoolId (\s a -> s {_pipPoolId = a})

-- | The address ranges.
pipPoolAddressRanges :: Lens' PublicIPv4Pool [PublicIPv4PoolRange]
pipPoolAddressRanges = lens _pipPoolAddressRanges (\s a -> s {_pipPoolAddressRanges = a}) . _Default . _Coerce

-- | The total number of addresses.
pipTotalAddressCount :: Lens' PublicIPv4Pool (Maybe Int)
pipTotalAddressCount = lens _pipTotalAddressCount (\s a -> s {_pipTotalAddressCount = a})

-- | Any tags for the address pool.
pipTags :: Lens' PublicIPv4Pool [Tag]
pipTags = lens _pipTags (\s a -> s {_pipTags = a}) . _Default . _Coerce

-- | The total number of available addresses.
pipTotalAvailableAddressCount :: Lens' PublicIPv4Pool (Maybe Int)
pipTotalAvailableAddressCount = lens _pipTotalAvailableAddressCount (\s a -> s {_pipTotalAvailableAddressCount = a})

-- | A description of the address pool.
pipDescription :: Lens' PublicIPv4Pool (Maybe Text)
pipDescription = lens _pipDescription (\s a -> s {_pipDescription = a})

-- | The name of the location from which the address pool is advertised. A network border group is a unique set of Availability Zones or Local Zones from where AWS advertises public IP addresses.
pipNetworkBorderGroup :: Lens' PublicIPv4Pool (Maybe Text)
pipNetworkBorderGroup = lens _pipNetworkBorderGroup (\s a -> s {_pipNetworkBorderGroup = a})

instance FromXML PublicIPv4Pool where
  parseXML x =
    PublicIPv4Pool'
      <$> (x .@? "poolId")
      <*> ( x .@? "poolAddressRangeSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "totalAddressCount")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "totalAvailableAddressCount")
      <*> (x .@? "description")
      <*> (x .@? "networkBorderGroup")

instance Hashable PublicIPv4Pool

instance NFData PublicIPv4Pool
