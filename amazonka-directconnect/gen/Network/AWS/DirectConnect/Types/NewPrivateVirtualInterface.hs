{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.NewPrivateVirtualInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.NewPrivateVirtualInterface where

import Network.AWS.DirectConnect.Types.AddressFamily
import Network.AWS.DirectConnect.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a private virtual interface.
--
--
--
-- /See:/ 'newPrivateVirtualInterface' smart constructor.
data NewPrivateVirtualInterface = NewPrivateVirtualInterface'
  { _newAuthKey ::
      !(Maybe Text),
    _newVirtualGatewayId ::
      !(Maybe Text),
    _newMtu ::
      !(Maybe Int),
    _newTags ::
      !( Maybe
           (List1 Tag)
       ),
    _newDirectConnectGatewayId ::
      !(Maybe Text),
    _newAddressFamily ::
      !( Maybe
           AddressFamily
       ),
    _newAmazonAddress ::
      !(Maybe Text),
    _newCustomerAddress ::
      !(Maybe Text),
    _newVirtualInterfaceName ::
      !Text,
    _newVlan :: !Int,
    _newAsn :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NewPrivateVirtualInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'newAuthKey' - The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
--
-- * 'newVirtualGatewayId' - The ID of the virtual private gateway.
--
-- * 'newMtu' - The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.
--
-- * 'newTags' - The tags associated with the private virtual interface.
--
-- * 'newDirectConnectGatewayId' - The ID of the Direct Connect gateway.
--
-- * 'newAddressFamily' - The address family for the BGP peer.
--
-- * 'newAmazonAddress' - The IP address assigned to the Amazon interface.
--
-- * 'newCustomerAddress' - The IP address assigned to the customer interface.
--
-- * 'newVirtualInterfaceName' - The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
--
-- * 'newVlan' - The ID of the VLAN.
--
-- * 'newAsn' - The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
newPrivateVirtualInterface ::
  -- | 'newVirtualInterfaceName'
  Text ->
  -- | 'newVlan'
  Int ->
  -- | 'newAsn'
  Int ->
  NewPrivateVirtualInterface
newPrivateVirtualInterface
  pVirtualInterfaceName_
  pVlan_
  pAsn_ =
    NewPrivateVirtualInterface'
      { _newAuthKey = Nothing,
        _newVirtualGatewayId = Nothing,
        _newMtu = Nothing,
        _newTags = Nothing,
        _newDirectConnectGatewayId = Nothing,
        _newAddressFamily = Nothing,
        _newAmazonAddress = Nothing,
        _newCustomerAddress = Nothing,
        _newVirtualInterfaceName =
          pVirtualInterfaceName_,
        _newVlan = pVlan_,
        _newAsn = pAsn_
      }

-- | The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
newAuthKey :: Lens' NewPrivateVirtualInterface (Maybe Text)
newAuthKey = lens _newAuthKey (\s a -> s {_newAuthKey = a})

-- | The ID of the virtual private gateway.
newVirtualGatewayId :: Lens' NewPrivateVirtualInterface (Maybe Text)
newVirtualGatewayId = lens _newVirtualGatewayId (\s a -> s {_newVirtualGatewayId = a})

-- | The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.
newMtu :: Lens' NewPrivateVirtualInterface (Maybe Int)
newMtu = lens _newMtu (\s a -> s {_newMtu = a})

-- | The tags associated with the private virtual interface.
newTags :: Lens' NewPrivateVirtualInterface (Maybe (NonEmpty Tag))
newTags = lens _newTags (\s a -> s {_newTags = a}) . mapping _List1

-- | The ID of the Direct Connect gateway.
newDirectConnectGatewayId :: Lens' NewPrivateVirtualInterface (Maybe Text)
newDirectConnectGatewayId = lens _newDirectConnectGatewayId (\s a -> s {_newDirectConnectGatewayId = a})

-- | The address family for the BGP peer.
newAddressFamily :: Lens' NewPrivateVirtualInterface (Maybe AddressFamily)
newAddressFamily = lens _newAddressFamily (\s a -> s {_newAddressFamily = a})

-- | The IP address assigned to the Amazon interface.
newAmazonAddress :: Lens' NewPrivateVirtualInterface (Maybe Text)
newAmazonAddress = lens _newAmazonAddress (\s a -> s {_newAmazonAddress = a})

-- | The IP address assigned to the customer interface.
newCustomerAddress :: Lens' NewPrivateVirtualInterface (Maybe Text)
newCustomerAddress = lens _newCustomerAddress (\s a -> s {_newCustomerAddress = a})

-- | The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
newVirtualInterfaceName :: Lens' NewPrivateVirtualInterface Text
newVirtualInterfaceName = lens _newVirtualInterfaceName (\s a -> s {_newVirtualInterfaceName = a})

-- | The ID of the VLAN.
newVlan :: Lens' NewPrivateVirtualInterface Int
newVlan = lens _newVlan (\s a -> s {_newVlan = a})

-- | The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
newAsn :: Lens' NewPrivateVirtualInterface Int
newAsn = lens _newAsn (\s a -> s {_newAsn = a})

instance Hashable NewPrivateVirtualInterface

instance NFData NewPrivateVirtualInterface

instance ToJSON NewPrivateVirtualInterface where
  toJSON NewPrivateVirtualInterface' {..} =
    object
      ( catMaybes
          [ ("authKey" .=) <$> _newAuthKey,
            ("virtualGatewayId" .=) <$> _newVirtualGatewayId,
            ("mtu" .=) <$> _newMtu,
            ("tags" .=) <$> _newTags,
            ("directConnectGatewayId" .=)
              <$> _newDirectConnectGatewayId,
            ("addressFamily" .=) <$> _newAddressFamily,
            ("amazonAddress" .=) <$> _newAmazonAddress,
            ("customerAddress" .=) <$> _newCustomerAddress,
            Just
              ("virtualInterfaceName" .= _newVirtualInterfaceName),
            Just ("vlan" .= _newVlan),
            Just ("asn" .= _newAsn)
          ]
      )
