{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.AssociateAddress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates an Elastic IP address, or carrier IP address (for instances that are in subnets in Wavelength Zones) with an instance or a network interface. Before you can use an Elastic IP address, you must allocate it to your account.
--
--
-- An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP Addresses> in the /Amazon Elastic Compute Cloud User Guide/ .
--
-- [EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address is already associated with a different instance, it is disassociated from that instance and associated with the specified instance. If you associate an Elastic IP address with an instance that has an existing Elastic IP address, the existing address is disassociated from the instance, but remains allocated to your account.
--
-- [VPC in an EC2-Classic account] If you don't specify a private IP address, the Elastic IP address is associated with the primary IP address. If the Elastic IP address is already associated with a different instance or a network interface, you get an error unless you allow reassociation. You cannot associate an Elastic IP address with an instance or network interface that has an existing Elastic IP address.
--
-- [Subnets in Wavelength Zones] You can associate an IP address from the telecommunication carrier to the instance or network interface.
--
-- You cannot associate an Elastic IP address with an interface in a different network border group.
--
-- /Important:/ This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error, and you may be charged for each time the Elastic IP address is remapped to the same instance. For more information, see the /Elastic IP Addresses/ section of <http://aws.amazon.com/ec2/pricing/ Amazon EC2 Pricing> .
module Network.AWS.EC2.AssociateAddress
  ( -- * Creating a Request
    associateAddress,
    AssociateAddress,

    -- * Request Lenses
    aasInstanceId,
    aasDryRun,
    aasAllowReassociation,
    aasNetworkInterfaceId,
    aasPublicIP,
    aasAllocationId,
    aasPrivateIPAddress,

    -- * Destructuring the Response
    associateAddressResponse,
    AssociateAddressResponse,

    -- * Response Lenses
    aarrsAssociationId,
    aarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'associateAddress' smart constructor.
data AssociateAddress = AssociateAddress'
  { _aasInstanceId ::
      !(Maybe Text),
    _aasDryRun :: !(Maybe Bool),
    _aasAllowReassociation ::
      !(Maybe Bool),
    _aasNetworkInterfaceId ::
      !(Maybe Text),
    _aasPublicIP :: !(Maybe Text),
    _aasAllocationId :: !(Maybe Text),
    _aasPrivateIPAddress :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AssociateAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aasInstanceId' - The ID of the instance. The instance must have exactly one attached network interface. For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both. For EC2-Classic, you must specify an instance ID and the instance must be in the running state.
--
-- * 'aasDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'aasAllowReassociation' - [EC2-VPC] For a VPC in an EC2-Classic account, specify true to allow an Elastic IP address that is already associated with an instance or network interface to be reassociated with the specified instance or network interface. Otherwise, the operation fails. In a VPC in an EC2-VPC-only account, reassociation is automatic, therefore you can specify false to ensure the operation fails if the Elastic IP address is already associated with another resource.
--
-- * 'aasNetworkInterfaceId' - [EC2-VPC] The ID of the network interface. If the instance has more than one network interface, you must specify a network interface ID. For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both.
--
-- * 'aasPublicIP' - [EC2-Classic] The Elastic IP address to associate with the instance. This is required for EC2-Classic.
--
-- * 'aasAllocationId' - [EC2-VPC] The allocation ID. This is required for EC2-VPC.
--
-- * 'aasPrivateIPAddress' - [EC2-VPC] The primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
associateAddress ::
  AssociateAddress
associateAddress =
  AssociateAddress'
    { _aasInstanceId = Nothing,
      _aasDryRun = Nothing,
      _aasAllowReassociation = Nothing,
      _aasNetworkInterfaceId = Nothing,
      _aasPublicIP = Nothing,
      _aasAllocationId = Nothing,
      _aasPrivateIPAddress = Nothing
    }

-- | The ID of the instance. The instance must have exactly one attached network interface. For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both. For EC2-Classic, you must specify an instance ID and the instance must be in the running state.
aasInstanceId :: Lens' AssociateAddress (Maybe Text)
aasInstanceId = lens _aasInstanceId (\s a -> s {_aasInstanceId = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
aasDryRun :: Lens' AssociateAddress (Maybe Bool)
aasDryRun = lens _aasDryRun (\s a -> s {_aasDryRun = a})

-- | [EC2-VPC] For a VPC in an EC2-Classic account, specify true to allow an Elastic IP address that is already associated with an instance or network interface to be reassociated with the specified instance or network interface. Otherwise, the operation fails. In a VPC in an EC2-VPC-only account, reassociation is automatic, therefore you can specify false to ensure the operation fails if the Elastic IP address is already associated with another resource.
aasAllowReassociation :: Lens' AssociateAddress (Maybe Bool)
aasAllowReassociation = lens _aasAllowReassociation (\s a -> s {_aasAllowReassociation = a})

-- | [EC2-VPC] The ID of the network interface. If the instance has more than one network interface, you must specify a network interface ID. For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both.
aasNetworkInterfaceId :: Lens' AssociateAddress (Maybe Text)
aasNetworkInterfaceId = lens _aasNetworkInterfaceId (\s a -> s {_aasNetworkInterfaceId = a})

-- | [EC2-Classic] The Elastic IP address to associate with the instance. This is required for EC2-Classic.
aasPublicIP :: Lens' AssociateAddress (Maybe Text)
aasPublicIP = lens _aasPublicIP (\s a -> s {_aasPublicIP = a})

-- | [EC2-VPC] The allocation ID. This is required for EC2-VPC.
aasAllocationId :: Lens' AssociateAddress (Maybe Text)
aasAllocationId = lens _aasAllocationId (\s a -> s {_aasAllocationId = a})

-- | [EC2-VPC] The primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
aasPrivateIPAddress :: Lens' AssociateAddress (Maybe Text)
aasPrivateIPAddress = lens _aasPrivateIPAddress (\s a -> s {_aasPrivateIPAddress = a})

instance AWSRequest AssociateAddress where
  type Rs AssociateAddress = AssociateAddressResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          AssociateAddressResponse'
            <$> (x .@? "associationId") <*> (pure (fromEnum s))
      )

instance Hashable AssociateAddress

instance NFData AssociateAddress

instance ToHeaders AssociateAddress where
  toHeaders = const mempty

instance ToPath AssociateAddress where
  toPath = const "/"

instance ToQuery AssociateAddress where
  toQuery AssociateAddress' {..} =
    mconcat
      [ "Action" =: ("AssociateAddress" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "InstanceId" =: _aasInstanceId,
        "DryRun" =: _aasDryRun,
        "AllowReassociation" =: _aasAllowReassociation,
        "NetworkInterfaceId" =: _aasNetworkInterfaceId,
        "PublicIp" =: _aasPublicIP,
        "AllocationId" =: _aasAllocationId,
        "PrivateIpAddress" =: _aasPrivateIPAddress
      ]

-- | /See:/ 'associateAddressResponse' smart constructor.
data AssociateAddressResponse = AssociateAddressResponse'
  { _aarrsAssociationId ::
      !(Maybe Text),
    _aarrsResponseStatus ::
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

-- | Creates a value of 'AssociateAddressResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aarrsAssociationId' - [EC2-VPC] The ID that represents the association of the Elastic IP address with an instance.
--
-- * 'aarrsResponseStatus' - -- | The response status code.
associateAddressResponse ::
  -- | 'aarrsResponseStatus'
  Int ->
  AssociateAddressResponse
associateAddressResponse pResponseStatus_ =
  AssociateAddressResponse'
    { _aarrsAssociationId =
        Nothing,
      _aarrsResponseStatus = pResponseStatus_
    }

-- | [EC2-VPC] The ID that represents the association of the Elastic IP address with an instance.
aarrsAssociationId :: Lens' AssociateAddressResponse (Maybe Text)
aarrsAssociationId = lens _aarrsAssociationId (\s a -> s {_aarrsAssociationId = a})

-- | -- | The response status code.
aarrsResponseStatus :: Lens' AssociateAddressResponse Int
aarrsResponseStatus = lens _aarrsResponseStatus (\s a -> s {_aarrsResponseStatus = a})

instance NFData AssociateAddressResponse
