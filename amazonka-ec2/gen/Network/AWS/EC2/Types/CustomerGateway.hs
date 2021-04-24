{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.CustomerGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.CustomerGateway where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a customer gateway.
--
--
--
-- /See:/ 'customerGateway' smart constructor.
data CustomerGateway = CustomerGateway'
  { _cCertificateARN ::
      !(Maybe Text),
    _cDeviceName :: !(Maybe Text),
    _cTags :: !(Maybe [Tag]),
    _cBGPASN :: !Text,
    _cCustomerGatewayId :: !Text,
    _cIPAddress :: !Text,
    _cState :: !Text,
    _cType :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CustomerGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCertificateARN' - The Amazon Resource Name (ARN) for the customer gateway certificate.
--
-- * 'cDeviceName' - The name of customer gateway device.
--
-- * 'cTags' - Any tags assigned to the customer gateway.
--
-- * 'cBGPASN' - The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
--
-- * 'cCustomerGatewayId' - The ID of the customer gateway.
--
-- * 'cIPAddress' - The Internet-routable IP address of the customer gateway's outside interface.
--
-- * 'cState' - The current state of the customer gateway (@pending | available | deleting | deleted@ ).
--
-- * 'cType' - The type of VPN connection the customer gateway supports (@ipsec.1@ ).
customerGateway ::
  -- | 'cBGPASN'
  Text ->
  -- | 'cCustomerGatewayId'
  Text ->
  -- | 'cIPAddress'
  Text ->
  -- | 'cState'
  Text ->
  -- | 'cType'
  Text ->
  CustomerGateway
customerGateway
  pBGPASN_
  pCustomerGatewayId_
  pIPAddress_
  pState_
  pType_ =
    CustomerGateway'
      { _cCertificateARN = Nothing,
        _cDeviceName = Nothing,
        _cTags = Nothing,
        _cBGPASN = pBGPASN_,
        _cCustomerGatewayId = pCustomerGatewayId_,
        _cIPAddress = pIPAddress_,
        _cState = pState_,
        _cType = pType_
      }

-- | The Amazon Resource Name (ARN) for the customer gateway certificate.
cCertificateARN :: Lens' CustomerGateway (Maybe Text)
cCertificateARN = lens _cCertificateARN (\s a -> s {_cCertificateARN = a})

-- | The name of customer gateway device.
cDeviceName :: Lens' CustomerGateway (Maybe Text)
cDeviceName = lens _cDeviceName (\s a -> s {_cDeviceName = a})

-- | Any tags assigned to the customer gateway.
cTags :: Lens' CustomerGateway [Tag]
cTags = lens _cTags (\s a -> s {_cTags = a}) . _Default . _Coerce

-- | The customer gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).
cBGPASN :: Lens' CustomerGateway Text
cBGPASN = lens _cBGPASN (\s a -> s {_cBGPASN = a})

-- | The ID of the customer gateway.
cCustomerGatewayId :: Lens' CustomerGateway Text
cCustomerGatewayId = lens _cCustomerGatewayId (\s a -> s {_cCustomerGatewayId = a})

-- | The Internet-routable IP address of the customer gateway's outside interface.
cIPAddress :: Lens' CustomerGateway Text
cIPAddress = lens _cIPAddress (\s a -> s {_cIPAddress = a})

-- | The current state of the customer gateway (@pending | available | deleting | deleted@ ).
cState :: Lens' CustomerGateway Text
cState = lens _cState (\s a -> s {_cState = a})

-- | The type of VPN connection the customer gateway supports (@ipsec.1@ ).
cType :: Lens' CustomerGateway Text
cType = lens _cType (\s a -> s {_cType = a})

instance FromXML CustomerGateway where
  parseXML x =
    CustomerGateway'
      <$> (x .@? "certificateArn")
      <*> (x .@? "deviceName")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@ "bgpAsn")
      <*> (x .@ "customerGatewayId")
      <*> (x .@ "ipAddress")
      <*> (x .@ "state")
      <*> (x .@ "type")

instance Hashable CustomerGateway

instance NFData CustomerGateway
