{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NetworkACL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NetworkACL where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.NetworkACLAssociation
import Network.AWS.EC2.Types.NetworkACLEntry
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a network ACL.
--
--
--
-- /See:/ 'networkACL' smart constructor.
data NetworkACL = NetworkACL'
  { _naOwnerId ::
      !(Maybe Text),
    _naIsDefault :: !(Maybe Bool),
    _naTags :: !(Maybe [Tag]),
    _naVPCId :: !(Maybe Text),
    _naNetworkACLId :: !(Maybe Text),
    _naAssociations ::
      !(Maybe [NetworkACLAssociation]),
    _naEntries :: !(Maybe [NetworkACLEntry])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NetworkACL' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'naOwnerId' - The ID of the AWS account that owns the network ACL.
--
-- * 'naIsDefault' - Indicates whether this is the default network ACL for the VPC.
--
-- * 'naTags' - Any tags assigned to the network ACL.
--
-- * 'naVPCId' - The ID of the VPC for the network ACL.
--
-- * 'naNetworkACLId' - The ID of the network ACL.
--
-- * 'naAssociations' - Any associations between the network ACL and one or more subnets
--
-- * 'naEntries' - One or more entries (rules) in the network ACL.
networkACL ::
  NetworkACL
networkACL =
  NetworkACL'
    { _naOwnerId = Nothing,
      _naIsDefault = Nothing,
      _naTags = Nothing,
      _naVPCId = Nothing,
      _naNetworkACLId = Nothing,
      _naAssociations = Nothing,
      _naEntries = Nothing
    }

-- | The ID of the AWS account that owns the network ACL.
naOwnerId :: Lens' NetworkACL (Maybe Text)
naOwnerId = lens _naOwnerId (\s a -> s {_naOwnerId = a})

-- | Indicates whether this is the default network ACL for the VPC.
naIsDefault :: Lens' NetworkACL (Maybe Bool)
naIsDefault = lens _naIsDefault (\s a -> s {_naIsDefault = a})

-- | Any tags assigned to the network ACL.
naTags :: Lens' NetworkACL [Tag]
naTags = lens _naTags (\s a -> s {_naTags = a}) . _Default . _Coerce

-- | The ID of the VPC for the network ACL.
naVPCId :: Lens' NetworkACL (Maybe Text)
naVPCId = lens _naVPCId (\s a -> s {_naVPCId = a})

-- | The ID of the network ACL.
naNetworkACLId :: Lens' NetworkACL (Maybe Text)
naNetworkACLId = lens _naNetworkACLId (\s a -> s {_naNetworkACLId = a})

-- | Any associations between the network ACL and one or more subnets
naAssociations :: Lens' NetworkACL [NetworkACLAssociation]
naAssociations = lens _naAssociations (\s a -> s {_naAssociations = a}) . _Default . _Coerce

-- | One or more entries (rules) in the network ACL.
naEntries :: Lens' NetworkACL [NetworkACLEntry]
naEntries = lens _naEntries (\s a -> s {_naEntries = a}) . _Default . _Coerce

instance FromXML NetworkACL where
  parseXML x =
    NetworkACL'
      <$> (x .@? "ownerId")
      <*> (x .@? "default")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcId")
      <*> (x .@? "networkAclId")
      <*> ( x .@? "associationSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> ( x .@? "entrySet" .!@ mempty
              >>= may (parseXMLList "item")
          )

instance Hashable NetworkACL

instance NFData NetworkACL
