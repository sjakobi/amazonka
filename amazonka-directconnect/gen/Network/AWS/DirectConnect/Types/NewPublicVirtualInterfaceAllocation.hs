{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.NewPublicVirtualInterfaceAllocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.NewPublicVirtualInterfaceAllocation where

import Network.AWS.DirectConnect.Types.AddressFamily
import Network.AWS.DirectConnect.Types.RouteFilterPrefix
import Network.AWS.DirectConnect.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a public virtual interface to be provisioned on a connection.
--
--
--
-- /See:/ 'newPublicVirtualInterfaceAllocation' smart constructor.
data NewPublicVirtualInterfaceAllocation = NewPublicVirtualInterfaceAllocation'
  { _nAuthKey ::
      !( Maybe
           Text
       ),
    _nRouteFilterPrefixes ::
      !( Maybe
           [RouteFilterPrefix]
       ),
    _nTags ::
      !( Maybe
           ( List1
               Tag
           )
       ),
    _nAddressFamily ::
      !( Maybe
           AddressFamily
       ),
    _nAmazonAddress ::
      !( Maybe
           Text
       ),
    _nCustomerAddress ::
      !( Maybe
           Text
       ),
    _nVirtualInterfaceName ::
      !Text,
    _nVlan ::
      !Int,
    _nAsn ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NewPublicVirtualInterfaceAllocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nAuthKey' - The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
--
-- * 'nRouteFilterPrefixes' - The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.
--
-- * 'nTags' - The tags associated with the public virtual interface.
--
-- * 'nAddressFamily' - The address family for the BGP peer.
--
-- * 'nAmazonAddress' - The IP address assigned to the Amazon interface.
--
-- * 'nCustomerAddress' - The IP address assigned to the customer interface.
--
-- * 'nVirtualInterfaceName' - The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
--
-- * 'nVlan' - The ID of the VLAN.
--
-- * 'nAsn' - The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
newPublicVirtualInterfaceAllocation ::
  -- | 'nVirtualInterfaceName'
  Text ->
  -- | 'nVlan'
  Int ->
  -- | 'nAsn'
  Int ->
  NewPublicVirtualInterfaceAllocation
newPublicVirtualInterfaceAllocation
  pVirtualInterfaceName_
  pVlan_
  pAsn_ =
    NewPublicVirtualInterfaceAllocation'
      { _nAuthKey =
          Nothing,
        _nRouteFilterPrefixes = Nothing,
        _nTags = Nothing,
        _nAddressFamily = Nothing,
        _nAmazonAddress = Nothing,
        _nCustomerAddress = Nothing,
        _nVirtualInterfaceName =
          pVirtualInterfaceName_,
        _nVlan = pVlan_,
        _nAsn = pAsn_
      }

-- | The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
nAuthKey :: Lens' NewPublicVirtualInterfaceAllocation (Maybe Text)
nAuthKey = lens _nAuthKey (\s a -> s {_nAuthKey = a})

-- | The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.
nRouteFilterPrefixes :: Lens' NewPublicVirtualInterfaceAllocation [RouteFilterPrefix]
nRouteFilterPrefixes = lens _nRouteFilterPrefixes (\s a -> s {_nRouteFilterPrefixes = a}) . _Default . _Coerce

-- | The tags associated with the public virtual interface.
nTags :: Lens' NewPublicVirtualInterfaceAllocation (Maybe (NonEmpty Tag))
nTags = lens _nTags (\s a -> s {_nTags = a}) . mapping _List1

-- | The address family for the BGP peer.
nAddressFamily :: Lens' NewPublicVirtualInterfaceAllocation (Maybe AddressFamily)
nAddressFamily = lens _nAddressFamily (\s a -> s {_nAddressFamily = a})

-- | The IP address assigned to the Amazon interface.
nAmazonAddress :: Lens' NewPublicVirtualInterfaceAllocation (Maybe Text)
nAmazonAddress = lens _nAmazonAddress (\s a -> s {_nAmazonAddress = a})

-- | The IP address assigned to the customer interface.
nCustomerAddress :: Lens' NewPublicVirtualInterfaceAllocation (Maybe Text)
nCustomerAddress = lens _nCustomerAddress (\s a -> s {_nCustomerAddress = a})

-- | The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
nVirtualInterfaceName :: Lens' NewPublicVirtualInterfaceAllocation Text
nVirtualInterfaceName = lens _nVirtualInterfaceName (\s a -> s {_nVirtualInterfaceName = a})

-- | The ID of the VLAN.
nVlan :: Lens' NewPublicVirtualInterfaceAllocation Int
nVlan = lens _nVlan (\s a -> s {_nVlan = a})

-- | The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
nAsn :: Lens' NewPublicVirtualInterfaceAllocation Int
nAsn = lens _nAsn (\s a -> s {_nAsn = a})

instance Hashable NewPublicVirtualInterfaceAllocation

instance NFData NewPublicVirtualInterfaceAllocation

instance ToJSON NewPublicVirtualInterfaceAllocation where
  toJSON NewPublicVirtualInterfaceAllocation' {..} =
    object
      ( catMaybes
          [ ("authKey" .=) <$> _nAuthKey,
            ("routeFilterPrefixes" .=) <$> _nRouteFilterPrefixes,
            ("tags" .=) <$> _nTags,
            ("addressFamily" .=) <$> _nAddressFamily,
            ("amazonAddress" .=) <$> _nAmazonAddress,
            ("customerAddress" .=) <$> _nCustomerAddress,
            Just
              ("virtualInterfaceName" .= _nVirtualInterfaceName),
            Just ("vlan" .= _nVlan),
            Just ("asn" .= _nAsn)
          ]
      )
