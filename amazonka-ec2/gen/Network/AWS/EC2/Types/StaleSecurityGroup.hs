{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.StaleSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.StaleSecurityGroup where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.StaleIPPermission
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a stale security group (a security group that contains stale rules).
--
--
--
-- /See:/ 'staleSecurityGroup' smart constructor.
data StaleSecurityGroup = StaleSecurityGroup'
  { _ssgStaleIPPermissions ::
      !(Maybe [StaleIPPermission]),
    _ssgGroupName :: !(Maybe Text),
    _ssgGroupId :: !(Maybe Text),
    _ssgDescription :: !(Maybe Text),
    _ssgStaleIPPermissionsEgress ::
      !(Maybe [StaleIPPermission]),
    _ssgVPCId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StaleSecurityGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgStaleIPPermissions' - Information about the stale inbound rules in the security group.
--
-- * 'ssgGroupName' - The name of the security group.
--
-- * 'ssgGroupId' - The ID of the security group.
--
-- * 'ssgDescription' - The description of the security group.
--
-- * 'ssgStaleIPPermissionsEgress' - Information about the stale outbound rules in the security group.
--
-- * 'ssgVPCId' - The ID of the VPC for the security group.
staleSecurityGroup ::
  StaleSecurityGroup
staleSecurityGroup =
  StaleSecurityGroup'
    { _ssgStaleIPPermissions =
        Nothing,
      _ssgGroupName = Nothing,
      _ssgGroupId = Nothing,
      _ssgDescription = Nothing,
      _ssgStaleIPPermissionsEgress = Nothing,
      _ssgVPCId = Nothing
    }

-- | Information about the stale inbound rules in the security group.
ssgStaleIPPermissions :: Lens' StaleSecurityGroup [StaleIPPermission]
ssgStaleIPPermissions = lens _ssgStaleIPPermissions (\s a -> s {_ssgStaleIPPermissions = a}) . _Default . _Coerce

-- | The name of the security group.
ssgGroupName :: Lens' StaleSecurityGroup (Maybe Text)
ssgGroupName = lens _ssgGroupName (\s a -> s {_ssgGroupName = a})

-- | The ID of the security group.
ssgGroupId :: Lens' StaleSecurityGroup (Maybe Text)
ssgGroupId = lens _ssgGroupId (\s a -> s {_ssgGroupId = a})

-- | The description of the security group.
ssgDescription :: Lens' StaleSecurityGroup (Maybe Text)
ssgDescription = lens _ssgDescription (\s a -> s {_ssgDescription = a})

-- | Information about the stale outbound rules in the security group.
ssgStaleIPPermissionsEgress :: Lens' StaleSecurityGroup [StaleIPPermission]
ssgStaleIPPermissionsEgress = lens _ssgStaleIPPermissionsEgress (\s a -> s {_ssgStaleIPPermissionsEgress = a}) . _Default . _Coerce

-- | The ID of the VPC for the security group.
ssgVPCId :: Lens' StaleSecurityGroup (Maybe Text)
ssgVPCId = lens _ssgVPCId (\s a -> s {_ssgVPCId = a})

instance FromXML StaleSecurityGroup where
  parseXML x =
    StaleSecurityGroup'
      <$> ( x .@? "staleIpPermissions" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "groupName")
      <*> (x .@? "groupId")
      <*> (x .@? "description")
      <*> ( x .@? "staleIpPermissionsEgress" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "vpcId")

instance Hashable StaleSecurityGroup

instance NFData StaleSecurityGroup
