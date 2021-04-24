{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.StaleIPPermission
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.StaleIPPermission where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.UserIdGroupPair
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a stale rule in a security group.
--
--
--
-- /See:/ 'staleIPPermission' smart constructor.
data StaleIPPermission = StaleIPPermission'
  { _sipFromPort ::
      !(Maybe Int),
    _sipPrefixListIds ::
      !(Maybe [Text]),
    _sipIPRanges :: !(Maybe [Text]),
    _sipUserIdGroupPairs ::
      !(Maybe [UserIdGroupPair]),
    _sipIPProtocol :: !(Maybe Text),
    _sipToPort :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StaleIPPermission' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sipFromPort' - The start of the port range for the TCP and UDP protocols, or an ICMP type number. A value of @-1@ indicates all ICMP types.
--
-- * 'sipPrefixListIds' - The prefix list IDs. Not applicable for stale security group rules.
--
-- * 'sipIPRanges' - The IP ranges. Not applicable for stale security group rules.
--
-- * 'sipUserIdGroupPairs' - The security group pairs. Returns the ID of the referenced security group and VPC, and the ID and status of the VPC peering connection.
--
-- * 'sipIPProtocol' - The IP protocol name (for @tcp@ , @udp@ , and @icmp@ ) or number (see <http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml Protocol Numbers)> .
--
-- * 'sipToPort' - The end of the port range for the TCP and UDP protocols, or an ICMP type number. A value of @-1@ indicates all ICMP types.
staleIPPermission ::
  StaleIPPermission
staleIPPermission =
  StaleIPPermission'
    { _sipFromPort = Nothing,
      _sipPrefixListIds = Nothing,
      _sipIPRanges = Nothing,
      _sipUserIdGroupPairs = Nothing,
      _sipIPProtocol = Nothing,
      _sipToPort = Nothing
    }

-- | The start of the port range for the TCP and UDP protocols, or an ICMP type number. A value of @-1@ indicates all ICMP types.
sipFromPort :: Lens' StaleIPPermission (Maybe Int)
sipFromPort = lens _sipFromPort (\s a -> s {_sipFromPort = a})

-- | The prefix list IDs. Not applicable for stale security group rules.
sipPrefixListIds :: Lens' StaleIPPermission [Text]
sipPrefixListIds = lens _sipPrefixListIds (\s a -> s {_sipPrefixListIds = a}) . _Default . _Coerce

-- | The IP ranges. Not applicable for stale security group rules.
sipIPRanges :: Lens' StaleIPPermission [Text]
sipIPRanges = lens _sipIPRanges (\s a -> s {_sipIPRanges = a}) . _Default . _Coerce

-- | The security group pairs. Returns the ID of the referenced security group and VPC, and the ID and status of the VPC peering connection.
sipUserIdGroupPairs :: Lens' StaleIPPermission [UserIdGroupPair]
sipUserIdGroupPairs = lens _sipUserIdGroupPairs (\s a -> s {_sipUserIdGroupPairs = a}) . _Default . _Coerce

-- | The IP protocol name (for @tcp@ , @udp@ , and @icmp@ ) or number (see <http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml Protocol Numbers)> .
sipIPProtocol :: Lens' StaleIPPermission (Maybe Text)
sipIPProtocol = lens _sipIPProtocol (\s a -> s {_sipIPProtocol = a})

-- | The end of the port range for the TCP and UDP protocols, or an ICMP type number. A value of @-1@ indicates all ICMP types.
sipToPort :: Lens' StaleIPPermission (Maybe Int)
sipToPort = lens _sipToPort (\s a -> s {_sipToPort = a})

instance FromXML StaleIPPermission where
  parseXML x =
    StaleIPPermission'
      <$> (x .@? "fromPort")
      <*> ( x .@? "prefixListIds" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "ipRanges" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "groups" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "ipProtocol")
      <*> (x .@? "toPort")

instance Hashable StaleIPPermission

instance NFData StaleIPPermission
