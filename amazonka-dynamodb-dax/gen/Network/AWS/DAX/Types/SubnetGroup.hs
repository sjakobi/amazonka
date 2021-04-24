{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DAX.Types.SubnetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DAX.Types.SubnetGroup where

import Network.AWS.DAX.Types.Subnet
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents the output of one of the following actions:
--
--
--     * /CreateSubnetGroup/
--
--     * /ModifySubnetGroup/
--
--
--
--
-- /See:/ 'subnetGroup' smart constructor.
data SubnetGroup = SubnetGroup'
  { _sgDescription ::
      !(Maybe Text),
    _sgSubnetGroupName :: !(Maybe Text),
    _sgSubnets :: !(Maybe [Subnet]),
    _sgVPCId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SubnetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgDescription' - The description of the subnet group.
--
-- * 'sgSubnetGroupName' - The name of the subnet group.
--
-- * 'sgSubnets' - A list of subnets associated with the subnet group.
--
-- * 'sgVPCId' - The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.
subnetGroup ::
  SubnetGroup
subnetGroup =
  SubnetGroup'
    { _sgDescription = Nothing,
      _sgSubnetGroupName = Nothing,
      _sgSubnets = Nothing,
      _sgVPCId = Nothing
    }

-- | The description of the subnet group.
sgDescription :: Lens' SubnetGroup (Maybe Text)
sgDescription = lens _sgDescription (\s a -> s {_sgDescription = a})

-- | The name of the subnet group.
sgSubnetGroupName :: Lens' SubnetGroup (Maybe Text)
sgSubnetGroupName = lens _sgSubnetGroupName (\s a -> s {_sgSubnetGroupName = a})

-- | A list of subnets associated with the subnet group.
sgSubnets :: Lens' SubnetGroup [Subnet]
sgSubnets = lens _sgSubnets (\s a -> s {_sgSubnets = a}) . _Default . _Coerce

-- | The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.
sgVPCId :: Lens' SubnetGroup (Maybe Text)
sgVPCId = lens _sgVPCId (\s a -> s {_sgVPCId = a})

instance FromJSON SubnetGroup where
  parseJSON =
    withObject
      "SubnetGroup"
      ( \x ->
          SubnetGroup'
            <$> (x .:? "Description")
            <*> (x .:? "SubnetGroupName")
            <*> (x .:? "Subnets" .!= mempty)
            <*> (x .:? "VpcId")
      )

instance Hashable SubnetGroup

instance NFData SubnetGroup
