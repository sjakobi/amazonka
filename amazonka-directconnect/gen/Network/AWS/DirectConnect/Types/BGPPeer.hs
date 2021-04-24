{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectConnect.Types.BGPPeer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectConnect.Types.BGPPeer where

import Network.AWS.DirectConnect.Types.AddressFamily
import Network.AWS.DirectConnect.Types.BGPPeerState
import Network.AWS.DirectConnect.Types.BGPStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a BGP peer.
--
--
--
-- /See:/ 'bgpPeer' smart constructor.
data BGPPeer = BGPPeer'
  { _bpAuthKey :: !(Maybe Text),
    _bpAsn :: !(Maybe Int),
    _bpAwsDeviceV2 :: !(Maybe Text),
    _bpBgpPeerId :: !(Maybe Text),
    _bpBgpStatus :: !(Maybe BGPStatus),
    _bpBgpPeerState :: !(Maybe BGPPeerState),
    _bpAddressFamily :: !(Maybe AddressFamily),
    _bpAmazonAddress :: !(Maybe Text),
    _bpCustomerAddress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'BGPPeer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpAuthKey' - The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
--
-- * 'bpAsn' - The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
--
-- * 'bpAwsDeviceV2' - The Direct Connect endpoint on which the BGP peer terminates.
--
-- * 'bpBgpPeerId' - The ID of the BGP peer.
--
-- * 'bpBgpStatus' - The status of the BGP peer. The following are the possible values:     * @up@ : The BGP peer is established. This state does not indicate the state of the routing function. Ensure that you are receiving routes over the BGP session.     * @down@ : The BGP peer is down.     * @unknown@ : The BGP peer status is not available.
--
-- * 'bpBgpPeerState' - The state of the BGP peer. The following are the possible values:     * @verifying@ : The BGP peering addresses or ASN require validation before the BGP peer can be created. This state applies only to public virtual interfaces.     * @pending@ : The BGP peer is created, and remains in this state until it is ready to be established.     * @available@ : The BGP peer is ready to be established.     * @deleting@ : The BGP peer is being deleted.     * @deleted@ : The BGP peer is deleted and cannot be established.
--
-- * 'bpAddressFamily' - The address family for the BGP peer.
--
-- * 'bpAmazonAddress' - The IP address assigned to the Amazon interface.
--
-- * 'bpCustomerAddress' - The IP address assigned to the customer interface.
bgpPeer ::
  BGPPeer
bgpPeer =
  BGPPeer'
    { _bpAuthKey = Nothing,
      _bpAsn = Nothing,
      _bpAwsDeviceV2 = Nothing,
      _bpBgpPeerId = Nothing,
      _bpBgpStatus = Nothing,
      _bpBgpPeerState = Nothing,
      _bpAddressFamily = Nothing,
      _bpAmazonAddress = Nothing,
      _bpCustomerAddress = Nothing
    }

-- | The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.
bpAuthKey :: Lens' BGPPeer (Maybe Text)
bpAuthKey = lens _bpAuthKey (\s a -> s {_bpAuthKey = a})

-- | The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
bpAsn :: Lens' BGPPeer (Maybe Int)
bpAsn = lens _bpAsn (\s a -> s {_bpAsn = a})

-- | The Direct Connect endpoint on which the BGP peer terminates.
bpAwsDeviceV2 :: Lens' BGPPeer (Maybe Text)
bpAwsDeviceV2 = lens _bpAwsDeviceV2 (\s a -> s {_bpAwsDeviceV2 = a})

-- | The ID of the BGP peer.
bpBgpPeerId :: Lens' BGPPeer (Maybe Text)
bpBgpPeerId = lens _bpBgpPeerId (\s a -> s {_bpBgpPeerId = a})

-- | The status of the BGP peer. The following are the possible values:     * @up@ : The BGP peer is established. This state does not indicate the state of the routing function. Ensure that you are receiving routes over the BGP session.     * @down@ : The BGP peer is down.     * @unknown@ : The BGP peer status is not available.
bpBgpStatus :: Lens' BGPPeer (Maybe BGPStatus)
bpBgpStatus = lens _bpBgpStatus (\s a -> s {_bpBgpStatus = a})

-- | The state of the BGP peer. The following are the possible values:     * @verifying@ : The BGP peering addresses or ASN require validation before the BGP peer can be created. This state applies only to public virtual interfaces.     * @pending@ : The BGP peer is created, and remains in this state until it is ready to be established.     * @available@ : The BGP peer is ready to be established.     * @deleting@ : The BGP peer is being deleted.     * @deleted@ : The BGP peer is deleted and cannot be established.
bpBgpPeerState :: Lens' BGPPeer (Maybe BGPPeerState)
bpBgpPeerState = lens _bpBgpPeerState (\s a -> s {_bpBgpPeerState = a})

-- | The address family for the BGP peer.
bpAddressFamily :: Lens' BGPPeer (Maybe AddressFamily)
bpAddressFamily = lens _bpAddressFamily (\s a -> s {_bpAddressFamily = a})

-- | The IP address assigned to the Amazon interface.
bpAmazonAddress :: Lens' BGPPeer (Maybe Text)
bpAmazonAddress = lens _bpAmazonAddress (\s a -> s {_bpAmazonAddress = a})

-- | The IP address assigned to the customer interface.
bpCustomerAddress :: Lens' BGPPeer (Maybe Text)
bpCustomerAddress = lens _bpCustomerAddress (\s a -> s {_bpCustomerAddress = a})

instance FromJSON BGPPeer where
  parseJSON =
    withObject
      "BGPPeer"
      ( \x ->
          BGPPeer'
            <$> (x .:? "authKey")
            <*> (x .:? "asn")
            <*> (x .:? "awsDeviceV2")
            <*> (x .:? "bgpPeerId")
            <*> (x .:? "bgpStatus")
            <*> (x .:? "bgpPeerState")
            <*> (x .:? "addressFamily")
            <*> (x .:? "amazonAddress")
            <*> (x .:? "customerAddress")
      )

instance Hashable BGPPeer

instance NFData BGPPeer
