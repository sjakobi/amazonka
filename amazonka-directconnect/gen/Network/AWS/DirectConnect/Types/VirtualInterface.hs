{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.VirtualInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.VirtualInterface where

import Network.AWS.DirectConnect.Types.AddressFamily
import Network.AWS.DirectConnect.Types.BGPPeer
import Network.AWS.DirectConnect.Types.RouteFilterPrefix
import Network.AWS.DirectConnect.Types.Tag
import Network.AWS.DirectConnect.Types.VirtualInterfaceState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a virtual interface.
--
--
--
-- /See:/ 'virtualInterface' smart constructor.
data VirtualInterface = VirtualInterface'
  { _viAuthKey ::
      !(Maybe Text),
    _viBgpPeers :: !(Maybe [BGPPeer]),
    _viVirtualGatewayId :: !(Maybe Text),
    _viAsn :: !(Maybe Int),
    _viAwsDeviceV2 :: !(Maybe Text),
    _viConnectionId :: !(Maybe Text),
    _viCustomerRouterConfig ::
      !(Maybe Text),
    _viJumboFrameCapable :: !(Maybe Bool),
    _viRouteFilterPrefixes ::
      !(Maybe [RouteFilterPrefix]),
    _viVirtualInterfaceType ::
      !(Maybe Text),
    _viMtu :: !(Maybe Int),
    _viTags :: !(Maybe (List1 Tag)),
    _viVirtualInterfaceId ::
      !(Maybe Text),
    _viAmazonSideASN :: !(Maybe Integer),
    _viDirectConnectGatewayId ::
      !(Maybe Text),
    _viVirtualInterfaceState ::
      !(Maybe VirtualInterfaceState),
    _viVirtualInterfaceName ::
      !(Maybe Text),
    _viAddressFamily ::
      !(Maybe AddressFamily),
    _viAmazonAddress :: !(Maybe Text),
    _viOwnerAccount :: !(Maybe Text),
    _viRegion :: !(Maybe Text),
    _viLocation :: !(Maybe Text),
    _viVlan :: !(Maybe Int),
    _viCustomerAddress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'VirtualInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viAuthKey' - The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
--
-- * 'viBgpPeers' - The BGP peers configured on this virtual interface.
--
-- * 'viVirtualGatewayId' - The ID of the virtual private gateway. Applies only to private virtual interfaces.
--
-- * 'viAsn' - The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
--
-- * 'viAwsDeviceV2' - The Direct Connect endpoint on which the virtual interface terminates.
--
-- * 'viConnectionId' - The ID of the connection.
--
-- * 'viCustomerRouterConfig' - The customer router configuration.
--
-- * 'viJumboFrameCapable' - Indicates whether jumbo frames (9001 MTU) are supported.
--
-- * 'viRouteFilterPrefixes' - The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.
--
-- * 'viVirtualInterfaceType' - The type of virtual interface. The possible values are @private@ and @public@ .
--
-- * 'viMtu' - The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.
--
-- * 'viTags' - The tags associated with the virtual interface.
--
-- * 'viVirtualInterfaceId' - The ID of the virtual interface.
--
-- * 'viAmazonSideASN' - The autonomous system number (ASN) for the Amazon side of the connection.
--
-- * 'viDirectConnectGatewayId' - The ID of the Direct Connect gateway.
--
-- * 'viVirtualInterfaceState' - The state of the virtual interface. The following are the possible values:     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.     * @available@ : A virtual interface that is able to forward traffic.     * @down@ : A virtual interface that is BGP down.     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.     * @deleted@ : A virtual interface that cannot forward traffic.     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.     * @unknown@ : The state of the virtual interface is not available.
--
-- * 'viVirtualInterfaceName' - The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
--
-- * 'viAddressFamily' - The address family for the BGP peer.
--
-- * 'viAmazonAddress' - The IP address assigned to the Amazon interface.
--
-- * 'viOwnerAccount' - The ID of the AWS account that owns the virtual interface.
--
-- * 'viRegion' - The AWS Region where the virtual interface is located.
--
-- * 'viLocation' - The location of the connection.
--
-- * 'viVlan' - The ID of the VLAN.
--
-- * 'viCustomerAddress' - The IP address assigned to the customer interface.
virtualInterface ::
  VirtualInterface
virtualInterface =
  VirtualInterface'
    { _viAuthKey = Nothing,
      _viBgpPeers = Nothing,
      _viVirtualGatewayId = Nothing,
      _viAsn = Nothing,
      _viAwsDeviceV2 = Nothing,
      _viConnectionId = Nothing,
      _viCustomerRouterConfig = Nothing,
      _viJumboFrameCapable = Nothing,
      _viRouteFilterPrefixes = Nothing,
      _viVirtualInterfaceType = Nothing,
      _viMtu = Nothing,
      _viTags = Nothing,
      _viVirtualInterfaceId = Nothing,
      _viAmazonSideASN = Nothing,
      _viDirectConnectGatewayId = Nothing,
      _viVirtualInterfaceState = Nothing,
      _viVirtualInterfaceName = Nothing,
      _viAddressFamily = Nothing,
      _viAmazonAddress = Nothing,
      _viOwnerAccount = Nothing,
      _viRegion = Nothing,
      _viLocation = Nothing,
      _viVlan = Nothing,
      _viCustomerAddress = Nothing
    }

-- | The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
viAuthKey :: Lens' VirtualInterface (Maybe Text)
viAuthKey = lens _viAuthKey (\s a -> s {_viAuthKey = a})

-- | The BGP peers configured on this virtual interface.
viBgpPeers :: Lens' VirtualInterface [BGPPeer]
viBgpPeers = lens _viBgpPeers (\s a -> s {_viBgpPeers = a}) . _Default . _Coerce

-- | The ID of the virtual private gateway. Applies only to private virtual interfaces.
viVirtualGatewayId :: Lens' VirtualInterface (Maybe Text)
viVirtualGatewayId = lens _viVirtualGatewayId (\s a -> s {_viVirtualGatewayId = a})

-- | The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
viAsn :: Lens' VirtualInterface (Maybe Int)
viAsn = lens _viAsn (\s a -> s {_viAsn = a})

-- | The Direct Connect endpoint on which the virtual interface terminates.
viAwsDeviceV2 :: Lens' VirtualInterface (Maybe Text)
viAwsDeviceV2 = lens _viAwsDeviceV2 (\s a -> s {_viAwsDeviceV2 = a})

-- | The ID of the connection.
viConnectionId :: Lens' VirtualInterface (Maybe Text)
viConnectionId = lens _viConnectionId (\s a -> s {_viConnectionId = a})

-- | The customer router configuration.
viCustomerRouterConfig :: Lens' VirtualInterface (Maybe Text)
viCustomerRouterConfig = lens _viCustomerRouterConfig (\s a -> s {_viCustomerRouterConfig = a})

-- | Indicates whether jumbo frames (9001 MTU) are supported.
viJumboFrameCapable :: Lens' VirtualInterface (Maybe Bool)
viJumboFrameCapable = lens _viJumboFrameCapable (\s a -> s {_viJumboFrameCapable = a})

-- | The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.
viRouteFilterPrefixes :: Lens' VirtualInterface [RouteFilterPrefix]
viRouteFilterPrefixes = lens _viRouteFilterPrefixes (\s a -> s {_viRouteFilterPrefixes = a}) . _Default . _Coerce

-- | The type of virtual interface. The possible values are @private@ and @public@ .
viVirtualInterfaceType :: Lens' VirtualInterface (Maybe Text)
viVirtualInterfaceType = lens _viVirtualInterfaceType (\s a -> s {_viVirtualInterfaceType = a})

-- | The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.
viMtu :: Lens' VirtualInterface (Maybe Int)
viMtu = lens _viMtu (\s a -> s {_viMtu = a})

-- | The tags associated with the virtual interface.
viTags :: Lens' VirtualInterface (Maybe (NonEmpty Tag))
viTags = lens _viTags (\s a -> s {_viTags = a}) . mapping _List1

-- | The ID of the virtual interface.
viVirtualInterfaceId :: Lens' VirtualInterface (Maybe Text)
viVirtualInterfaceId = lens _viVirtualInterfaceId (\s a -> s {_viVirtualInterfaceId = a})

-- | The autonomous system number (ASN) for the Amazon side of the connection.
viAmazonSideASN :: Lens' VirtualInterface (Maybe Integer)
viAmazonSideASN = lens _viAmazonSideASN (\s a -> s {_viAmazonSideASN = a})

-- | The ID of the Direct Connect gateway.
viDirectConnectGatewayId :: Lens' VirtualInterface (Maybe Text)
viDirectConnectGatewayId = lens _viDirectConnectGatewayId (\s a -> s {_viDirectConnectGatewayId = a})

-- | The state of the virtual interface. The following are the possible values:     * @confirming@ : The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.     * @verifying@ : This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.     * @pending@ : A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.     * @available@ : A virtual interface that is able to forward traffic.     * @down@ : A virtual interface that is BGP down.     * @deleting@ : A virtual interface is in this state immediately after calling 'DeleteVirtualInterface' until it can no longer forward traffic.     * @deleted@ : A virtual interface that cannot forward traffic.     * @rejected@ : The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the @Confirming@ state is deleted by the virtual interface owner, the virtual interface enters the @Rejected@ state.     * @unknown@ : The state of the virtual interface is not available.
viVirtualInterfaceState :: Lens' VirtualInterface (Maybe VirtualInterfaceState)
viVirtualInterfaceState = lens _viVirtualInterfaceState (\s a -> s {_viVirtualInterfaceState = a})

-- | The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
viVirtualInterfaceName :: Lens' VirtualInterface (Maybe Text)
viVirtualInterfaceName = lens _viVirtualInterfaceName (\s a -> s {_viVirtualInterfaceName = a})

-- | The address family for the BGP peer.
viAddressFamily :: Lens' VirtualInterface (Maybe AddressFamily)
viAddressFamily = lens _viAddressFamily (\s a -> s {_viAddressFamily = a})

-- | The IP address assigned to the Amazon interface.
viAmazonAddress :: Lens' VirtualInterface (Maybe Text)
viAmazonAddress = lens _viAmazonAddress (\s a -> s {_viAmazonAddress = a})

-- | The ID of the AWS account that owns the virtual interface.
viOwnerAccount :: Lens' VirtualInterface (Maybe Text)
viOwnerAccount = lens _viOwnerAccount (\s a -> s {_viOwnerAccount = a})

-- | The AWS Region where the virtual interface is located.
viRegion :: Lens' VirtualInterface (Maybe Text)
viRegion = lens _viRegion (\s a -> s {_viRegion = a})

-- | The location of the connection.
viLocation :: Lens' VirtualInterface (Maybe Text)
viLocation = lens _viLocation (\s a -> s {_viLocation = a})

-- | The ID of the VLAN.
viVlan :: Lens' VirtualInterface (Maybe Int)
viVlan = lens _viVlan (\s a -> s {_viVlan = a})

-- | The IP address assigned to the customer interface.
viCustomerAddress :: Lens' VirtualInterface (Maybe Text)
viCustomerAddress = lens _viCustomerAddress (\s a -> s {_viCustomerAddress = a})

instance FromJSON VirtualInterface where
  parseJSON =
    withObject
      "VirtualInterface"
      ( \x ->
          VirtualInterface'
            <$> (x .:? "authKey")
            <*> (x .:? "bgpPeers" .!= mempty)
            <*> (x .:? "virtualGatewayId")
            <*> (x .:? "asn")
            <*> (x .:? "awsDeviceV2")
            <*> (x .:? "connectionId")
            <*> (x .:? "customerRouterConfig")
            <*> (x .:? "jumboFrameCapable")
            <*> (x .:? "routeFilterPrefixes" .!= mempty)
            <*> (x .:? "virtualInterfaceType")
            <*> (x .:? "mtu")
            <*> (x .:? "tags")
            <*> (x .:? "virtualInterfaceId")
            <*> (x .:? "amazonSideAsn")
            <*> (x .:? "directConnectGatewayId")
            <*> (x .:? "virtualInterfaceState")
            <*> (x .:? "virtualInterfaceName")
            <*> (x .:? "addressFamily")
            <*> (x .:? "amazonAddress")
            <*> (x .:? "ownerAccount")
            <*> (x .:? "region")
            <*> (x .:? "location")
            <*> (x .:? "vlan")
            <*> (x .:? "customerAddress")
      )

instance Hashable VirtualInterface

instance NFData VirtualInterface
