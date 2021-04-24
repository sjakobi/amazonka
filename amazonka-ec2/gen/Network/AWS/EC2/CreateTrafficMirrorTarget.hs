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
-- Module      : Network.AWS.EC2.CreateTrafficMirrorTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a target for your Traffic Mirror session.
--
--
-- A Traffic Mirror target is the destination for mirrored traffic. The Traffic Mirror source and the Traffic Mirror target (monitoring appliances) can be in the same VPC, or in different VPCs connected via VPC peering or a transit gateway.
--
-- A Traffic Mirror target can be a network interface, or a Network Load Balancer.
--
-- To use the target in a Traffic Mirror session, use <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorSession.htm CreateTrafficMirrorSession> .
module Network.AWS.EC2.CreateTrafficMirrorTarget
  ( -- * Creating a Request
    createTrafficMirrorTarget,
    CreateTrafficMirrorTarget,

    -- * Request Lenses
    ctmtTagSpecifications,
    ctmtNetworkLoadBalancerARN,
    ctmtDryRun,
    ctmtNetworkInterfaceId,
    ctmtDescription,
    ctmtClientToken,

    -- * Destructuring the Response
    createTrafficMirrorTargetResponse,
    CreateTrafficMirrorTargetResponse,

    -- * Response Lenses
    ctmtrrsTrafficMirrorTarget,
    ctmtrrsClientToken,
    ctmtrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTrafficMirrorTarget' smart constructor.
data CreateTrafficMirrorTarget = CreateTrafficMirrorTarget'
  { _ctmtTagSpecifications ::
      !( Maybe
           [TagSpecification]
       ),
    _ctmtNetworkLoadBalancerARN ::
      !(Maybe Text),
    _ctmtDryRun ::
      !(Maybe Bool),
    _ctmtNetworkInterfaceId ::
      !(Maybe Text),
    _ctmtDescription ::
      !(Maybe Text),
    _ctmtClientToken ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateTrafficMirrorTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctmtTagSpecifications' - The tags to assign to the Traffic Mirror target.
--
-- * 'ctmtNetworkLoadBalancerARN' - The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
--
-- * 'ctmtDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ctmtNetworkInterfaceId' - The network interface ID that is associated with the target.
--
-- * 'ctmtDescription' - The description of the Traffic Mirror target.
--
-- * 'ctmtClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
createTrafficMirrorTarget ::
  CreateTrafficMirrorTarget
createTrafficMirrorTarget =
  CreateTrafficMirrorTarget'
    { _ctmtTagSpecifications =
        Nothing,
      _ctmtNetworkLoadBalancerARN = Nothing,
      _ctmtDryRun = Nothing,
      _ctmtNetworkInterfaceId = Nothing,
      _ctmtDescription = Nothing,
      _ctmtClientToken = Nothing
    }

-- | The tags to assign to the Traffic Mirror target.
ctmtTagSpecifications :: Lens' CreateTrafficMirrorTarget [TagSpecification]
ctmtTagSpecifications = lens _ctmtTagSpecifications (\s a -> s {_ctmtTagSpecifications = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of the Network Load Balancer that is associated with the target.
ctmtNetworkLoadBalancerARN :: Lens' CreateTrafficMirrorTarget (Maybe Text)
ctmtNetworkLoadBalancerARN = lens _ctmtNetworkLoadBalancerARN (\s a -> s {_ctmtNetworkLoadBalancerARN = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ctmtDryRun :: Lens' CreateTrafficMirrorTarget (Maybe Bool)
ctmtDryRun = lens _ctmtDryRun (\s a -> s {_ctmtDryRun = a})

-- | The network interface ID that is associated with the target.
ctmtNetworkInterfaceId :: Lens' CreateTrafficMirrorTarget (Maybe Text)
ctmtNetworkInterfaceId = lens _ctmtNetworkInterfaceId (\s a -> s {_ctmtNetworkInterfaceId = a})

-- | The description of the Traffic Mirror target.
ctmtDescription :: Lens' CreateTrafficMirrorTarget (Maybe Text)
ctmtDescription = lens _ctmtDescription (\s a -> s {_ctmtDescription = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
ctmtClientToken :: Lens' CreateTrafficMirrorTarget (Maybe Text)
ctmtClientToken = lens _ctmtClientToken (\s a -> s {_ctmtClientToken = a})

instance AWSRequest CreateTrafficMirrorTarget where
  type
    Rs CreateTrafficMirrorTarget =
      CreateTrafficMirrorTargetResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateTrafficMirrorTargetResponse'
            <$> (x .@? "trafficMirrorTarget")
            <*> (x .@? "clientToken")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateTrafficMirrorTarget

instance NFData CreateTrafficMirrorTarget

instance ToHeaders CreateTrafficMirrorTarget where
  toHeaders = const mempty

instance ToPath CreateTrafficMirrorTarget where
  toPath = const "/"

instance ToQuery CreateTrafficMirrorTarget where
  toQuery CreateTrafficMirrorTarget' {..} =
    mconcat
      [ "Action"
          =: ("CreateTrafficMirrorTarget" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          ( toQueryList "TagSpecification"
              <$> _ctmtTagSpecifications
          ),
        "NetworkLoadBalancerArn"
          =: _ctmtNetworkLoadBalancerARN,
        "DryRun" =: _ctmtDryRun,
        "NetworkInterfaceId" =: _ctmtNetworkInterfaceId,
        "Description" =: _ctmtDescription,
        "ClientToken" =: _ctmtClientToken
      ]

-- | /See:/ 'createTrafficMirrorTargetResponse' smart constructor.
data CreateTrafficMirrorTargetResponse = CreateTrafficMirrorTargetResponse'
  { _ctmtrrsTrafficMirrorTarget ::
      !( Maybe
           TrafficMirrorTarget
       ),
    _ctmtrrsClientToken ::
      !( Maybe
           Text
       ),
    _ctmtrrsResponseStatus ::
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

-- | Creates a value of 'CreateTrafficMirrorTargetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctmtrrsTrafficMirrorTarget' - Information about the Traffic Mirror target.
--
-- * 'ctmtrrsClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'ctmtrrsResponseStatus' - -- | The response status code.
createTrafficMirrorTargetResponse ::
  -- | 'ctmtrrsResponseStatus'
  Int ->
  CreateTrafficMirrorTargetResponse
createTrafficMirrorTargetResponse pResponseStatus_ =
  CreateTrafficMirrorTargetResponse'
    { _ctmtrrsTrafficMirrorTarget =
        Nothing,
      _ctmtrrsClientToken = Nothing,
      _ctmtrrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the Traffic Mirror target.
ctmtrrsTrafficMirrorTarget :: Lens' CreateTrafficMirrorTargetResponse (Maybe TrafficMirrorTarget)
ctmtrrsTrafficMirrorTarget = lens _ctmtrrsTrafficMirrorTarget (\s a -> s {_ctmtrrsTrafficMirrorTarget = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
ctmtrrsClientToken :: Lens' CreateTrafficMirrorTargetResponse (Maybe Text)
ctmtrrsClientToken = lens _ctmtrrsClientToken (\s a -> s {_ctmtrrsClientToken = a})

-- | -- | The response status code.
ctmtrrsResponseStatus :: Lens' CreateTrafficMirrorTargetResponse Int
ctmtrrsResponseStatus = lens _ctmtrrsResponseStatus (\s a -> s {_ctmtrrsResponseStatus = a})

instance NFData CreateTrafficMirrorTargetResponse
