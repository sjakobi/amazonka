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
-- Module      : Network.AWS.EC2.CreateTrafficMirrorFilterRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Traffic Mirror filter rule.
--
--
-- A Traffic Mirror rule defines the Traffic Mirror source traffic to mirror.
--
-- You need the Traffic Mirror filter ID when you create the rule.
module Network.AWS.EC2.CreateTrafficMirrorFilterRule
  ( -- * Creating a Request
    createTrafficMirrorFilterRule,
    CreateTrafficMirrorFilterRule,

    -- * Request Lenses
    ctmfrDryRun,
    ctmfrSourcePortRange,
    ctmfrProtocol,
    ctmfrDescription,
    ctmfrClientToken,
    ctmfrDestinationPortRange,
    ctmfrTrafficMirrorFilterId,
    ctmfrTrafficDirection,
    ctmfrRuleNumber,
    ctmfrRuleAction,
    ctmfrDestinationCidrBlock,
    ctmfrSourceCidrBlock,

    -- * Destructuring the Response
    createTrafficMirrorFilterRuleResponse,
    CreateTrafficMirrorFilterRuleResponse,

    -- * Response Lenses
    ctmfrrrsClientToken,
    ctmfrrrsTrafficMirrorFilterRule,
    ctmfrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTrafficMirrorFilterRule' smart constructor.
data CreateTrafficMirrorFilterRule = CreateTrafficMirrorFilterRule'
  { _ctmfrDryRun ::
      !( Maybe
           Bool
       ),
    _ctmfrSourcePortRange ::
      !( Maybe
           TrafficMirrorPortRangeRequest
       ),
    _ctmfrProtocol ::
      !( Maybe
           Int
       ),
    _ctmfrDescription ::
      !( Maybe
           Text
       ),
    _ctmfrClientToken ::
      !( Maybe
           Text
       ),
    _ctmfrDestinationPortRange ::
      !( Maybe
           TrafficMirrorPortRangeRequest
       ),
    _ctmfrTrafficMirrorFilterId ::
      !Text,
    _ctmfrTrafficDirection ::
      !TrafficDirection,
    _ctmfrRuleNumber ::
      !Int,
    _ctmfrRuleAction ::
      !TrafficMirrorRuleAction,
    _ctmfrDestinationCidrBlock ::
      !Text,
    _ctmfrSourceCidrBlock ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateTrafficMirrorFilterRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctmfrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'ctmfrSourcePortRange' - The source port range.
--
-- * 'ctmfrProtocol' - The protocol, for example UDP, to assign to the Traffic Mirror rule. For information about the protocol value, see <https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml Protocol Numbers> on the Internet Assigned Numbers Authority (IANA) website.
--
-- * 'ctmfrDescription' - The description of the Traffic Mirror rule.
--
-- * 'ctmfrClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'ctmfrDestinationPortRange' - The destination port range.
--
-- * 'ctmfrTrafficMirrorFilterId' - The ID of the filter that this rule is associated with.
--
-- * 'ctmfrTrafficDirection' - The type of traffic (@ingress@ | @egress@ ).
--
-- * 'ctmfrRuleNumber' - The number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
--
-- * 'ctmfrRuleAction' - The action to take (@accept@ | @reject@ ) on the filtered traffic.
--
-- * 'ctmfrDestinationCidrBlock' - The destination CIDR block to assign to the Traffic Mirror rule.
--
-- * 'ctmfrSourceCidrBlock' - The source CIDR block to assign to the Traffic Mirror rule.
createTrafficMirrorFilterRule ::
  -- | 'ctmfrTrafficMirrorFilterId'
  Text ->
  -- | 'ctmfrTrafficDirection'
  TrafficDirection ->
  -- | 'ctmfrRuleNumber'
  Int ->
  -- | 'ctmfrRuleAction'
  TrafficMirrorRuleAction ->
  -- | 'ctmfrDestinationCidrBlock'
  Text ->
  -- | 'ctmfrSourceCidrBlock'
  Text ->
  CreateTrafficMirrorFilterRule
createTrafficMirrorFilterRule
  pTrafficMirrorFilterId_
  pTrafficDirection_
  pRuleNumber_
  pRuleAction_
  pDestinationCidrBlock_
  pSourceCidrBlock_ =
    CreateTrafficMirrorFilterRule'
      { _ctmfrDryRun =
          Nothing,
        _ctmfrSourcePortRange = Nothing,
        _ctmfrProtocol = Nothing,
        _ctmfrDescription = Nothing,
        _ctmfrClientToken = Nothing,
        _ctmfrDestinationPortRange = Nothing,
        _ctmfrTrafficMirrorFilterId =
          pTrafficMirrorFilterId_,
        _ctmfrTrafficDirection = pTrafficDirection_,
        _ctmfrRuleNumber = pRuleNumber_,
        _ctmfrRuleAction = pRuleAction_,
        _ctmfrDestinationCidrBlock =
          pDestinationCidrBlock_,
        _ctmfrSourceCidrBlock = pSourceCidrBlock_
      }

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
ctmfrDryRun :: Lens' CreateTrafficMirrorFilterRule (Maybe Bool)
ctmfrDryRun = lens _ctmfrDryRun (\s a -> s {_ctmfrDryRun = a})

-- | The source port range.
ctmfrSourcePortRange :: Lens' CreateTrafficMirrorFilterRule (Maybe TrafficMirrorPortRangeRequest)
ctmfrSourcePortRange = lens _ctmfrSourcePortRange (\s a -> s {_ctmfrSourcePortRange = a})

-- | The protocol, for example UDP, to assign to the Traffic Mirror rule. For information about the protocol value, see <https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml Protocol Numbers> on the Internet Assigned Numbers Authority (IANA) website.
ctmfrProtocol :: Lens' CreateTrafficMirrorFilterRule (Maybe Int)
ctmfrProtocol = lens _ctmfrProtocol (\s a -> s {_ctmfrProtocol = a})

-- | The description of the Traffic Mirror rule.
ctmfrDescription :: Lens' CreateTrafficMirrorFilterRule (Maybe Text)
ctmfrDescription = lens _ctmfrDescription (\s a -> s {_ctmfrDescription = a})

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
ctmfrClientToken :: Lens' CreateTrafficMirrorFilterRule (Maybe Text)
ctmfrClientToken = lens _ctmfrClientToken (\s a -> s {_ctmfrClientToken = a})

-- | The destination port range.
ctmfrDestinationPortRange :: Lens' CreateTrafficMirrorFilterRule (Maybe TrafficMirrorPortRangeRequest)
ctmfrDestinationPortRange = lens _ctmfrDestinationPortRange (\s a -> s {_ctmfrDestinationPortRange = a})

-- | The ID of the filter that this rule is associated with.
ctmfrTrafficMirrorFilterId :: Lens' CreateTrafficMirrorFilterRule Text
ctmfrTrafficMirrorFilterId = lens _ctmfrTrafficMirrorFilterId (\s a -> s {_ctmfrTrafficMirrorFilterId = a})

-- | The type of traffic (@ingress@ | @egress@ ).
ctmfrTrafficDirection :: Lens' CreateTrafficMirrorFilterRule TrafficDirection
ctmfrTrafficDirection = lens _ctmfrTrafficDirection (\s a -> s {_ctmfrTrafficDirection = a})

-- | The number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
ctmfrRuleNumber :: Lens' CreateTrafficMirrorFilterRule Int
ctmfrRuleNumber = lens _ctmfrRuleNumber (\s a -> s {_ctmfrRuleNumber = a})

-- | The action to take (@accept@ | @reject@ ) on the filtered traffic.
ctmfrRuleAction :: Lens' CreateTrafficMirrorFilterRule TrafficMirrorRuleAction
ctmfrRuleAction = lens _ctmfrRuleAction (\s a -> s {_ctmfrRuleAction = a})

-- | The destination CIDR block to assign to the Traffic Mirror rule.
ctmfrDestinationCidrBlock :: Lens' CreateTrafficMirrorFilterRule Text
ctmfrDestinationCidrBlock = lens _ctmfrDestinationCidrBlock (\s a -> s {_ctmfrDestinationCidrBlock = a})

-- | The source CIDR block to assign to the Traffic Mirror rule.
ctmfrSourceCidrBlock :: Lens' CreateTrafficMirrorFilterRule Text
ctmfrSourceCidrBlock = lens _ctmfrSourceCidrBlock (\s a -> s {_ctmfrSourceCidrBlock = a})

instance AWSRequest CreateTrafficMirrorFilterRule where
  type
    Rs CreateTrafficMirrorFilterRule =
      CreateTrafficMirrorFilterRuleResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          CreateTrafficMirrorFilterRuleResponse'
            <$> (x .@? "clientToken")
            <*> (x .@? "trafficMirrorFilterRule")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateTrafficMirrorFilterRule

instance NFData CreateTrafficMirrorFilterRule

instance ToHeaders CreateTrafficMirrorFilterRule where
  toHeaders = const mempty

instance ToPath CreateTrafficMirrorFilterRule where
  toPath = const "/"

instance ToQuery CreateTrafficMirrorFilterRule where
  toQuery CreateTrafficMirrorFilterRule' {..} =
    mconcat
      [ "Action"
          =: ("CreateTrafficMirrorFilterRule" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "DryRun" =: _ctmfrDryRun,
        "SourcePortRange" =: _ctmfrSourcePortRange,
        "Protocol" =: _ctmfrProtocol,
        "Description" =: _ctmfrDescription,
        "ClientToken" =: _ctmfrClientToken,
        "DestinationPortRange" =: _ctmfrDestinationPortRange,
        "TrafficMirrorFilterId"
          =: _ctmfrTrafficMirrorFilterId,
        "TrafficDirection" =: _ctmfrTrafficDirection,
        "RuleNumber" =: _ctmfrRuleNumber,
        "RuleAction" =: _ctmfrRuleAction,
        "DestinationCidrBlock" =: _ctmfrDestinationCidrBlock,
        "SourceCidrBlock" =: _ctmfrSourceCidrBlock
      ]

-- | /See:/ 'createTrafficMirrorFilterRuleResponse' smart constructor.
data CreateTrafficMirrorFilterRuleResponse = CreateTrafficMirrorFilterRuleResponse'
  { _ctmfrrrsClientToken ::
      !( Maybe
           Text
       ),
    _ctmfrrrsTrafficMirrorFilterRule ::
      !( Maybe
           TrafficMirrorFilterRule
       ),
    _ctmfrrrsResponseStatus ::
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

-- | Creates a value of 'CreateTrafficMirrorFilterRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctmfrrrsClientToken' - Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
--
-- * 'ctmfrrrsTrafficMirrorFilterRule' - The Traffic Mirror rule.
--
-- * 'ctmfrrrsResponseStatus' - -- | The response status code.
createTrafficMirrorFilterRuleResponse ::
  -- | 'ctmfrrrsResponseStatus'
  Int ->
  CreateTrafficMirrorFilterRuleResponse
createTrafficMirrorFilterRuleResponse
  pResponseStatus_ =
    CreateTrafficMirrorFilterRuleResponse'
      { _ctmfrrrsClientToken =
          Nothing,
        _ctmfrrrsTrafficMirrorFilterRule =
          Nothing,
        _ctmfrrrsResponseStatus =
          pResponseStatus_
      }

-- | Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency> .
ctmfrrrsClientToken :: Lens' CreateTrafficMirrorFilterRuleResponse (Maybe Text)
ctmfrrrsClientToken = lens _ctmfrrrsClientToken (\s a -> s {_ctmfrrrsClientToken = a})

-- | The Traffic Mirror rule.
ctmfrrrsTrafficMirrorFilterRule :: Lens' CreateTrafficMirrorFilterRuleResponse (Maybe TrafficMirrorFilterRule)
ctmfrrrsTrafficMirrorFilterRule = lens _ctmfrrrsTrafficMirrorFilterRule (\s a -> s {_ctmfrrrsTrafficMirrorFilterRule = a})

-- | -- | The response status code.
ctmfrrrsResponseStatus :: Lens' CreateTrafficMirrorFilterRuleResponse Int
ctmfrrrsResponseStatus = lens _ctmfrrrsResponseStatus (\s a -> s {_ctmfrrrsResponseStatus = a})

instance NFData CreateTrafficMirrorFilterRuleResponse
