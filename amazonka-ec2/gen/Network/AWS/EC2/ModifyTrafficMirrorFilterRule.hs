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
-- Module      : Network.AWS.EC2.ModifyTrafficMirrorFilterRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified Traffic Mirror rule.
--
--
-- @DestinationCidrBlock@ and @SourceCidrBlock@ must both be an IPv4 range or an IPv6 range.
module Network.AWS.EC2.ModifyTrafficMirrorFilterRule
  ( -- * Creating a Request
    modifyTrafficMirrorFilterRule,
    ModifyTrafficMirrorFilterRule,

    -- * Request Lenses
    mtmfrRemoveFields,
    mtmfrDryRun,
    mtmfrSourcePortRange,
    mtmfrTrafficDirection,
    mtmfrRuleAction,
    mtmfrSourceCidrBlock,
    mtmfrDestinationCidrBlock,
    mtmfrProtocol,
    mtmfrDescription,
    mtmfrRuleNumber,
    mtmfrDestinationPortRange,
    mtmfrTrafficMirrorFilterRuleId,

    -- * Destructuring the Response
    modifyTrafficMirrorFilterRuleResponse,
    ModifyTrafficMirrorFilterRuleResponse,

    -- * Response Lenses
    mtmfrrrsTrafficMirrorFilterRule,
    mtmfrrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyTrafficMirrorFilterRule' smart constructor.
data ModifyTrafficMirrorFilterRule = ModifyTrafficMirrorFilterRule'
  { _mtmfrRemoveFields ::
      !( Maybe
           [TrafficMirrorFilterRuleField]
       ),
    _mtmfrDryRun ::
      !( Maybe
           Bool
       ),
    _mtmfrSourcePortRange ::
      !( Maybe
           TrafficMirrorPortRangeRequest
       ),
    _mtmfrTrafficDirection ::
      !( Maybe
           TrafficDirection
       ),
    _mtmfrRuleAction ::
      !( Maybe
           TrafficMirrorRuleAction
       ),
    _mtmfrSourceCidrBlock ::
      !( Maybe
           Text
       ),
    _mtmfrDestinationCidrBlock ::
      !( Maybe
           Text
       ),
    _mtmfrProtocol ::
      !( Maybe
           Int
       ),
    _mtmfrDescription ::
      !( Maybe
           Text
       ),
    _mtmfrRuleNumber ::
      !( Maybe
           Int
       ),
    _mtmfrDestinationPortRange ::
      !( Maybe
           TrafficMirrorPortRangeRequest
       ),
    _mtmfrTrafficMirrorFilterRuleId ::
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

-- | Creates a value of 'ModifyTrafficMirrorFilterRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtmfrRemoveFields' - The properties that you want to remove from the Traffic Mirror filter rule. When you remove a property from a Traffic Mirror filter rule, the property is set to the default.
--
-- * 'mtmfrDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'mtmfrSourcePortRange' - The port range to assign to the Traffic Mirror rule.
--
-- * 'mtmfrTrafficDirection' - The type of traffic (@ingress@ | @egress@ ) to assign to the rule.
--
-- * 'mtmfrRuleAction' - The action to assign to the rule.
--
-- * 'mtmfrSourceCidrBlock' - The source CIDR block to assign to the Traffic Mirror rule.
--
-- * 'mtmfrDestinationCidrBlock' - The destination CIDR block to assign to the Traffic Mirror rule.
--
-- * 'mtmfrProtocol' - The protocol, for example TCP, to assign to the Traffic Mirror rule.
--
-- * 'mtmfrDescription' - The description to assign to the Traffic Mirror rule.
--
-- * 'mtmfrRuleNumber' - The number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
--
-- * 'mtmfrDestinationPortRange' - The destination ports that are associated with the Traffic Mirror rule.
--
-- * 'mtmfrTrafficMirrorFilterRuleId' - The ID of the Traffic Mirror rule.
modifyTrafficMirrorFilterRule ::
  -- | 'mtmfrTrafficMirrorFilterRuleId'
  Text ->
  ModifyTrafficMirrorFilterRule
modifyTrafficMirrorFilterRule
  pTrafficMirrorFilterRuleId_ =
    ModifyTrafficMirrorFilterRule'
      { _mtmfrRemoveFields =
          Nothing,
        _mtmfrDryRun = Nothing,
        _mtmfrSourcePortRange = Nothing,
        _mtmfrTrafficDirection = Nothing,
        _mtmfrRuleAction = Nothing,
        _mtmfrSourceCidrBlock = Nothing,
        _mtmfrDestinationCidrBlock = Nothing,
        _mtmfrProtocol = Nothing,
        _mtmfrDescription = Nothing,
        _mtmfrRuleNumber = Nothing,
        _mtmfrDestinationPortRange = Nothing,
        _mtmfrTrafficMirrorFilterRuleId =
          pTrafficMirrorFilterRuleId_
      }

-- | The properties that you want to remove from the Traffic Mirror filter rule. When you remove a property from a Traffic Mirror filter rule, the property is set to the default.
mtmfrRemoveFields :: Lens' ModifyTrafficMirrorFilterRule [TrafficMirrorFilterRuleField]
mtmfrRemoveFields = lens _mtmfrRemoveFields (\s a -> s {_mtmfrRemoveFields = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
mtmfrDryRun :: Lens' ModifyTrafficMirrorFilterRule (Maybe Bool)
mtmfrDryRun = lens _mtmfrDryRun (\s a -> s {_mtmfrDryRun = a})

-- | The port range to assign to the Traffic Mirror rule.
mtmfrSourcePortRange :: Lens' ModifyTrafficMirrorFilterRule (Maybe TrafficMirrorPortRangeRequest)
mtmfrSourcePortRange = lens _mtmfrSourcePortRange (\s a -> s {_mtmfrSourcePortRange = a})

-- | The type of traffic (@ingress@ | @egress@ ) to assign to the rule.
mtmfrTrafficDirection :: Lens' ModifyTrafficMirrorFilterRule (Maybe TrafficDirection)
mtmfrTrafficDirection = lens _mtmfrTrafficDirection (\s a -> s {_mtmfrTrafficDirection = a})

-- | The action to assign to the rule.
mtmfrRuleAction :: Lens' ModifyTrafficMirrorFilterRule (Maybe TrafficMirrorRuleAction)
mtmfrRuleAction = lens _mtmfrRuleAction (\s a -> s {_mtmfrRuleAction = a})

-- | The source CIDR block to assign to the Traffic Mirror rule.
mtmfrSourceCidrBlock :: Lens' ModifyTrafficMirrorFilterRule (Maybe Text)
mtmfrSourceCidrBlock = lens _mtmfrSourceCidrBlock (\s a -> s {_mtmfrSourceCidrBlock = a})

-- | The destination CIDR block to assign to the Traffic Mirror rule.
mtmfrDestinationCidrBlock :: Lens' ModifyTrafficMirrorFilterRule (Maybe Text)
mtmfrDestinationCidrBlock = lens _mtmfrDestinationCidrBlock (\s a -> s {_mtmfrDestinationCidrBlock = a})

-- | The protocol, for example TCP, to assign to the Traffic Mirror rule.
mtmfrProtocol :: Lens' ModifyTrafficMirrorFilterRule (Maybe Int)
mtmfrProtocol = lens _mtmfrProtocol (\s a -> s {_mtmfrProtocol = a})

-- | The description to assign to the Traffic Mirror rule.
mtmfrDescription :: Lens' ModifyTrafficMirrorFilterRule (Maybe Text)
mtmfrDescription = lens _mtmfrDescription (\s a -> s {_mtmfrDescription = a})

-- | The number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number.
mtmfrRuleNumber :: Lens' ModifyTrafficMirrorFilterRule (Maybe Int)
mtmfrRuleNumber = lens _mtmfrRuleNumber (\s a -> s {_mtmfrRuleNumber = a})

-- | The destination ports that are associated with the Traffic Mirror rule.
mtmfrDestinationPortRange :: Lens' ModifyTrafficMirrorFilterRule (Maybe TrafficMirrorPortRangeRequest)
mtmfrDestinationPortRange = lens _mtmfrDestinationPortRange (\s a -> s {_mtmfrDestinationPortRange = a})

-- | The ID of the Traffic Mirror rule.
mtmfrTrafficMirrorFilterRuleId :: Lens' ModifyTrafficMirrorFilterRule Text
mtmfrTrafficMirrorFilterRuleId = lens _mtmfrTrafficMirrorFilterRuleId (\s a -> s {_mtmfrTrafficMirrorFilterRuleId = a})

instance AWSRequest ModifyTrafficMirrorFilterRule where
  type
    Rs ModifyTrafficMirrorFilterRule =
      ModifyTrafficMirrorFilterRuleResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          ModifyTrafficMirrorFilterRuleResponse'
            <$> (x .@? "trafficMirrorFilterRule")
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyTrafficMirrorFilterRule

instance NFData ModifyTrafficMirrorFilterRule

instance ToHeaders ModifyTrafficMirrorFilterRule where
  toHeaders = const mempty

instance ToPath ModifyTrafficMirrorFilterRule where
  toPath = const "/"

instance ToQuery ModifyTrafficMirrorFilterRule where
  toQuery ModifyTrafficMirrorFilterRule' {..} =
    mconcat
      [ "Action"
          =: ("ModifyTrafficMirrorFilterRule" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        toQuery
          (toQueryList "RemoveField" <$> _mtmfrRemoveFields),
        "DryRun" =: _mtmfrDryRun,
        "SourcePortRange" =: _mtmfrSourcePortRange,
        "TrafficDirection" =: _mtmfrTrafficDirection,
        "RuleAction" =: _mtmfrRuleAction,
        "SourceCidrBlock" =: _mtmfrSourceCidrBlock,
        "DestinationCidrBlock" =: _mtmfrDestinationCidrBlock,
        "Protocol" =: _mtmfrProtocol,
        "Description" =: _mtmfrDescription,
        "RuleNumber" =: _mtmfrRuleNumber,
        "DestinationPortRange" =: _mtmfrDestinationPortRange,
        "TrafficMirrorFilterRuleId"
          =: _mtmfrTrafficMirrorFilterRuleId
      ]

-- | /See:/ 'modifyTrafficMirrorFilterRuleResponse' smart constructor.
data ModifyTrafficMirrorFilterRuleResponse = ModifyTrafficMirrorFilterRuleResponse'
  { _mtmfrrrsTrafficMirrorFilterRule ::
      !( Maybe
           TrafficMirrorFilterRule
       ),
    _mtmfrrrsResponseStatus ::
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

-- | Creates a value of 'ModifyTrafficMirrorFilterRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtmfrrrsTrafficMirrorFilterRule' - Modifies a Traffic Mirror rule.
--
-- * 'mtmfrrrsResponseStatus' - -- | The response status code.
modifyTrafficMirrorFilterRuleResponse ::
  -- | 'mtmfrrrsResponseStatus'
  Int ->
  ModifyTrafficMirrorFilterRuleResponse
modifyTrafficMirrorFilterRuleResponse
  pResponseStatus_ =
    ModifyTrafficMirrorFilterRuleResponse'
      { _mtmfrrrsTrafficMirrorFilterRule =
          Nothing,
        _mtmfrrrsResponseStatus =
          pResponseStatus_
      }

-- | Modifies a Traffic Mirror rule.
mtmfrrrsTrafficMirrorFilterRule :: Lens' ModifyTrafficMirrorFilterRuleResponse (Maybe TrafficMirrorFilterRule)
mtmfrrrsTrafficMirrorFilterRule = lens _mtmfrrrsTrafficMirrorFilterRule (\s a -> s {_mtmfrrrsTrafficMirrorFilterRule = a})

-- | -- | The response status code.
mtmfrrrsResponseStatus :: Lens' ModifyTrafficMirrorFilterRuleResponse Int
mtmfrrrsResponseStatus = lens _mtmfrrrsResponseStatus (\s a -> s {_mtmfrrrsResponseStatus = a})

instance NFData ModifyTrafficMirrorFilterRuleResponse
