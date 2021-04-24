{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.TransitGatewayMulticastGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TransitGatewayMulticastGroup where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.MembershipType
import Network.AWS.EC2.Types.TransitGatewayAttachmentResourceType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes the transit gateway multicast group resources.
--
--
--
-- /See:/ 'transitGatewayMulticastGroup' smart constructor.
data TransitGatewayMulticastGroup = TransitGatewayMulticastGroup'
  { _tgmgResourceId ::
      !(Maybe Text),
    _tgmgGroupMember ::
      !(Maybe Bool),
    _tgmgMemberType ::
      !( Maybe
           MembershipType
       ),
    _tgmgGroupSource ::
      !(Maybe Bool),
    _tgmgResourceType ::
      !( Maybe
           TransitGatewayAttachmentResourceType
       ),
    _tgmgResourceOwnerId ::
      !(Maybe Text),
    _tgmgNetworkInterfaceId ::
      !(Maybe Text),
    _tgmgSubnetId ::
      !(Maybe Text),
    _tgmgTransitGatewayAttachmentId ::
      !(Maybe Text),
    _tgmgGroupIPAddress ::
      !(Maybe Text),
    _tgmgSourceType ::
      !( Maybe
           MembershipType
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

-- | Creates a value of 'TransitGatewayMulticastGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgmgResourceId' - The ID of the resource.
--
-- * 'tgmgGroupMember' - Indicates that the resource is a transit gateway multicast group member.
--
-- * 'tgmgMemberType' - The member type (for example, @static@ ).
--
-- * 'tgmgGroupSource' - Indicates that the resource is a transit gateway multicast group member.
--
-- * 'tgmgResourceType' - The type of resource, for example a VPC attachment.
--
-- * 'tgmgResourceOwnerId' - The ID of the AWS account that owns the transit gateway multicast domain group resource.
--
-- * 'tgmgNetworkInterfaceId' - The ID of the transit gateway attachment.
--
-- * 'tgmgSubnetId' - The ID of the subnet.
--
-- * 'tgmgTransitGatewayAttachmentId' - The ID of the transit gateway attachment.
--
-- * 'tgmgGroupIPAddress' - The IP address assigned to the transit gateway multicast group.
--
-- * 'tgmgSourceType' - The source type.
transitGatewayMulticastGroup ::
  TransitGatewayMulticastGroup
transitGatewayMulticastGroup =
  TransitGatewayMulticastGroup'
    { _tgmgResourceId =
        Nothing,
      _tgmgGroupMember = Nothing,
      _tgmgMemberType = Nothing,
      _tgmgGroupSource = Nothing,
      _tgmgResourceType = Nothing,
      _tgmgResourceOwnerId = Nothing,
      _tgmgNetworkInterfaceId = Nothing,
      _tgmgSubnetId = Nothing,
      _tgmgTransitGatewayAttachmentId = Nothing,
      _tgmgGroupIPAddress = Nothing,
      _tgmgSourceType = Nothing
    }

-- | The ID of the resource.
tgmgResourceId :: Lens' TransitGatewayMulticastGroup (Maybe Text)
tgmgResourceId = lens _tgmgResourceId (\s a -> s {_tgmgResourceId = a})

-- | Indicates that the resource is a transit gateway multicast group member.
tgmgGroupMember :: Lens' TransitGatewayMulticastGroup (Maybe Bool)
tgmgGroupMember = lens _tgmgGroupMember (\s a -> s {_tgmgGroupMember = a})

-- | The member type (for example, @static@ ).
tgmgMemberType :: Lens' TransitGatewayMulticastGroup (Maybe MembershipType)
tgmgMemberType = lens _tgmgMemberType (\s a -> s {_tgmgMemberType = a})

-- | Indicates that the resource is a transit gateway multicast group member.
tgmgGroupSource :: Lens' TransitGatewayMulticastGroup (Maybe Bool)
tgmgGroupSource = lens _tgmgGroupSource (\s a -> s {_tgmgGroupSource = a})

-- | The type of resource, for example a VPC attachment.
tgmgResourceType :: Lens' TransitGatewayMulticastGroup (Maybe TransitGatewayAttachmentResourceType)
tgmgResourceType = lens _tgmgResourceType (\s a -> s {_tgmgResourceType = a})

-- | The ID of the AWS account that owns the transit gateway multicast domain group resource.
tgmgResourceOwnerId :: Lens' TransitGatewayMulticastGroup (Maybe Text)
tgmgResourceOwnerId = lens _tgmgResourceOwnerId (\s a -> s {_tgmgResourceOwnerId = a})

-- | The ID of the transit gateway attachment.
tgmgNetworkInterfaceId :: Lens' TransitGatewayMulticastGroup (Maybe Text)
tgmgNetworkInterfaceId = lens _tgmgNetworkInterfaceId (\s a -> s {_tgmgNetworkInterfaceId = a})

-- | The ID of the subnet.
tgmgSubnetId :: Lens' TransitGatewayMulticastGroup (Maybe Text)
tgmgSubnetId = lens _tgmgSubnetId (\s a -> s {_tgmgSubnetId = a})

-- | The ID of the transit gateway attachment.
tgmgTransitGatewayAttachmentId :: Lens' TransitGatewayMulticastGroup (Maybe Text)
tgmgTransitGatewayAttachmentId = lens _tgmgTransitGatewayAttachmentId (\s a -> s {_tgmgTransitGatewayAttachmentId = a})

-- | The IP address assigned to the transit gateway multicast group.
tgmgGroupIPAddress :: Lens' TransitGatewayMulticastGroup (Maybe Text)
tgmgGroupIPAddress = lens _tgmgGroupIPAddress (\s a -> s {_tgmgGroupIPAddress = a})

-- | The source type.
tgmgSourceType :: Lens' TransitGatewayMulticastGroup (Maybe MembershipType)
tgmgSourceType = lens _tgmgSourceType (\s a -> s {_tgmgSourceType = a})

instance FromXML TransitGatewayMulticastGroup where
  parseXML x =
    TransitGatewayMulticastGroup'
      <$> (x .@? "resourceId")
      <*> (x .@? "groupMember")
      <*> (x .@? "memberType")
      <*> (x .@? "groupSource")
      <*> (x .@? "resourceType")
      <*> (x .@? "resourceOwnerId")
      <*> (x .@? "networkInterfaceId")
      <*> (x .@? "subnetId")
      <*> (x .@? "transitGatewayAttachmentId")
      <*> (x .@? "groupIpAddress")
      <*> (x .@? "sourceType")

instance Hashable TransitGatewayMulticastGroup

instance NFData TransitGatewayMulticastGroup
