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
-- Module      : Network.AWS.EC2.DescribeVPCs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your VPCs.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeVPCs
  ( -- * Creating a Request
    describeVPCs,
    DescribeVPCs,

    -- * Request Lenses
    desNextToken,
    desDryRun,
    desMaxResults,
    desFilters,
    desVPCIds,

    -- * Destructuring the Response
    describeVPCsResponse,
    DescribeVPCsResponse,

    -- * Response Lenses
    dvrrsNextToken,
    dvrrsVPCs,
    dvrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVPCs' smart constructor.
data DescribeVPCs = DescribeVPCs'
  { _desNextToken ::
      !(Maybe Text),
    _desDryRun :: !(Maybe Bool),
    _desMaxResults :: !(Maybe Nat),
    _desFilters :: !(Maybe [Filter]),
    _desVPCIds :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeVPCs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'desNextToken' - The token for the next page of results.
--
-- * 'desDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'desMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'desFilters' - One or more filters.     * @cidr@ - The primary IPv4 CIDR block of the VPC. The CIDR block you specify must exactly match the VPC's CIDR block for information to be returned for the VPC. Must contain the slash followed by one or two digits (for example, @/28@ ).     * @cidr-block-association.cidr-block@ - An IPv4 CIDR block associated with the VPC.     * @cidr-block-association.association-id@ - The association ID for an IPv4 CIDR block associated with the VPC.     * @cidr-block-association.state@ - The state of an IPv4 CIDR block associated with the VPC.     * @dhcp-options-id@ - The ID of a set of DHCP options.     * @ipv6-cidr-block-association.ipv6-cidr-block@ - An IPv6 CIDR block associated with the VPC.     * @ipv6-cidr-block-association.ipv6-pool@ - The ID of the IPv6 address pool from which the IPv6 CIDR block is allocated.     * @ipv6-cidr-block-association.association-id@ - The association ID for an IPv6 CIDR block associated with the VPC.     * @ipv6-cidr-block-association.state@ - The state of an IPv6 CIDR block associated with the VPC.     * @isDefault@ - Indicates whether the VPC is the default VPC.     * @owner-id@ - The ID of the AWS account that owns the VPC.     * @state@ - The state of the VPC (@pending@ | @available@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-id@ - The ID of the VPC.
--
-- * 'desVPCIds' - One or more VPC IDs. Default: Describes all your VPCs.
describeVPCs ::
  DescribeVPCs
describeVPCs =
  DescribeVPCs'
    { _desNextToken = Nothing,
      _desDryRun = Nothing,
      _desMaxResults = Nothing,
      _desFilters = Nothing,
      _desVPCIds = Nothing
    }

-- | The token for the next page of results.
desNextToken :: Lens' DescribeVPCs (Maybe Text)
desNextToken = lens _desNextToken (\s a -> s {_desNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
desDryRun :: Lens' DescribeVPCs (Maybe Bool)
desDryRun = lens _desDryRun (\s a -> s {_desDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
desMaxResults :: Lens' DescribeVPCs (Maybe Natural)
desMaxResults = lens _desMaxResults (\s a -> s {_desMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @cidr@ - The primary IPv4 CIDR block of the VPC. The CIDR block you specify must exactly match the VPC's CIDR block for information to be returned for the VPC. Must contain the slash followed by one or two digits (for example, @/28@ ).     * @cidr-block-association.cidr-block@ - An IPv4 CIDR block associated with the VPC.     * @cidr-block-association.association-id@ - The association ID for an IPv4 CIDR block associated with the VPC.     * @cidr-block-association.state@ - The state of an IPv4 CIDR block associated with the VPC.     * @dhcp-options-id@ - The ID of a set of DHCP options.     * @ipv6-cidr-block-association.ipv6-cidr-block@ - An IPv6 CIDR block associated with the VPC.     * @ipv6-cidr-block-association.ipv6-pool@ - The ID of the IPv6 address pool from which the IPv6 CIDR block is allocated.     * @ipv6-cidr-block-association.association-id@ - The association ID for an IPv6 CIDR block associated with the VPC.     * @ipv6-cidr-block-association.state@ - The state of an IPv6 CIDR block associated with the VPC.     * @isDefault@ - Indicates whether the VPC is the default VPC.     * @owner-id@ - The ID of the AWS account that owns the VPC.     * @state@ - The state of the VPC (@pending@ | @available@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.     * @vpc-id@ - The ID of the VPC.
desFilters :: Lens' DescribeVPCs [Filter]
desFilters = lens _desFilters (\s a -> s {_desFilters = a}) . _Default . _Coerce

-- | One or more VPC IDs. Default: Describes all your VPCs.
desVPCIds :: Lens' DescribeVPCs [Text]
desVPCIds = lens _desVPCIds (\s a -> s {_desVPCIds = a}) . _Default . _Coerce

instance AWSPager DescribeVPCs where
  page rq rs
    | stop (rs ^. dvrrsNextToken) = Nothing
    | stop (rs ^. dvrrsVPCs) = Nothing
    | otherwise =
      Just $ rq & desNextToken .~ rs ^. dvrrsNextToken

instance AWSRequest DescribeVPCs where
  type Rs DescribeVPCs = DescribeVPCsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVPCsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "vpcSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVPCs

instance NFData DescribeVPCs

instance ToHeaders DescribeVPCs where
  toHeaders = const mempty

instance ToPath DescribeVPCs where
  toPath = const "/"

instance ToQuery DescribeVPCs where
  toQuery DescribeVPCs' {..} =
    mconcat
      [ "Action" =: ("DescribeVpcs" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _desNextToken,
        "DryRun" =: _desDryRun,
        "MaxResults" =: _desMaxResults,
        toQuery (toQueryList "Filter" <$> _desFilters),
        toQuery (toQueryList "VpcId" <$> _desVPCIds)
      ]

-- | /See:/ 'describeVPCsResponse' smart constructor.
data DescribeVPCsResponse = DescribeVPCsResponse'
  { _dvrrsNextToken ::
      !(Maybe Text),
    _dvrrsVPCs :: !(Maybe [VPC]),
    _dvrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeVPCsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dvrrsVPCs' - Information about one or more VPCs.
--
-- * 'dvrrsResponseStatus' - -- | The response status code.
describeVPCsResponse ::
  -- | 'dvrrsResponseStatus'
  Int ->
  DescribeVPCsResponse
describeVPCsResponse pResponseStatus_ =
  DescribeVPCsResponse'
    { _dvrrsNextToken = Nothing,
      _dvrrsVPCs = Nothing,
      _dvrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dvrrsNextToken :: Lens' DescribeVPCsResponse (Maybe Text)
dvrrsNextToken = lens _dvrrsNextToken (\s a -> s {_dvrrsNextToken = a})

-- | Information about one or more VPCs.
dvrrsVPCs :: Lens' DescribeVPCsResponse [VPC]
dvrrsVPCs = lens _dvrrsVPCs (\s a -> s {_dvrrsVPCs = a}) . _Default . _Coerce

-- | -- | The response status code.
dvrrsResponseStatus :: Lens' DescribeVPCsResponse Int
dvrrsResponseStatus = lens _dvrrsResponseStatus (\s a -> s {_dvrrsResponseStatus = a})

instance NFData DescribeVPCsResponse
