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
-- Module      : Network.AWS.ELBv2.CreateTargetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a target group.
--
--
-- For more information, see the following:
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html Target groups for your Application Load Balancers>
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html Target groups for your Network Load Balancers>
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/target-groups.html Target groups for your Gateway Load Balancers>
--
--
--
-- This operation is idempotent, which means that it completes at most one time. If you attempt to create multiple target groups with the same settings, each call succeeds.
module Network.AWS.ELBv2.CreateTargetGroup
  ( -- * Creating a Request
    createTargetGroup,
    CreateTargetGroup,

    -- * Request Lenses
    ctgHealthCheckEnabled,
    ctgHealthCheckProtocol,
    ctgTargetType,
    ctgHealthCheckPort,
    ctgHealthCheckTimeoutSeconds,
    ctgHealthCheckPath,
    ctgMatcher,
    ctgProtocolVersion,
    ctgHealthyThresholdCount,
    ctgTags,
    ctgPort,
    ctgHealthCheckIntervalSeconds,
    ctgProtocol,
    ctgVPCId,
    ctgUnhealthyThresholdCount,
    ctgName,

    -- * Destructuring the Response
    createTargetGroupResponse,
    CreateTargetGroupResponse,

    -- * Response Lenses
    ctgrrsTargetGroups,
    ctgrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createTargetGroup' smart constructor.
data CreateTargetGroup = CreateTargetGroup'
  { _ctgHealthCheckEnabled ::
      !(Maybe Bool),
    _ctgHealthCheckProtocol ::
      !(Maybe ProtocolEnum),
    _ctgTargetType ::
      !(Maybe TargetTypeEnum),
    _ctgHealthCheckPort ::
      !(Maybe Text),
    _ctgHealthCheckTimeoutSeconds ::
      !(Maybe Nat),
    _ctgHealthCheckPath ::
      !(Maybe Text),
    _ctgMatcher :: !(Maybe Matcher),
    _ctgProtocolVersion ::
      !(Maybe Text),
    _ctgHealthyThresholdCount ::
      !(Maybe Nat),
    _ctgTags :: !(Maybe (List1 Tag)),
    _ctgPort :: !(Maybe Nat),
    _ctgHealthCheckIntervalSeconds ::
      !(Maybe Nat),
    _ctgProtocol ::
      !(Maybe ProtocolEnum),
    _ctgVPCId :: !(Maybe Text),
    _ctgUnhealthyThresholdCount ::
      !(Maybe Nat),
    _ctgName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateTargetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgHealthCheckEnabled' - Indicates whether health checks are enabled. If the target type is @lambda@ , health checks are disabled by default but can be enabled. If the target type is @instance@ or @ip@ , health checks are always enabled and cannot be disabled.
--
-- * 'ctgHealthCheckProtocol' - The protocol the load balancer uses when performing health checks on targets. For Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load Balancers, the default is TCP. The TCP protocol is not supported for health checks if the protocol of the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP protocols are not supported for health checks.
--
-- * 'ctgTargetType' - The type of target that you must specify when registering targets with this target group. You can't specify targets for a target group using more than one target type.     * @instance@ - Register targets by instance ID. This is the default value.     * @ip@ - Register targets by IP address. You can specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.     * @lambda@ - Register a single Lambda function as a target.
--
-- * 'ctgHealthCheckPort' - The port the load balancer uses when performing health checks on targets. If the protocol is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the default is @traffic-port@ , which is the port on which each target receives traffic from the load balancer. If the protocol is GENEVE, the default is port 80.
--
-- * 'ctgHealthCheckTimeoutSeconds' - The amount of time, in seconds, during which no response from a target means a failed health check. For target groups with a protocol of HTTP, HTTPS, or GENEVE, the default is 5 seconds. For target groups with a protocol of TCP or TLS, this value must be 6 seconds for HTTP health checks and 10 seconds for TCP and HTTPS health checks. If the target type is @lambda@ , the default is 30 seconds.
--
-- * 'ctgHealthCheckPath' - [HTTP/HTTPS health checks] The destination for health checks on the targets. [HTTP1 or HTTP2 protocol version] The ping path. The default is /. [GRPC protocol version] The path of a custom health check method with the format /package.service/method. The default is /AWS.ALB/healthcheck.
--
-- * 'ctgMatcher' - [HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful response from a target.
--
-- * 'ctgProtocolVersion' - [HTTP/HTTPS protocol] The protocol version. Specify @GRPC@ to send requests to targets using gRPC. Specify @HTTP2@ to send requests to targets using HTTP/2. The default is @HTTP1@ , which sends requests to targets using HTTP/1.1.
--
-- * 'ctgHealthyThresholdCount' - The number of consecutive health checks successes required before considering an unhealthy target healthy. For target groups with a protocol of HTTP or HTTPS, the default is 5. For target groups with a protocol of TCP, TLS, or GENEVE, the default is 3. If the target type is @lambda@ , the default is 5.
--
-- * 'ctgTags' - The tags to assign to the target group.
--
-- * 'ctgPort' - The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target. If the target is a Lambda function, this parameter does not apply. If the protocol is GENEVE, the supported port is 6081.
--
-- * 'ctgHealthCheckIntervalSeconds' - The approximate amount of time, in seconds, between health checks of an individual target. If the target group protocol is TCP, TLS, UDP, or TCP_UDP, the supported values are 10 and 30 seconds. If the target group protocol is HTTP or HTTPS, the default is 30 seconds. If the target group protocol is GENEVE, the default is 10 seconds. If the target type is @lambda@ , the default is 35 seconds.
--
-- * 'ctgProtocol' - The protocol to use for routing traffic to the targets. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, or TCP_UDP. For Gateway Load Balancers, the supported protocol is GENEVE. A TCP_UDP listener must be associated with a TCP_UDP target group. If the target is a Lambda function, this parameter does not apply.
--
-- * 'ctgVPCId' - The identifier of the virtual private cloud (VPC). If the target is a Lambda function, this parameter does not apply. Otherwise, this parameter is required.
--
-- * 'ctgUnhealthyThresholdCount' - The number of consecutive health check failures required before considering a target unhealthy. If the target group protocol is HTTP or HTTPS, the default is 2. If the target group protocol is TCP or TLS, this value must be the same as the healthy threshold count. If the target group protocol is GENEVE, the default is 3. If the target type is @lambda@ , the default is 2.
--
-- * 'ctgName' - The name of the target group. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
createTargetGroup ::
  -- | 'ctgName'
  Text ->
  CreateTargetGroup
createTargetGroup pName_ =
  CreateTargetGroup'
    { _ctgHealthCheckEnabled =
        Nothing,
      _ctgHealthCheckProtocol = Nothing,
      _ctgTargetType = Nothing,
      _ctgHealthCheckPort = Nothing,
      _ctgHealthCheckTimeoutSeconds = Nothing,
      _ctgHealthCheckPath = Nothing,
      _ctgMatcher = Nothing,
      _ctgProtocolVersion = Nothing,
      _ctgHealthyThresholdCount = Nothing,
      _ctgTags = Nothing,
      _ctgPort = Nothing,
      _ctgHealthCheckIntervalSeconds = Nothing,
      _ctgProtocol = Nothing,
      _ctgVPCId = Nothing,
      _ctgUnhealthyThresholdCount = Nothing,
      _ctgName = pName_
    }

-- | Indicates whether health checks are enabled. If the target type is @lambda@ , health checks are disabled by default but can be enabled. If the target type is @instance@ or @ip@ , health checks are always enabled and cannot be disabled.
ctgHealthCheckEnabled :: Lens' CreateTargetGroup (Maybe Bool)
ctgHealthCheckEnabled = lens _ctgHealthCheckEnabled (\s a -> s {_ctgHealthCheckEnabled = a})

-- | The protocol the load balancer uses when performing health checks on targets. For Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load Balancers, the default is TCP. The TCP protocol is not supported for health checks if the protocol of the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP protocols are not supported for health checks.
ctgHealthCheckProtocol :: Lens' CreateTargetGroup (Maybe ProtocolEnum)
ctgHealthCheckProtocol = lens _ctgHealthCheckProtocol (\s a -> s {_ctgHealthCheckProtocol = a})

-- | The type of target that you must specify when registering targets with this target group. You can't specify targets for a target group using more than one target type.     * @instance@ - Register targets by instance ID. This is the default value.     * @ip@ - Register targets by IP address. You can specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.     * @lambda@ - Register a single Lambda function as a target.
ctgTargetType :: Lens' CreateTargetGroup (Maybe TargetTypeEnum)
ctgTargetType = lens _ctgTargetType (\s a -> s {_ctgTargetType = a})

-- | The port the load balancer uses when performing health checks on targets. If the protocol is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the default is @traffic-port@ , which is the port on which each target receives traffic from the load balancer. If the protocol is GENEVE, the default is port 80.
ctgHealthCheckPort :: Lens' CreateTargetGroup (Maybe Text)
ctgHealthCheckPort = lens _ctgHealthCheckPort (\s a -> s {_ctgHealthCheckPort = a})

-- | The amount of time, in seconds, during which no response from a target means a failed health check. For target groups with a protocol of HTTP, HTTPS, or GENEVE, the default is 5 seconds. For target groups with a protocol of TCP or TLS, this value must be 6 seconds for HTTP health checks and 10 seconds for TCP and HTTPS health checks. If the target type is @lambda@ , the default is 30 seconds.
ctgHealthCheckTimeoutSeconds :: Lens' CreateTargetGroup (Maybe Natural)
ctgHealthCheckTimeoutSeconds = lens _ctgHealthCheckTimeoutSeconds (\s a -> s {_ctgHealthCheckTimeoutSeconds = a}) . mapping _Nat

-- | [HTTP/HTTPS health checks] The destination for health checks on the targets. [HTTP1 or HTTP2 protocol version] The ping path. The default is /. [GRPC protocol version] The path of a custom health check method with the format /package.service/method. The default is /AWS.ALB/healthcheck.
ctgHealthCheckPath :: Lens' CreateTargetGroup (Maybe Text)
ctgHealthCheckPath = lens _ctgHealthCheckPath (\s a -> s {_ctgHealthCheckPath = a})

-- | [HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful response from a target.
ctgMatcher :: Lens' CreateTargetGroup (Maybe Matcher)
ctgMatcher = lens _ctgMatcher (\s a -> s {_ctgMatcher = a})

-- | [HTTP/HTTPS protocol] The protocol version. Specify @GRPC@ to send requests to targets using gRPC. Specify @HTTP2@ to send requests to targets using HTTP/2. The default is @HTTP1@ , which sends requests to targets using HTTP/1.1.
ctgProtocolVersion :: Lens' CreateTargetGroup (Maybe Text)
ctgProtocolVersion = lens _ctgProtocolVersion (\s a -> s {_ctgProtocolVersion = a})

-- | The number of consecutive health checks successes required before considering an unhealthy target healthy. For target groups with a protocol of HTTP or HTTPS, the default is 5. For target groups with a protocol of TCP, TLS, or GENEVE, the default is 3. If the target type is @lambda@ , the default is 5.
ctgHealthyThresholdCount :: Lens' CreateTargetGroup (Maybe Natural)
ctgHealthyThresholdCount = lens _ctgHealthyThresholdCount (\s a -> s {_ctgHealthyThresholdCount = a}) . mapping _Nat

-- | The tags to assign to the target group.
ctgTags :: Lens' CreateTargetGroup (Maybe (NonEmpty Tag))
ctgTags = lens _ctgTags (\s a -> s {_ctgTags = a}) . mapping _List1

-- | The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target. If the target is a Lambda function, this parameter does not apply. If the protocol is GENEVE, the supported port is 6081.
ctgPort :: Lens' CreateTargetGroup (Maybe Natural)
ctgPort = lens _ctgPort (\s a -> s {_ctgPort = a}) . mapping _Nat

-- | The approximate amount of time, in seconds, between health checks of an individual target. If the target group protocol is TCP, TLS, UDP, or TCP_UDP, the supported values are 10 and 30 seconds. If the target group protocol is HTTP or HTTPS, the default is 30 seconds. If the target group protocol is GENEVE, the default is 10 seconds. If the target type is @lambda@ , the default is 35 seconds.
ctgHealthCheckIntervalSeconds :: Lens' CreateTargetGroup (Maybe Natural)
ctgHealthCheckIntervalSeconds = lens _ctgHealthCheckIntervalSeconds (\s a -> s {_ctgHealthCheckIntervalSeconds = a}) . mapping _Nat

-- | The protocol to use for routing traffic to the targets. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, or TCP_UDP. For Gateway Load Balancers, the supported protocol is GENEVE. A TCP_UDP listener must be associated with a TCP_UDP target group. If the target is a Lambda function, this parameter does not apply.
ctgProtocol :: Lens' CreateTargetGroup (Maybe ProtocolEnum)
ctgProtocol = lens _ctgProtocol (\s a -> s {_ctgProtocol = a})

-- | The identifier of the virtual private cloud (VPC). If the target is a Lambda function, this parameter does not apply. Otherwise, this parameter is required.
ctgVPCId :: Lens' CreateTargetGroup (Maybe Text)
ctgVPCId = lens _ctgVPCId (\s a -> s {_ctgVPCId = a})

-- | The number of consecutive health check failures required before considering a target unhealthy. If the target group protocol is HTTP or HTTPS, the default is 2. If the target group protocol is TCP or TLS, this value must be the same as the healthy threshold count. If the target group protocol is GENEVE, the default is 3. If the target type is @lambda@ , the default is 2.
ctgUnhealthyThresholdCount :: Lens' CreateTargetGroup (Maybe Natural)
ctgUnhealthyThresholdCount = lens _ctgUnhealthyThresholdCount (\s a -> s {_ctgUnhealthyThresholdCount = a}) . mapping _Nat

-- | The name of the target group. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen.
ctgName :: Lens' CreateTargetGroup Text
ctgName = lens _ctgName (\s a -> s {_ctgName = a})

instance AWSRequest CreateTargetGroup where
  type Rs CreateTargetGroup = CreateTargetGroupResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "CreateTargetGroupResult"
      ( \s h x ->
          CreateTargetGroupResponse'
            <$> ( x .@? "TargetGroups" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable CreateTargetGroup

instance NFData CreateTargetGroup

instance ToHeaders CreateTargetGroup where
  toHeaders = const mempty

instance ToPath CreateTargetGroup where
  toPath = const "/"

instance ToQuery CreateTargetGroup where
  toQuery CreateTargetGroup' {..} =
    mconcat
      [ "Action" =: ("CreateTargetGroup" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "HealthCheckEnabled" =: _ctgHealthCheckEnabled,
        "HealthCheckProtocol" =: _ctgHealthCheckProtocol,
        "TargetType" =: _ctgTargetType,
        "HealthCheckPort" =: _ctgHealthCheckPort,
        "HealthCheckTimeoutSeconds"
          =: _ctgHealthCheckTimeoutSeconds,
        "HealthCheckPath" =: _ctgHealthCheckPath,
        "Matcher" =: _ctgMatcher,
        "ProtocolVersion" =: _ctgProtocolVersion,
        "HealthyThresholdCount" =: _ctgHealthyThresholdCount,
        "Tags"
          =: toQuery (toQueryList "member" <$> _ctgTags),
        "Port" =: _ctgPort,
        "HealthCheckIntervalSeconds"
          =: _ctgHealthCheckIntervalSeconds,
        "Protocol" =: _ctgProtocol,
        "VpcId" =: _ctgVPCId,
        "UnhealthyThresholdCount"
          =: _ctgUnhealthyThresholdCount,
        "Name" =: _ctgName
      ]

-- | /See:/ 'createTargetGroupResponse' smart constructor.
data CreateTargetGroupResponse = CreateTargetGroupResponse'
  { _ctgrrsTargetGroups ::
      !( Maybe
           [TargetGroup]
       ),
    _ctgrrsResponseStatus ::
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

-- | Creates a value of 'CreateTargetGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctgrrsTargetGroups' - Information about the target group.
--
-- * 'ctgrrsResponseStatus' - -- | The response status code.
createTargetGroupResponse ::
  -- | 'ctgrrsResponseStatus'
  Int ->
  CreateTargetGroupResponse
createTargetGroupResponse pResponseStatus_ =
  CreateTargetGroupResponse'
    { _ctgrrsTargetGroups =
        Nothing,
      _ctgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the target group.
ctgrrsTargetGroups :: Lens' CreateTargetGroupResponse [TargetGroup]
ctgrrsTargetGroups = lens _ctgrrsTargetGroups (\s a -> s {_ctgrrsTargetGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
ctgrrsResponseStatus :: Lens' CreateTargetGroupResponse Int
ctgrrsResponseStatus = lens _ctgrrsResponseStatus (\s a -> s {_ctgrrsResponseStatus = a})

instance NFData CreateTargetGroupResponse
