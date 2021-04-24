{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.NewTransitVirtualInterfaceAllocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.NewTransitVirtualInterfaceAllocation where

import Network.AWS.DirectConnect.Types.AddressFamily
import Network.AWS.DirectConnect.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a transit virtual interface to be provisioned on a connection.
--
--
--
-- /See:/ 'newTransitVirtualInterfaceAllocation' smart constructor.
data NewTransitVirtualInterfaceAllocation = NewTransitVirtualInterfaceAllocation'
  { _ntviaAuthKey ::
      !( Maybe
           Text
       ),
    _ntviaAsn ::
      !( Maybe
           Int
       ),
    _ntviaMtu ::
      !( Maybe
           Int
       ),
    _ntviaTags ::
      !( Maybe
           ( List1
               Tag
           )
       ),
    _ntviaVirtualInterfaceName ::
      !( Maybe
           Text
       ),
    _ntviaAddressFamily ::
      !( Maybe
           AddressFamily
       ),
    _ntviaAmazonAddress ::
      !( Maybe
           Text
       ),
    _ntviaVlan ::
      !( Maybe
           Int
       ),
    _ntviaCustomerAddress ::
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

-- | Creates a value of 'NewTransitVirtualInterfaceAllocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ntviaAuthKey' - The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
--
-- * 'ntviaAsn' - The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
--
-- * 'ntviaMtu' - The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.
--
-- * 'ntviaTags' - The tags associated with the transitive virtual interface.
--
-- * 'ntviaVirtualInterfaceName' - The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
--
-- * 'ntviaAddressFamily' - The address family for the BGP peer.
--
-- * 'ntviaAmazonAddress' - The IP address assigned to the Amazon interface.
--
-- * 'ntviaVlan' - The ID of the VLAN.
--
-- * 'ntviaCustomerAddress' - The IP address assigned to the customer interface.
newTransitVirtualInterfaceAllocation ::
  NewTransitVirtualInterfaceAllocation
newTransitVirtualInterfaceAllocation =
  NewTransitVirtualInterfaceAllocation'
    { _ntviaAuthKey =
        Nothing,
      _ntviaAsn = Nothing,
      _ntviaMtu = Nothing,
      _ntviaTags = Nothing,
      _ntviaVirtualInterfaceName = Nothing,
      _ntviaAddressFamily = Nothing,
      _ntviaAmazonAddress = Nothing,
      _ntviaVlan = Nothing,
      _ntviaCustomerAddress = Nothing
    }

-- | The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
ntviaAuthKey :: Lens' NewTransitVirtualInterfaceAllocation (Maybe Text)
ntviaAuthKey = lens _ntviaAuthKey (\s a -> s {_ntviaAuthKey = a})

-- | The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
ntviaAsn :: Lens' NewTransitVirtualInterfaceAllocation (Maybe Int)
ntviaAsn = lens _ntviaAsn (\s a -> s {_ntviaAsn = a})

-- | The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.
ntviaMtu :: Lens' NewTransitVirtualInterfaceAllocation (Maybe Int)
ntviaMtu = lens _ntviaMtu (\s a -> s {_ntviaMtu = a})

-- | The tags associated with the transitive virtual interface.
ntviaTags :: Lens' NewTransitVirtualInterfaceAllocation (Maybe (NonEmpty Tag))
ntviaTags = lens _ntviaTags (\s a -> s {_ntviaTags = a}) . mapping _List1

-- | The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
ntviaVirtualInterfaceName :: Lens' NewTransitVirtualInterfaceAllocation (Maybe Text)
ntviaVirtualInterfaceName = lens _ntviaVirtualInterfaceName (\s a -> s {_ntviaVirtualInterfaceName = a})

-- | The address family for the BGP peer.
ntviaAddressFamily :: Lens' NewTransitVirtualInterfaceAllocation (Maybe AddressFamily)
ntviaAddressFamily = lens _ntviaAddressFamily (\s a -> s {_ntviaAddressFamily = a})

-- | The IP address assigned to the Amazon interface.
ntviaAmazonAddress :: Lens' NewTransitVirtualInterfaceAllocation (Maybe Text)
ntviaAmazonAddress = lens _ntviaAmazonAddress (\s a -> s {_ntviaAmazonAddress = a})

-- | The ID of the VLAN.
ntviaVlan :: Lens' NewTransitVirtualInterfaceAllocation (Maybe Int)
ntviaVlan = lens _ntviaVlan (\s a -> s {_ntviaVlan = a})

-- | The IP address assigned to the customer interface.
ntviaCustomerAddress :: Lens' NewTransitVirtualInterfaceAllocation (Maybe Text)
ntviaCustomerAddress = lens _ntviaCustomerAddress (\s a -> s {_ntviaCustomerAddress = a})

instance
  Hashable
    NewTransitVirtualInterfaceAllocation

instance NFData NewTransitVirtualInterfaceAllocation

instance ToJSON NewTransitVirtualInterfaceAllocation where
  toJSON NewTransitVirtualInterfaceAllocation' {..} =
    object
      ( catMaybes
          [ ("authKey" .=) <$> _ntviaAuthKey,
            ("asn" .=) <$> _ntviaAsn,
            ("mtu" .=) <$> _ntviaMtu,
            ("tags" .=) <$> _ntviaTags,
            ("virtualInterfaceName" .=)
              <$> _ntviaVirtualInterfaceName,
            ("addressFamily" .=) <$> _ntviaAddressFamily,
            ("amazonAddress" .=) <$> _ntviaAmazonAddress,
            ("vlan" .=) <$> _ntviaVlan,
            ("customerAddress" .=) <$> _ntviaCustomerAddress
          ]
      )
