{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.NatGateway
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.NatGateway where

import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.NatGatewayAddress
import Network.AWS.EC2.Types.NatGatewayState
import Network.AWS.EC2.Types.ProvisionedBandwidth
import Network.AWS.EC2.Types.Tag
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes a NAT gateway.
--
--
--
-- /See:/ 'natGateway' smart constructor.
data NatGateway = NatGateway'
  { _ngNatGatewayAddresses ::
      !(Maybe [NatGatewayAddress]),
    _ngFailureMessage :: !(Maybe Text),
    _ngFailureCode :: !(Maybe Text),
    _ngProvisionedBandwidth ::
      !(Maybe ProvisionedBandwidth),
    _ngState :: !(Maybe NatGatewayState),
    _ngDeleteTime :: !(Maybe ISO8601),
    _ngTags :: !(Maybe [Tag]),
    _ngCreateTime :: !(Maybe ISO8601),
    _ngSubnetId :: !(Maybe Text),
    _ngNatGatewayId :: !(Maybe Text),
    _ngVPCId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'NatGateway' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngNatGatewayAddresses' - Information about the IP addresses and network interface associated with the NAT gateway.
--
-- * 'ngFailureMessage' - If the NAT gateway could not be created, specifies the error message for the failure, that corresponds to the error code.     * For InsufficientFreeAddressesInSubnet: "Subnet has insufficient free addresses to create this NAT gateway"     * For Gateway.NotAttached: "Network vpc-xxxxxxxx has no Internet gateway attached"     * For InvalidAllocationID.NotFound: "Elastic IP address eipalloc-xxxxxxxx could not be associated with this NAT gateway"     * For Resource.AlreadyAssociated: "Elastic IP address eipalloc-xxxxxxxx is already associated"     * For InternalError: "Network interface eni-xxxxxxxx, created and used internally by this NAT gateway is in an invalid state. Please try again."     * For InvalidSubnetID.NotFound: "The specified subnet subnet-xxxxxxxx does not exist or could not be found."
--
-- * 'ngFailureCode' - If the NAT gateway could not be created, specifies the error code for the failure. (@InsufficientFreeAddressesInSubnet@ | @Gateway.NotAttached@ | @InvalidAllocationID.NotFound@ | @Resource.AlreadyAssociated@ | @InternalError@ | @InvalidSubnetID.NotFound@ )
--
-- * 'ngProvisionedBandwidth' - Reserved. If you need to sustain traffic greater than the <https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html documented limits> , contact us through the <https://console.aws.amazon.com/support/home? Support Center> .
--
-- * 'ngState' - The state of the NAT gateway.     * @pending@ : The NAT gateway is being created and is not ready to process traffic.     * @failed@ : The NAT gateway could not be created. Check the @failureCode@ and @failureMessage@ fields for the reason.     * @available@ : The NAT gateway is able to process traffic. This status remains until you delete the NAT gateway, and does not indicate the health of the NAT gateway.     * @deleting@ : The NAT gateway is in the process of being terminated and may still be processing traffic.     * @deleted@ : The NAT gateway has been terminated and is no longer processing traffic.
--
-- * 'ngDeleteTime' - The date and time the NAT gateway was deleted, if applicable.
--
-- * 'ngTags' - The tags for the NAT gateway.
--
-- * 'ngCreateTime' - The date and time the NAT gateway was created.
--
-- * 'ngSubnetId' - The ID of the subnet in which the NAT gateway is located.
--
-- * 'ngNatGatewayId' - The ID of the NAT gateway.
--
-- * 'ngVPCId' - The ID of the VPC in which the NAT gateway is located.
natGateway ::
  NatGateway
natGateway =
  NatGateway'
    { _ngNatGatewayAddresses = Nothing,
      _ngFailureMessage = Nothing,
      _ngFailureCode = Nothing,
      _ngProvisionedBandwidth = Nothing,
      _ngState = Nothing,
      _ngDeleteTime = Nothing,
      _ngTags = Nothing,
      _ngCreateTime = Nothing,
      _ngSubnetId = Nothing,
      _ngNatGatewayId = Nothing,
      _ngVPCId = Nothing
    }

-- | Information about the IP addresses and network interface associated with the NAT gateway.
ngNatGatewayAddresses :: Lens' NatGateway [NatGatewayAddress]
ngNatGatewayAddresses = lens _ngNatGatewayAddresses (\s a -> s {_ngNatGatewayAddresses = a}) . _Default . _Coerce

-- | If the NAT gateway could not be created, specifies the error message for the failure, that corresponds to the error code.     * For InsufficientFreeAddressesInSubnet: "Subnet has insufficient free addresses to create this NAT gateway"     * For Gateway.NotAttached: "Network vpc-xxxxxxxx has no Internet gateway attached"     * For InvalidAllocationID.NotFound: "Elastic IP address eipalloc-xxxxxxxx could not be associated with this NAT gateway"     * For Resource.AlreadyAssociated: "Elastic IP address eipalloc-xxxxxxxx is already associated"     * For InternalError: "Network interface eni-xxxxxxxx, created and used internally by this NAT gateway is in an invalid state. Please try again."     * For InvalidSubnetID.NotFound: "The specified subnet subnet-xxxxxxxx does not exist or could not be found."
ngFailureMessage :: Lens' NatGateway (Maybe Text)
ngFailureMessage = lens _ngFailureMessage (\s a -> s {_ngFailureMessage = a})

-- | If the NAT gateway could not be created, specifies the error code for the failure. (@InsufficientFreeAddressesInSubnet@ | @Gateway.NotAttached@ | @InvalidAllocationID.NotFound@ | @Resource.AlreadyAssociated@ | @InternalError@ | @InvalidSubnetID.NotFound@ )
ngFailureCode :: Lens' NatGateway (Maybe Text)
ngFailureCode = lens _ngFailureCode (\s a -> s {_ngFailureCode = a})

-- | Reserved. If you need to sustain traffic greater than the <https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html documented limits> , contact us through the <https://console.aws.amazon.com/support/home? Support Center> .
ngProvisionedBandwidth :: Lens' NatGateway (Maybe ProvisionedBandwidth)
ngProvisionedBandwidth = lens _ngProvisionedBandwidth (\s a -> s {_ngProvisionedBandwidth = a})

-- | The state of the NAT gateway.     * @pending@ : The NAT gateway is being created and is not ready to process traffic.     * @failed@ : The NAT gateway could not be created. Check the @failureCode@ and @failureMessage@ fields for the reason.     * @available@ : The NAT gateway is able to process traffic. This status remains until you delete the NAT gateway, and does not indicate the health of the NAT gateway.     * @deleting@ : The NAT gateway is in the process of being terminated and may still be processing traffic.     * @deleted@ : The NAT gateway has been terminated and is no longer processing traffic.
ngState :: Lens' NatGateway (Maybe NatGatewayState)
ngState = lens _ngState (\s a -> s {_ngState = a})

-- | The date and time the NAT gateway was deleted, if applicable.
ngDeleteTime :: Lens' NatGateway (Maybe UTCTime)
ngDeleteTime = lens _ngDeleteTime (\s a -> s {_ngDeleteTime = a}) . mapping _Time

-- | The tags for the NAT gateway.
ngTags :: Lens' NatGateway [Tag]
ngTags = lens _ngTags (\s a -> s {_ngTags = a}) . _Default . _Coerce

-- | The date and time the NAT gateway was created.
ngCreateTime :: Lens' NatGateway (Maybe UTCTime)
ngCreateTime = lens _ngCreateTime (\s a -> s {_ngCreateTime = a}) . mapping _Time

-- | The ID of the subnet in which the NAT gateway is located.
ngSubnetId :: Lens' NatGateway (Maybe Text)
ngSubnetId = lens _ngSubnetId (\s a -> s {_ngSubnetId = a})

-- | The ID of the NAT gateway.
ngNatGatewayId :: Lens' NatGateway (Maybe Text)
ngNatGatewayId = lens _ngNatGatewayId (\s a -> s {_ngNatGatewayId = a})

-- | The ID of the VPC in which the NAT gateway is located.
ngVPCId :: Lens' NatGateway (Maybe Text)
ngVPCId = lens _ngVPCId (\s a -> s {_ngVPCId = a})

instance FromXML NatGateway where
  parseXML x =
    NatGateway'
      <$> ( x .@? "natGatewayAddressSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "failureMessage")
      <*> (x .@? "failureCode")
      <*> (x .@? "provisionedBandwidth")
      <*> (x .@? "state")
      <*> (x .@? "deleteTime")
      <*> ( x .@? "tagSet" .!@ mempty
              >>= may (parseXMLList "item")
          )
      <*> (x .@? "createTime")
      <*> (x .@? "subnetId")
      <*> (x .@? "natGatewayId")
      <*> (x .@? "vpcId")

instance Hashable NatGateway

instance NFData NatGateway
