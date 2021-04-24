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
-- Module      : Network.AWS.EC2.ModifyVPCEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies attributes of a specified VPC endpoint. The attributes that you can modify depend on the type of VPC endpoint (interface, gateway, or Gateway Load Balancer). For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints.html VPC Endpoints> in the /Amazon Virtual Private Cloud User Guide/ .
module Network.AWS.EC2.ModifyVPCEndpoint
  ( -- * Creating a Request
    modifyVPCEndpoint,
    ModifyVPCEndpoint,

    -- * Request Lenses
    mvePolicyDocument,
    mveDryRun,
    mveRemoveSubnetIds,
    mveAddRouteTableIds,
    mveResetPolicy,
    mveRemoveRouteTableIds,
    mveAddSubnetIds,
    mvePrivateDNSEnabled,
    mveRemoveSecurityGroupIds,
    mveAddSecurityGroupIds,
    mveVPCEndpointId,

    -- * Destructuring the Response
    modifyVPCEndpointResponse,
    ModifyVPCEndpointResponse,

    -- * Response Lenses
    mverrsReturn,
    mverrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for ModifyVpcEndpoint.
--
--
--
-- /See:/ 'modifyVPCEndpoint' smart constructor.
data ModifyVPCEndpoint = ModifyVPCEndpoint'
  { _mvePolicyDocument ::
      !(Maybe Text),
    _mveDryRun :: !(Maybe Bool),
    _mveRemoveSubnetIds ::
      !(Maybe [Text]),
    _mveAddRouteTableIds ::
      !(Maybe [Text]),
    _mveResetPolicy :: !(Maybe Bool),
    _mveRemoveRouteTableIds ::
      !(Maybe [Text]),
    _mveAddSubnetIds :: !(Maybe [Text]),
    _mvePrivateDNSEnabled ::
      !(Maybe Bool),
    _mveRemoveSecurityGroupIds ::
      !(Maybe [Text]),
    _mveAddSecurityGroupIds ::
      !(Maybe [Text]),
    _mveVPCEndpointId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyVPCEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvePolicyDocument' - (Interface and gateway endpoints) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format.
--
-- * 'mveDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mveRemoveSubnetIds' - (Interface endpoint) One or more subnets IDs in which to remove the endpoint.
--
-- * 'mveAddRouteTableIds' - (Gateway endpoint) One or more route tables IDs to associate with the endpoint.
--
-- * 'mveResetPolicy' - (Gateway endpoint) Specify @true@ to reset the policy document to the default policy. The default policy allows full access to the service.
--
-- * 'mveRemoveRouteTableIds' - (Gateway endpoint) One or more route table IDs to disassociate from the endpoint.
--
-- * 'mveAddSubnetIds' - (Interface and Gateway Load Balancer endpoints) One or more subnet IDs in which to serve the endpoint. For a Gateway Load Balancer endpoint, you can specify only one subnet.
--
-- * 'mvePrivateDNSEnabled' - (Interface endpoint) Indicates whether a private hosted zone is associated with the VPC.
--
-- * 'mveRemoveSecurityGroupIds' - (Interface endpoint) One or more security group IDs to disassociate from the network interface.
--
-- * 'mveAddSecurityGroupIds' - (Interface endpoint) One or more security group IDs to associate with the network interface.
--
-- * 'mveVPCEndpointId' - The ID of the endpoint.
modifyVPCEndpoint ::
  -- | 'mveVPCEndpointId'
  Text ->
  ModifyVPCEndpoint
modifyVPCEndpoint pVPCEndpointId_ =
  ModifyVPCEndpoint'
    { _mvePolicyDocument = Nothing,
      _mveDryRun = Nothing,
      _mveRemoveSubnetIds = Nothing,
      _mveAddRouteTableIds = Nothing,
      _mveResetPolicy = Nothing,
      _mveRemoveRouteTableIds = Nothing,
      _mveAddSubnetIds = Nothing,
      _mvePrivateDNSEnabled = Nothing,
      _mveRemoveSecurityGroupIds = Nothing,
      _mveAddSecurityGroupIds = Nothing,
      _mveVPCEndpointId = pVPCEndpointId_
    }

-- | (Interface and gateway endpoints) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format.
mvePolicyDocument :: Lens' ModifyVPCEndpoint (Maybe Text)
mvePolicyDocument = lens _mvePolicyDocument (\s a -> s {_mvePolicyDocument = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mveDryRun :: Lens' ModifyVPCEndpoint (Maybe Bool)
mveDryRun = lens _mveDryRun (\s a -> s {_mveDryRun = a})

-- | (Interface endpoint) One or more subnets IDs in which to remove the endpoint.
mveRemoveSubnetIds :: Lens' ModifyVPCEndpoint [Text]
mveRemoveSubnetIds = lens _mveRemoveSubnetIds (\s a -> s {_mveRemoveSubnetIds = a}) . _Default . _Coerce

-- | (Gateway endpoint) One or more route tables IDs to associate with the endpoint.
mveAddRouteTableIds :: Lens' ModifyVPCEndpoint [Text]
mveAddRouteTableIds = lens _mveAddRouteTableIds (\s a -> s {_mveAddRouteTableIds = a}) . _Default . _Coerce

-- | (Gateway endpoint) Specify @true@ to reset the policy document to the default policy. The default policy allows full access to the service.
mveResetPolicy :: Lens' ModifyVPCEndpoint (Maybe Bool)
mveResetPolicy = lens _mveResetPolicy (\s a -> s {_mveResetPolicy = a})

-- | (Gateway endpoint) One or more route table IDs to disassociate from the endpoint.
mveRemoveRouteTableIds :: Lens' ModifyVPCEndpoint [Text]
mveRemoveRouteTableIds = lens _mveRemoveRouteTableIds (\s a -> s {_mveRemoveRouteTableIds = a}) . _Default . _Coerce

-- | (Interface and Gateway Load Balancer endpoints) One or more subnet IDs in which to serve the endpoint. For a Gateway Load Balancer endpoint, you can specify only one subnet.
mveAddSubnetIds :: Lens' ModifyVPCEndpoint [Text]
mveAddSubnetIds = lens _mveAddSubnetIds (\s a -> s {_mveAddSubnetIds = a}) . _Default . _Coerce

-- | (Interface endpoint) Indicates whether a private hosted zone is associated with the VPC.
mvePrivateDNSEnabled :: Lens' ModifyVPCEndpoint (Maybe Bool)
mvePrivateDNSEnabled = lens _mvePrivateDNSEnabled (\s a -> s {_mvePrivateDNSEnabled = a})

-- | (Interface endpoint) One or more security group IDs to disassociate from the network interface.
mveRemoveSecurityGroupIds :: Lens' ModifyVPCEndpoint [Text]
mveRemoveSecurityGroupIds = lens _mveRemoveSecurityGroupIds (\s a -> s {_mveRemoveSecurityGroupIds = a}) . _Default . _Coerce

-- | (Interface endpoint) One or more security group IDs to associate with the network interface.
mveAddSecurityGroupIds :: Lens' ModifyVPCEndpoint [Text]
mveAddSecurityGroupIds = lens _mveAddSecurityGroupIds (\s a -> s {_mveAddSecurityGroupIds = a}) . _Default . _Coerce

-- | The ID of the endpoint.
mveVPCEndpointId :: Lens' ModifyVPCEndpoint Text
mveVPCEndpointId = lens _mveVPCEndpointId (\s a -> s {_mveVPCEndpointId = a})

instance AWSRequest ModifyVPCEndpoint where
  type Rs ModifyVPCEndpoint = ModifyVPCEndpointResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyVPCEndpointResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable ModifyVPCEndpoint

instance NFData ModifyVPCEndpoint

instance ToHeaders ModifyVPCEndpoint where
  toHeaders = const mempty

instance ToPath ModifyVPCEndpoint where
  toPath = const "/"

instance ToQuery ModifyVPCEndpoint where
  toQuery ModifyVPCEndpoint' {..} =
    mconcat
      [ "Action" =: ("ModifyVpcEndpoint" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "PolicyDocument" =: _mvePolicyDocument,
        "DryRun" =: _mveDryRun,
        toQuery
          ( toQueryList "RemoveSubnetId"
              <$> _mveRemoveSubnetIds
          ),
        toQuery
          ( toQueryList "AddRouteTableId"
              <$> _mveAddRouteTableIds
          ),
        "ResetPolicy" =: _mveResetPolicy,
        toQuery
          ( toQueryList "RemoveRouteTableId"
              <$> _mveRemoveRouteTableIds
          ),
        toQuery
          (toQueryList "AddSubnetId" <$> _mveAddSubnetIds),
        "PrivateDnsEnabled" =: _mvePrivateDNSEnabled,
        toQuery
          ( toQueryList "RemoveSecurityGroupId"
              <$> _mveRemoveSecurityGroupIds
          ),
        toQuery
          ( toQueryList "AddSecurityGroupId"
              <$> _mveAddSecurityGroupIds
          ),
        "VpcEndpointId" =: _mveVPCEndpointId
      ]

-- | /See:/ 'modifyVPCEndpointResponse' smart constructor.
data ModifyVPCEndpointResponse = ModifyVPCEndpointResponse'
  { _mverrsReturn ::
      !(Maybe Bool),
    _mverrsResponseStatus ::
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

-- | Creates a value of 'ModifyVPCEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mverrsReturn' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'mverrsResponseStatus' - -- | The response status code.
modifyVPCEndpointResponse ::
  -- | 'mverrsResponseStatus'
  Int ->
  ModifyVPCEndpointResponse
modifyVPCEndpointResponse pResponseStatus_ =
  ModifyVPCEndpointResponse'
    { _mverrsReturn = Nothing,
      _mverrsResponseStatus = pResponseStatus_
    }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
mverrsReturn :: Lens' ModifyVPCEndpointResponse (Maybe Bool)
mverrsReturn = lens _mverrsReturn (\s a -> s {_mverrsReturn = a})

-- | -- | The response status code.
mverrsResponseStatus :: Lens' ModifyVPCEndpointResponse Int
mverrsResponseStatus = lens _mverrsResponseStatus (\s a -> s {_mverrsResponseStatus = a})

instance NFData ModifyVPCEndpointResponse
