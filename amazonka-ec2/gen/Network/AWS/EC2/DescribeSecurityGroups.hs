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
-- Module      : Network.AWS.EC2.DescribeSecurityGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified security groups or all of your security groups.
--
--
-- A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html Amazon EC2 Security Groups> in the /Amazon Elastic Compute Cloud User Guide/ and <https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html Security Groups for Your VPC> in the /Amazon Virtual Private Cloud User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeSecurityGroups
  ( -- * Creating a Request
    describeSecurityGroups,
    DescribeSecurityGroups,

    -- * Request Lenses
    dsgNextToken,
    dsgGroupIds,
    dsgDryRun,
    dsgMaxResults,
    dsgGroupNames,
    dsgFilters,

    -- * Destructuring the Response
    describeSecurityGroupsResponse,
    DescribeSecurityGroupsResponse,

    -- * Response Lenses
    dsgrrsNextToken,
    dsgrrsSecurityGroups,
    dsgrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSecurityGroups' smart constructor.
data DescribeSecurityGroups = DescribeSecurityGroups'
  { _dsgNextToken ::
      !(Maybe Text),
    _dsgGroupIds ::
      !(Maybe [Text]),
    _dsgDryRun ::
      !(Maybe Bool),
    _dsgMaxResults ::
      !(Maybe Nat),
    _dsgGroupNames ::
      !(Maybe [Text]),
    _dsgFilters ::
      !(Maybe [Filter])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeSecurityGroups' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgNextToken' - The token to request the next page of results.
--
-- * 'dsgGroupIds' - The IDs of the security groups. Required for security groups in a nondefault VPC. Default: Describes all your security groups.
--
-- * 'dsgDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dsgMaxResults' - The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned @NextToken@ value. This value can be between 5 and 1000. If this parameter is not specified, then all results are returned.
--
-- * 'dsgGroupNames' - [EC2-Classic and default VPC only] The names of the security groups. You can specify either the security group name or the security group ID. For security groups in a nondefault VPC, use the @group-name@ filter to describe security groups by name. Default: Describes all your security groups.
--
-- * 'dsgFilters' - The filters. If using multiple filters for rules, the results include security groups for which any combination of rules - not necessarily a single rule - match all filters.     * @description@ - The description of the security group.     * @egress.ip-permission.cidr@ - An IPv4 CIDR block for an outbound security group rule.     * @egress.ip-permission.from-port@ - For an outbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.     * @egress.ip-permission.group-id@ - The ID of a security group that has been referenced in an outbound security group rule.     * @egress.ip-permission.group-name@ - The name of a security group that is referenced in an outbound security group rule.     * @egress.ip-permission.ipv6-cidr@ - An IPv6 CIDR block for an outbound security group rule.     * @egress.ip-permission.prefix-list-id@ - The ID of a prefix list to which a security group rule allows outbound access.     * @egress.ip-permission.protocol@ - The IP protocol for an outbound security group rule (@tcp@ | @udp@ | @icmp@ , a protocol number, or -1 for all protocols).     * @egress.ip-permission.to-port@ - For an outbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.     * @egress.ip-permission.user-id@ - The ID of an AWS account that has been referenced in an outbound security group rule.     * @group-id@ - The ID of the security group.      * @group-name@ - The name of the security group.     * @ip-permission.cidr@ - An IPv4 CIDR block for an inbound security group rule.     * @ip-permission.from-port@ - For an inbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.     * @ip-permission.group-id@ - The ID of a security group that has been referenced in an inbound security group rule.     * @ip-permission.group-name@ - The name of a security group that is referenced in an inbound security group rule.     * @ip-permission.ipv6-cidr@ - An IPv6 CIDR block for an inbound security group rule.     * @ip-permission.prefix-list-id@ - The ID of a prefix list from which a security group rule allows inbound access.     * @ip-permission.protocol@ - The IP protocol for an inbound security group rule (@tcp@ | @udp@ | @icmp@ , a protocol number, or -1 for all protocols).     * @ip-permission.to-port@ - For an inbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.     * @ip-permission.user-id@ - The ID of an AWS account that has been referenced in an inbound security group rule.     * @owner-id@ - The AWS account ID of the owner of the security group.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-id@ - The ID of the VPC specified when the security group was created.
describeSecurityGroups ::
  DescribeSecurityGroups
describeSecurityGroups =
  DescribeSecurityGroups'
    { _dsgNextToken = Nothing,
      _dsgGroupIds = Nothing,
      _dsgDryRun = Nothing,
      _dsgMaxResults = Nothing,
      _dsgGroupNames = Nothing,
      _dsgFilters = Nothing
    }

-- | The token to request the next page of results.
dsgNextToken :: Lens' DescribeSecurityGroups (Maybe Text)
dsgNextToken = lens _dsgNextToken (\s a -> s {_dsgNextToken = a})

-- | The IDs of the security groups. Required for security groups in a nondefault VPC. Default: Describes all your security groups.
dsgGroupIds :: Lens' DescribeSecurityGroups [Text]
dsgGroupIds = lens _dsgGroupIds (\s a -> s {_dsgGroupIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dsgDryRun :: Lens' DescribeSecurityGroups (Maybe Bool)
dsgDryRun = lens _dsgDryRun (\s a -> s {_dsgDryRun = a})

-- | The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned @NextToken@ value. This value can be between 5 and 1000. If this parameter is not specified, then all results are returned.
dsgMaxResults :: Lens' DescribeSecurityGroups (Maybe Natural)
dsgMaxResults = lens _dsgMaxResults (\s a -> s {_dsgMaxResults = a}) . mapping _Nat

-- | [EC2-Classic and default VPC only] The names of the security groups. You can specify either the security group name or the security group ID. For security groups in a nondefault VPC, use the @group-name@ filter to describe security groups by name. Default: Describes all your security groups.
dsgGroupNames :: Lens' DescribeSecurityGroups [Text]
dsgGroupNames = lens _dsgGroupNames (\s a -> s {_dsgGroupNames = a}) . _Default . _Coerce

-- | The filters. If using multiple filters for rules, the results include security groups for which any combination of rules - not necessarily a single rule - match all filters.     * @description@ - The description of the security group.     * @egress.ip-permission.cidr@ - An IPv4 CIDR block for an outbound security group rule.     * @egress.ip-permission.from-port@ - For an outbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.     * @egress.ip-permission.group-id@ - The ID of a security group that has been referenced in an outbound security group rule.     * @egress.ip-permission.group-name@ - The name of a security group that is referenced in an outbound security group rule.     * @egress.ip-permission.ipv6-cidr@ - An IPv6 CIDR block for an outbound security group rule.     * @egress.ip-permission.prefix-list-id@ - The ID of a prefix list to which a security group rule allows outbound access.     * @egress.ip-permission.protocol@ - The IP protocol for an outbound security group rule (@tcp@ | @udp@ | @icmp@ , a protocol number, or -1 for all protocols).     * @egress.ip-permission.to-port@ - For an outbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.     * @egress.ip-permission.user-id@ - The ID of an AWS account that has been referenced in an outbound security group rule.     * @group-id@ - The ID of the security group.      * @group-name@ - The name of the security group.     * @ip-permission.cidr@ - An IPv4 CIDR block for an inbound security group rule.     * @ip-permission.from-port@ - For an inbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.     * @ip-permission.group-id@ - The ID of a security group that has been referenced in an inbound security group rule.     * @ip-permission.group-name@ - The name of a security group that is referenced in an inbound security group rule.     * @ip-permission.ipv6-cidr@ - An IPv6 CIDR block for an inbound security group rule.     * @ip-permission.prefix-list-id@ - The ID of a prefix list from which a security group rule allows inbound access.     * @ip-permission.protocol@ - The IP protocol for an inbound security group rule (@tcp@ | @udp@ | @icmp@ , a protocol number, or -1 for all protocols).     * @ip-permission.to-port@ - For an inbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.     * @ip-permission.user-id@ - The ID of an AWS account that has been referenced in an inbound security group rule.     * @owner-id@ - The AWS account ID of the owner of the security group.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-id@ - The ID of the VPC specified when the security group was created.
dsgFilters :: Lens' DescribeSecurityGroups [Filter]
dsgFilters = lens _dsgFilters (\s a -> s {_dsgFilters = a}) . _Default . _Coerce

instance AWSPager DescribeSecurityGroups where
  page rq rs
    | stop (rs ^. dsgrrsNextToken) = Nothing
    | stop (rs ^. dsgrrsSecurityGroups) = Nothing
    | otherwise =
      Just $ rq & dsgNextToken .~ rs ^. dsgrrsNextToken

instance AWSRequest DescribeSecurityGroups where
  type
    Rs DescribeSecurityGroups =
      DescribeSecurityGroupsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeSecurityGroupsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "securityGroupInfo" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSecurityGroups

instance NFData DescribeSecurityGroups

instance ToHeaders DescribeSecurityGroups where
  toHeaders = const mempty

instance ToPath DescribeSecurityGroups where
  toPath = const "/"

instance ToQuery DescribeSecurityGroups where
  toQuery DescribeSecurityGroups' {..} =
    mconcat
      [ "Action"
          =: ("DescribeSecurityGroups" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dsgNextToken,
        toQuery (toQueryList "GroupId" <$> _dsgGroupIds),
        "DryRun" =: _dsgDryRun,
        "MaxResults" =: _dsgMaxResults,
        toQuery (toQueryList "GroupName" <$> _dsgGroupNames),
        toQuery (toQueryList "Filter" <$> _dsgFilters)
      ]

-- | /See:/ 'describeSecurityGroupsResponse' smart constructor.
data DescribeSecurityGroupsResponse = DescribeSecurityGroupsResponse'
  { _dsgrrsNextToken ::
      !( Maybe
           Text
       ),
    _dsgrrsSecurityGroups ::
      !( Maybe
           [SecurityGroup]
       ),
    _dsgrrsResponseStatus ::
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

-- | Creates a value of 'DescribeSecurityGroupsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dsgrrsSecurityGroups' - Information about the security groups.
--
-- * 'dsgrrsResponseStatus' - -- | The response status code.
describeSecurityGroupsResponse ::
  -- | 'dsgrrsResponseStatus'
  Int ->
  DescribeSecurityGroupsResponse
describeSecurityGroupsResponse pResponseStatus_ =
  DescribeSecurityGroupsResponse'
    { _dsgrrsNextToken =
        Nothing,
      _dsgrrsSecurityGroups = Nothing,
      _dsgrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dsgrrsNextToken :: Lens' DescribeSecurityGroupsResponse (Maybe Text)
dsgrrsNextToken = lens _dsgrrsNextToken (\s a -> s {_dsgrrsNextToken = a})

-- | Information about the security groups.
dsgrrsSecurityGroups :: Lens' DescribeSecurityGroupsResponse [SecurityGroup]
dsgrrsSecurityGroups = lens _dsgrrsSecurityGroups (\s a -> s {_dsgrrsSecurityGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
dsgrrsResponseStatus :: Lens' DescribeSecurityGroupsResponse Int
dsgrrsResponseStatus = lens _dsgrrsResponseStatus (\s a -> s {_dsgrrsResponseStatus = a})

instance NFData DescribeSecurityGroupsResponse
