{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.IPv6Pool
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.IPv6Pool where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.PoolCidrBlock
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an IPv6 address pool.
--
--
--
-- /See:/ 'ipv6Pool' smart constructor.
data IPv6Pool = IPv6Pool'
  { _ipPoolId :: !(Maybe Text),
    _ipPoolCidrBlocks :: !(Maybe [PoolCidrBlock]),
    _ipTags :: !(Maybe [Tag]),
    _ipDescription :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'IPv6Pool' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipPoolId' - The ID of the address pool.
--
-- * 'ipPoolCidrBlocks' - The CIDR blocks for the address pool.
--
-- * 'ipTags' - Any tags for the address pool.
--
-- * 'ipDescription' - The description for the address pool.
ipv6Pool ::
  IPv6Pool
ipv6Pool =
  IPv6Pool'
    { _ipPoolId = Nothing,
      _ipPoolCidrBlocks = Nothing,
      _ipTags = Nothing,
      _ipDescription = Nothing
    }

-- | The ID of the address pool.
ipPoolId :: Lens' IPv6Pool (Maybe Text)
ipPoolId = lens _ipPoolId (\s a -> s {_ipPoolId = a})

-- | The CIDR blocks for the address pool.
ipPoolCidrBlocks :: Lens' IPv6Pool [PoolCidrBlock]
ipPoolCidrBlocks = lens _ipPoolCidrBlocks (\s a -> s {_ipPoolCidrBlocks = a}) . _Default . _Coerce

-- | Any tags for the address pool.
ipTags :: Lens' IPv6Pool [Tag]
ipTags = lens _ipTags (\s a -> s {_ipTags = a}) . _Default . _Coerce

-- | The description for the address pool.
ipDescription :: Lens' IPv6Pool (Maybe Text)
ipDescription = lens _ipDescription (\s a -> s {_ipDescription = a})

instance FromXML IPv6Pool where
  parseXML x =
    IPv6Pool'
      <$> (x .@? "poolId")
      <*> ( x .@? "poolCidrBlockSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "description")

instance Hashable IPv6Pool

instance NFData IPv6Pool
