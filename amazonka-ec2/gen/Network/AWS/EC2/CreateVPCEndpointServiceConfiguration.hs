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
-- Module      : Network.AWS.EC2.CreateVPCEndpointServiceConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a VPC endpoint service configuration to which service consumers (AWS accounts, IAM users, and IAM roles) can connect.
--
--
-- To create an endpoint service configuration, you must first create one of the following for your service:
--
--     * A <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/introduction.html Network Load Balancer> . Service consumers connect to your service using an interface endpoint.
--
--     * A <https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/introduction.html Gateway Load Balancer> . Service consumers connect to your service using a Gateway Load Balancer endpoint.
--
--
--
-- For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html VPC Endpoint Services> in the /Amazon Virtual Private Cloud User Guide/ .
--
-- If you set the private DNS name, you must prove that you own the private DNS domain name. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-services-dns-validation.html VPC Endpoint Service Private DNS Name Verification> in the /Amazon Virtual Private Cloud User Guide/ .
module Network.AWS.EC2.CreateVPCEndpointServiceConfiguration
  ( -- * Creating a Request
    createVPCEndpointServiceConfiguration,
    CreateVPCEndpointServiceConfiguration,

    -- * Request Lenses
    cvescGatewayLoadBalancerARNs,
    cvescTagSpecifications,
    cvescDryRun,
    cvescPrivateDNSName,
    cvescAcceptanceRequired,
    cvescNetworkLoadBalancerARNs,
    cvescClientToken,

    -- * Destructuring the Response
    createVPCEndpointServiceConfigurationResponse,
    CreateVPCEndpointServiceConfigurationResponse,

    -- * Response Lenses
    cvescrrsServiceConfiguration,
    cvescrrsClientToken,
    cvescrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createVPCEndpointServiceConfiguration' smart constructor.
data CreateVPCEndpointServiceConfiguration = CreateVPCEndpointServiceConfiguration'
  { _cvescGatewayLoadBalancerARNs ::
      !( Maybe
           [Text]
       ),
    _cvescTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _cvescDryRun ::
      !( Maybe
           Bool
       ),
    _cvescPrivateDNSName ::
      !( Maybe
           Text
       ),
    _cvescAcceptanceRequired ::
      !( Maybe
           Bool
       ),
    _cvescNetworkLoadBalancerARNs ::
      !( Maybe
           [Text]
       ),
    _cvescClientToken ::
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

-- | Creates a value of 'CreateVPCEndpointServiceConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvescGatewayLoadBalancerARNs' - The Amazon Resource Names (ARNs) of one or more Gateway Load Balancers.
--
-- * 'cvescTagSpecifications' - The tags to associate with the service.
--
-- * 'cvescDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'cvescPrivateDNSName' - (Interface endpoint configuration) The private DNS name to assign to the VPC endpoint service.
--
-- * 'cvescAcceptanceRequired' - Indicates whether requests from service consumers to create an endpoint to your service must be accepted. To accept a request, use 'AcceptVpcEndpointConnections' .
--
-- * 'cvescNetworkLoadBalancerARNs' - The Amazon Resource Names (ARNs) of one or more Network Load Balancers for your service.
--
-- * 'cvescClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to Ensure Idempotency> .
createVPCEndpointServiceConfiguration ::
  CreateVPCEndpointServiceConfiguration
createVPCEndpointServiceConfiguration =
  CreateVPCEndpointServiceConfiguration'
    { _cvescGatewayLoadBalancerARNs =
        Nothing,
      _cvescTagSpecifications = Nothing,
      _cvescDryRun = Nothing,
      _cvescPrivateDNSName = Nothing,
      _cvescAcceptanceRequired = Nothing,
      _cvescNetworkLoadBalancerARNs =
        Nothing,
      _cvescClientToken = Nothing
    }

-- | The Amazon Resource Names (ARNs) of one or more Gateway Load Balancers.
cvescGatewayLoadBalancerARNs :: Lens' CreateVPCEndpointServiceConfiguration [Text]
cvescGatewayLoadBalancerARNs = lens _cvescGatewayLoadBalancerARNs (\s a -> s {_cvescGatewayLoadBalancerARNs = a}) . _Default . _Coerce

-- | The tags to associate with the service.
cvescTagSpecifications :: Lens' CreateVPCEndpointServiceConfiguration [TagSpecification]
cvescTagSpecifications = lens _cvescTagSpecifications (\s a -> s {_cvescTagSpecifications = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
cvescDryRun :: Lens' CreateVPCEndpointServiceConfiguration (Maybe Bool)
cvescDryRun = lens _cvescDryRun (\s a -> s {_cvescDryRun = a})

-- | (Interface endpoint configuration) The private DNS name to assign to the VPC endpoint service.
cvescPrivateDNSName :: Lens' CreateVPCEndpointServiceConfiguration (Maybe Text)
cvescPrivateDNSName = lens _cvescPrivateDNSName (\s a -> s {_cvescPrivateDNSName = a})

-- | Indicates whether requests from service consumers to create an endpoint to your service must be accepted. To accept a request, use 'AcceptVpcEndpointConnections' .
cvescAcceptanceRequired :: Lens' CreateVPCEndpointServiceConfiguration (Maybe Bool)
cvescAcceptanceRequired = lens _cvescAcceptanceRequired (\s a -> s {_cvescAcceptanceRequired = a})

-- | The Amazon Resource Names (ARNs) of one or more Network Load Balancers for your service.
cvescNetworkLoadBalancerARNs :: Lens' CreateVPCEndpointServiceConfiguration [Text]
cvescNetworkLoadBalancerARNs = lens _cvescNetworkLoadBalancerARNs (\s a -> s {_cvescNetworkLoadBalancerARNs = a}) . _Default . _Coerce

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html How to Ensure Idempotency> .
cvescClientToken :: Lens' CreateVPCEndpointServiceConfiguration (Maybe Text)
cvescClientToken = lens _cvescClientToken (\s a -> s {_cvescClientToken = a})

instance
  AWSRequest
    CreateVPCEndpointServiceConfiguration
  where
  type
    Rs CreateVPCEndpointServiceConfiguration =
      CreateVPCEndpointServiceConfigurationResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateVPCEndpointServiceConfigurationResponse'
            <$> (x .@? "serviceConfiguration")
            <*> (x .@? "clientToken")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    CreateVPCEndpointServiceConfiguration

instance NFData CreateVPCEndpointServiceConfiguration

instance
  ToHeaders
    CreateVPCEndpointServiceConfiguration
  where
  toHeaders = const mempty

instance ToPath CreateVPCEndpointServiceConfiguration where
  toPath = const "/"

instance
  ToQuery
    CreateVPCEndpointServiceConfiguration
  where
  toQuery CreateVPCEndpointServiceConfiguration' {..} =
    mconcat
      [ "Action"
          =: ( "CreateVpcEndpointServiceConfiguration" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "GatewayLoadBalancerArn"
              <$> _cvescGatewayLoadBalancerARNs
          ),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _cvescTagSpecifications
          ),
        "DryRun" =: _cvescDryRun,
        "PrivateDnsName" =: _cvescPrivateDNSName,
        "AcceptanceRequired" =: _cvescAcceptanceRequired,
        toQuery
          ( toQueryList "NetworkLoadBalancerArn"
              <$> _cvescNetworkLoadBalancerARNs
          ),
        "ClientToken" =: _cvescClientToken
      ]

-- | /See:/ 'createVPCEndpointServiceConfigurationResponse' smart constructor.
data CreateVPCEndpointServiceConfigurationResponse = CreateVPCEndpointServiceConfigurationResponse'
  { _cvescrrsServiceConfiguration ::
      !( Maybe
           ServiceConfiguration
       ),
    _cvescrrsClientToken ::
      !( Maybe
           Text
       ),
    _cvescrrsResponseStatus ::
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

-- | Creates a value of 'CreateVPCEndpointServiceConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvescrrsServiceConfiguration' - Information about the service configuration.
--
-- * 'cvescrrsClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
--
-- * 'cvescrrsResponseStatus' - -- | The response status code.
createVPCEndpointServiceConfigurationResponse ::
  -- | 'cvescrrsResponseStatus'
  Int ->
  CreateVPCEndpointServiceConfigurationResponse
createVPCEndpointServiceConfigurationResponse
  pResponseStatus_ =
    CreateVPCEndpointServiceConfigurationResponse'
      { _cvescrrsServiceConfiguration =
          Nothing,
        _cvescrrsClientToken =
          Nothing,
        _cvescrrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the service configuration.
cvescrrsServiceConfiguration :: Lens' CreateVPCEndpointServiceConfigurationResponse (Maybe ServiceConfiguration)
cvescrrsServiceConfiguration = lens _cvescrrsServiceConfiguration (\s a -> s {_cvescrrsServiceConfiguration = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
cvescrrsClientToken :: Lens' CreateVPCEndpointServiceConfigurationResponse (Maybe Text)
cvescrrsClientToken = lens _cvescrrsClientToken (\s a -> s {_cvescrrsClientToken = a})

-- | -- | The response status code.
cvescrrsResponseStatus :: Lens' CreateVPCEndpointServiceConfigurationResponse Int
cvescrrsResponseStatus = lens _cvescrrsResponseStatus (\s a -> s {_cvescrrsResponseStatus = a})

instance
  NFData
    CreateVPCEndpointServiceConfigurationResponse
