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
-- Module      : Network.AWS.EC2.CreateVPCEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a VPC endpoint for a specified service. An endpoint enables you to create a private connection between your VPC and the service. The service may be provided by AWS, an AWS Marketplace Partner, or another AWS account. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints.html VPC Endpoints> in the /Amazon Virtual Private Cloud User Guide/ .
--
--
-- A @gateway@ endpoint serves as a target for a route in your route table for traffic destined for the AWS service. You can specify an endpoint policy to attach to the endpoint, which will control access to the service from your VPC. You can also specify the VPC route tables that use the endpoint.
--
-- An @interface@ endpoint is a network interface in your subnet that serves as an endpoint for communicating with the specified service. You can specify the subnets in which to create an endpoint, and the security groups to associate with the endpoint network interface.
--
-- A @GatewayLoadBalancer@ endpoint is a network interface in your subnet that serves an endpoint for communicating with a Gateway Load Balancer that you've configured as a VPC endpoint service.
--
-- Use 'DescribeVpcEndpointServices' to get a list of supported services.
module Network.AWS.EC2.CreateVPCEndpoint
  ( -- * Creating a Request
    createVPCEndpoint,
    CreateVPCEndpoint,

    -- * Request Lenses
    cvpceSecurityGroupIds,
    cvpcePolicyDocument,
    cvpceTagSpecifications,
    cvpceRouteTableIds,
    cvpceDryRun,
    cvpceVPCEndpointType,
    cvpceSubnetIds,
    cvpcePrivateDNSEnabled,
    cvpceClientToken,
    cvpceVPCId,
    cvpceServiceName,

    -- * Destructuring the Response
    createVPCEndpointResponse,
    CreateVPCEndpointResponse,

    -- * Response Lenses
    cverrsVPCEndpoint,
    cverrsClientToken,
    cverrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for CreateVpcEndpoint.
--
--
--
-- /See:/ 'createVPCEndpoint' smart constructor.
data CreateVPCEndpoint = CreateVPCEndpoint'
  { _cvpceSecurityGroupIds ::
      !(Maybe [Text]),
    _cvpcePolicyDocument ::
      !(Maybe Text),
    _cvpceTagSpecifications ::
      !(Maybe [TagSpecification]),
    _cvpceRouteTableIds ::
      !(Maybe [Text]),
    _cvpceDryRun :: !(Maybe Bool),
    _cvpceVPCEndpointType ::
      !(Maybe VPCEndpointType),
    _cvpceSubnetIds :: !(Maybe [Text]),
    _cvpcePrivateDNSEnabled ::
      !(Maybe Bool),
    _cvpceClientToken :: !(Maybe Text),
    _cvpceVPCId :: !Text,
    _cvpceServiceName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateVPCEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvpceSecurityGroupIds' - (Interface endpoint) The ID of one or more security groups to associate with the endpoint network interface.
--
-- * 'cvpcePolicyDocument' - (Interface and gateway endpoints) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format. If this parameter is not specified, we attach a default policy that allows full access to the service.
--
-- * 'cvpceTagSpecifications' - The tags to associate with the endpoint.
--
-- * 'cvpceRouteTableIds' - (Gateway endpoint) One or more route table IDs.
--
-- * 'cvpceDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cvpceVPCEndpointType' - The type of endpoint. Default: Gateway
--
-- * 'cvpceSubnetIds' - (Interface and Gateway Load Balancer endpoints) The ID of one or more subnets in which to create an endpoint network interface. For a Gateway Load Balancer endpoint, you can specify one subnet only.
--
-- * 'cvpcePrivateDNSEnabled' - (Interface endpoint) Indicates whether to associate a private hosted zone with the specified VPC. The private hosted zone contains a record set for the default public DNS name for the service for the Region (for example, @kinesis.us-east-1.amazonaws.com@ ), which resolves to the private IP addresses of the endpoint network interfaces in the VPC. This enables you to make requests to the default public DNS name for the service instead of the public DNS names that are automatically generated by the VPC endpoint service. To use a private hosted zone, you must set the following VPC attributes to @true@ : @enableDnsHostnames@ and @enableDnsSupport@ . Use 'ModifyVpcAttribute' to set the VPC attributes. Default: @true@
--
-- * 'cvpceClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'cvpceVPCId' - The ID of the VPC in which the endpoint will be used.
--
-- * 'cvpceServiceName' - The service name. To get a list of available services, use the 'DescribeVpcEndpointServices' request, or get the name from the service provider.
createVPCEndpoint ::
  -- | 'cvpceVPCId'
  Text ->
  -- | 'cvpceServiceName'
  Text ->
  CreateVPCEndpoint
createVPCEndpoint pVPCId_ pServiceName_ =
  CreateVPCEndpoint'
    { _cvpceSecurityGroupIds =
        Nothing,
      _cvpcePolicyDocument = Nothing,
      _cvpceTagSpecifications = Nothing,
      _cvpceRouteTableIds = Nothing,
      _cvpceDryRun = Nothing,
      _cvpceVPCEndpointType = Nothing,
      _cvpceSubnetIds = Nothing,
      _cvpcePrivateDNSEnabled = Nothing,
      _cvpceClientToken = Nothing,
      _cvpceVPCId = pVPCId_,
      _cvpceServiceName = pServiceName_
    }

-- | (Interface endpoint) The ID of one or more security groups to associate with the endpoint network interface.
cvpceSecurityGroupIds :: Lens' CreateVPCEndpoint [Text]
cvpceSecurityGroupIds = lens _cvpceSecurityGroupIds (\s a -> s {_cvpceSecurityGroupIds = a}) . _Default . _Coerce

-- | (Interface and gateway endpoints) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format. If this parameter is not specified, we attach a default policy that allows full access to the service.
cvpcePolicyDocument :: Lens' CreateVPCEndpoint (Maybe Text)
cvpcePolicyDocument = lens _cvpcePolicyDocument (\s a -> s {_cvpcePolicyDocument = a})

-- | The tags to associate with the endpoint.
cvpceTagSpecifications :: Lens' CreateVPCEndpoint [TagSpecification]
cvpceTagSpecifications = lens _cvpceTagSpecifications (\s a -> s {_cvpceTagSpecifications = a}) . _Default . _Coerce

-- | (Gateway endpoint) One or more route table IDs.
cvpceRouteTableIds :: Lens' CreateVPCEndpoint [Text]
cvpceRouteTableIds = lens _cvpceRouteTableIds (\s a -> s {_cvpceRouteTableIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cvpceDryRun :: Lens' CreateVPCEndpoint (Maybe Bool)
cvpceDryRun = lens _cvpceDryRun (\s a -> s {_cvpceDryRun = a})

-- | The type of endpoint. Default: Gateway
cvpceVPCEndpointType :: Lens' CreateVPCEndpoint (Maybe VPCEndpointType)
cvpceVPCEndpointType = lens _cvpceVPCEndpointType (\s a -> s {_cvpceVPCEndpointType = a})

-- | (Interface and Gateway Load Balancer endpoints) The ID of one or more subnets in which to create an endpoint network interface. For a Gateway Load Balancer endpoint, you can specify one subnet only.
cvpceSubnetIds :: Lens' CreateVPCEndpoint [Text]
cvpceSubnetIds = lens _cvpceSubnetIds (\s a -> s {_cvpceSubnetIds = a}) . _Default . _Coerce

-- | (Interface endpoint) Indicates whether to associate a private hosted zone with the specified VPC. The private hosted zone contains a record set for the default public DNS name for the service for the Region (for example, @kinesis.us-east-1.amazonaws.com@ ), which resolves to the private IP addresses of the endpoint network interfaces in the VPC. This enables you to make requests to the default public DNS name for the service instead of the public DNS names that are automatically generated by the VPC endpoint service. To use a private hosted zone, you must set the following VPC attributes to @true@ : @enableDnsHostnames@ and @enableDnsSupport@ . Use 'ModifyVpcAttribute' to set the VPC attributes. Default: @true@
cvpcePrivateDNSEnabled :: Lens' CreateVPCEndpoint (Maybe Bool)
cvpcePrivateDNSEnabled = lens _cvpcePrivateDNSEnabled (\s a -> s {_cvpcePrivateDNSEnabled = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
cvpceClientToken :: Lens' CreateVPCEndpoint (Maybe Text)
cvpceClientToken = lens _cvpceClientToken (\s a -> s {_cvpceClientToken = a})

-- | The ID of the VPC in which the endpoint will be used.
cvpceVPCId :: Lens' CreateVPCEndpoint Text
cvpceVPCId = lens _cvpceVPCId (\s a -> s {_cvpceVPCId = a})

-- | The service name. To get a list of available services, use the 'DescribeVpcEndpointServices' request, or get the name from the service provider.
cvpceServiceName :: Lens' CreateVPCEndpoint Text
cvpceServiceName = lens _cvpceServiceName (\s a -> s {_cvpceServiceName = a})

instance AWSRequest CreateVPCEndpoint where
  type Rs CreateVPCEndpoint = CreateVPCEndpointResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateVPCEndpointResponse'
            <$> (x .@? "vpcEndpoint")
            <*> (x .@? "clientToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateVPCEndpoint

instance NFData CreateVPCEndpoint

instance ToHeaders CreateVPCEndpoint where
  toHeaders = const mempty

instance ToPath CreateVPCEndpoint where
  toPath = const "/"

instance ToQuery CreateVPCEndpoint where
  toQuery CreateVPCEndpoint' {..} =
    mconcat
      [ "Action" =: ("CreateVpcEndpoint" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "SecurityGroupId"
              <$> _cvpceSecurityGroupIds
          ),
        "PolicyDocument" =: _cvpcePolicyDocument,
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cvpceTagSpecifications
          ),
        toQuery
          (toQueryList "RouteTableId" <$> _cvpceRouteTableIds),
        "DryRun" =: _cvpceDryRun,
        "VpcEndpointType" =: _cvpceVPCEndpointType,
        toQuery (toQueryList "SubnetId" <$> _cvpceSubnetIds),
        "PrivateDnsEnabled" =: _cvpcePrivateDNSEnabled,
        "ClientToken" =: _cvpceClientToken,
        "VpcId" =: _cvpceVPCId,
        "ServiceName" =: _cvpceServiceName
      ]

-- | Contains the output of CreateVpcEndpoint.
--
--
--
-- /See:/ 'createVPCEndpointResponse' smart constructor.
data CreateVPCEndpointResponse = CreateVPCEndpointResponse'
  { _cverrsVPCEndpoint ::
      !( Maybe
           VPCEndpoint
       ),
    _cverrsClientToken ::
      !(Maybe Text),
    _cverrsResponseStatus ::
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

-- | Creates a value of 'CreateVPCEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cverrsVPCEndpoint' - Information about the endpoint.
--
-- * 'cverrsClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'cverrsResponseStatus' - -- | The response status code.
createVPCEndpointResponse ::
  -- | 'cverrsResponseStatus'
  Int ->
  CreateVPCEndpointResponse
createVPCEndpointResponse pResponseStatus_ =
  CreateVPCEndpointResponse'
    { _cverrsVPCEndpoint =
        Nothing,
      _cverrsClientToken = Nothing,
      _cverrsResponseStatus = pResponseStatus_
    }

-- | Information about the endpoint.
cverrsVPCEndpoint :: Lens' CreateVPCEndpointResponse (Maybe VPCEndpoint)
cverrsVPCEndpoint = lens _cverrsVPCEndpoint (\s a -> s {_cverrsVPCEndpoint = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
cverrsClientToken :: Lens' CreateVPCEndpointResponse (Maybe Text)
cverrsClientToken = lens _cverrsClientToken (\s a -> s {_cverrsClientToken = a})

-- | -- | The response status code.
cverrsResponseStatus :: Lens' CreateVPCEndpointResponse Int
cverrsResponseStatus = lens _cverrsResponseStatus (\s a -> s {_cverrsResponseStatus = a})

instance NFData CreateVPCEndpointResponse
