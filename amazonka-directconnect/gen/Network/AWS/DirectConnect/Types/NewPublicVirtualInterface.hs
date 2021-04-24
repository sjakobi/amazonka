{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.NewPublicVirtualInterface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.NewPublicVirtualInterface where

import Network.AWS.DirectConnect.Types.AddressFamily
import Network.AWS.DirectConnect.Types.RouteFilterPrefix
import Network.AWS.DirectConnect.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a public virtual interface.
--
--
--
-- /See:/ 'newPublicVirtualInterface' smart constructor.
data NewPublicVirtualInterface = NewPublicVirtualInterface'
  { _npviAuthKey ::
      !(Maybe Text),
    _npviRouteFilterPrefixes ::
      !( Maybe
           [RouteFilterPrefix]
       ),
    _npviTags ::
      !( Maybe
           (List1 Tag)
       ),
    _npviAddressFamily ::
      !( Maybe
           AddressFamily
       ),
    _npviAmazonAddress ::
      !(Maybe Text),
    _npviCustomerAddress ::
      !(Maybe Text),
    _npviVirtualInterfaceName ::
      !Text,
    _npviVlan :: !Int,
    _npviAsn :: !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'NewPublicVirtualInterface' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'npviAuthKey' - The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
--
-- * 'npviRouteFilterPrefixes' - The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.
--
-- * 'npviTags' - The tags associated with the public virtual interface.
--
-- * 'npviAddressFamily' - The address family for the BGP peer.
--
-- * 'npviAmazonAddress' - The IP address assigned to the Amazon interface.
--
-- * 'npviCustomerAddress' - The IP address assigned to the customer interface.
--
-- * 'npviVirtualInterfaceName' - The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
--
-- * 'npviVlan' - The ID of the VLAN.
--
-- * 'npviAsn' - The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
newPublicVirtualInterface ::
  -- | 'npviVirtualInterfaceName'
  Text ->
  -- | 'npviVlan'
  Int ->
  -- | 'npviAsn'
  Int ->
  NewPublicVirtualInterface
newPublicVirtualInterface
  pVirtualInterfaceName_
  pVlan_
  pAsn_ =
    NewPublicVirtualInterface'
      { _npviAuthKey = Nothing,
        _npviRouteFilterPrefixes = Nothing,
        _npviTags = Nothing,
        _npviAddressFamily = Nothing,
        _npviAmazonAddress = Nothing,
        _npviCustomerAddress = Nothing,
        _npviVirtualInterfaceName =
          pVirtualInterfaceName_,
        _npviVlan = pVlan_,
        _npviAsn = pAsn_
      }

-- | The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
npviAuthKey :: Lens' NewPublicVirtualInterface (Maybe Text)
npviAuthKey = lens _npviAuthKey (\s a -> s {_npviAuthKey = a})

-- | The routes to be advertised to the AWS network in this Region. Applies to public virtual interfaces.
npviRouteFilterPrefixes :: Lens' NewPublicVirtualInterface [RouteFilterPrefix]
npviRouteFilterPrefixes = lens _npviRouteFilterPrefixes (\s a -> s {_npviRouteFilterPrefixes = a}) . _Default . _Coerce

-- | The tags associated with the public virtual interface.
npviTags :: Lens' NewPublicVirtualInterface (Maybe (NonEmpty Tag))
npviTags = lens _npviTags (\s a -> s {_npviTags = a}) . mapping _List1

-- | The address family for the BGP peer.
npviAddressFamily :: Lens' NewPublicVirtualInterface (Maybe AddressFamily)
npviAddressFamily = lens _npviAddressFamily (\s a -> s {_npviAddressFamily = a})

-- | The IP address assigned to the Amazon interface.
npviAmazonAddress :: Lens' NewPublicVirtualInterface (Maybe Text)
npviAmazonAddress = lens _npviAmazonAddress (\s a -> s {_npviAmazonAddress = a})

-- | The IP address assigned to the customer interface.
npviCustomerAddress :: Lens' NewPublicVirtualInterface (Maybe Text)
npviCustomerAddress = lens _npviCustomerAddress (\s a -> s {_npviCustomerAddress = a})

-- | The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
npviVirtualInterfaceName :: Lens' NewPublicVirtualInterface Text
npviVirtualInterfaceName = lens _npviVirtualInterfaceName (\s a -> s {_npviVirtualInterfaceName = a})

-- | The ID of the VLAN.
npviVlan :: Lens' NewPublicVirtualInterface Int
npviVlan = lens _npviVlan (\s a -> s {_npviVlan = a})

-- | The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration. The valid values are 1-2147483647.
npviAsn :: Lens' NewPublicVirtualInterface Int
npviAsn = lens _npviAsn (\s a -> s {_npviAsn = a})

instance Hashable NewPublicVirtualInterface

instance NFData NewPublicVirtualInterface

instance ToJSON NewPublicVirtualInterface where
  toJSON NewPublicVirtualInterface' {..} =
    object
      ( catMaybes
          [ ("authKey" .=) <$> _npviAuthKey,
            ("routeFilterPrefixes" .=)
              <$> _npviRouteFilterPrefixes,
            ("tags" .=) <$> _npviTags,
            ("addressFamily" .=) <$> _npviAddressFamily,
            ("amazonAddress" .=) <$> _npviAmazonAddress,
            ("customerAddress" .=) <$> _npviCustomerAddress,
            Just
              ( "virtualInterfaceName"
                  .= _npviVirtualInterfaceName
              ),
            Just ("vlan" .= _npviVlan),
            Just ("asn" .= _npviAsn)
          ]
      )
