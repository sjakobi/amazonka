{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.SubnetIPv6CidrBlockAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SubnetIPv6CidrBlockAssociation where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.SubnetCidrBlockState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes an IPv6 CIDR block associated with a subnet.
--
--
--
-- /See:/ 'subnetIPv6CidrBlockAssociation' smart constructor.
data SubnetIPv6CidrBlockAssociation = SubnetIPv6CidrBlockAssociation'
  { _sicbaIPv6CidrBlockState ::
      !( Maybe
           SubnetCidrBlockState
       ),
    _sicbaAssociationId ::
      !( Maybe
           Text
       ),
    _sicbaIPv6CidrBlock ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'SubnetIPv6CidrBlockAssociation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sicbaIPv6CidrBlockState' - Information about the state of the CIDR block.
--
-- * 'sicbaAssociationId' - The association ID for the CIDR block.
--
-- * 'sicbaIPv6CidrBlock' - The IPv6 CIDR block.
subnetIPv6CidrBlockAssociation ::
  SubnetIPv6CidrBlockAssociation
subnetIPv6CidrBlockAssociation =
  SubnetIPv6CidrBlockAssociation'
    { _sicbaIPv6CidrBlockState =
        Nothing,
      _sicbaAssociationId = Nothing,
      _sicbaIPv6CidrBlock = Nothing
    }

-- | Information about the state of the CIDR block.
sicbaIPv6CidrBlockState :: Lens' SubnetIPv6CidrBlockAssociation (Maybe SubnetCidrBlockState)
sicbaIPv6CidrBlockState = lens _sicbaIPv6CidrBlockState (\s a -> s {_sicbaIPv6CidrBlockState = a})

-- | The association ID for the CIDR block.
sicbaAssociationId :: Lens' SubnetIPv6CidrBlockAssociation (Maybe Text)
sicbaAssociationId = lens _sicbaAssociationId (\s a -> s {_sicbaAssociationId = a})

-- | The IPv6 CIDR block.
sicbaIPv6CidrBlock :: Lens' SubnetIPv6CidrBlockAssociation (Maybe Text)
sicbaIPv6CidrBlock = lens _sicbaIPv6CidrBlock (\s a -> s {_sicbaIPv6CidrBlock = a})

instance FromXML SubnetIPv6CidrBlockAssociation where
  parseXML x =
    SubnetIPv6CidrBlockAssociation'
      <$> (x .@? "ipv6CidrBlockState")
      <*> (x .@? "associationId")
      <*> (x .@? "ipv6CidrBlock")

instance Hashable SubnetIPv6CidrBlockAssociation

instance NFData SubnetIPv6CidrBlockAssociation
