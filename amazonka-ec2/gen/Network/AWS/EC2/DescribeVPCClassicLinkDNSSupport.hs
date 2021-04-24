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
-- Module      : Network.AWS.EC2.DescribeVPCClassicLinkDNSSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the ClassicLink DNS support status of one or more VPCs. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeVPCClassicLinkDNSSupport
  ( -- * Creating a Request
    describeVPCClassicLinkDNSSupport,
    DescribeVPCClassicLinkDNSSupport,

    -- * Request Lenses
    dvcldsNextToken,
    dvcldsMaxResults,
    dvcldsVPCIds,

    -- * Destructuring the Response
    describeVPCClassicLinkDNSSupportResponse,
    DescribeVPCClassicLinkDNSSupportResponse,

    -- * Response Lenses
    dvcldsrrsNextToken,
    dvcldsrrsVPCs,
    dvcldsrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVPCClassicLinkDNSSupport' smart constructor.
data DescribeVPCClassicLinkDNSSupport = DescribeVPCClassicLinkDNSSupport'
  { _dvcldsNextToken ::
      !( Maybe
           Text
       ),
    _dvcldsMaxResults ::
      !( Maybe
           Nat
       ),
    _dvcldsVPCIds ::
      !( Maybe
           [Text]
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

-- | Creates a value of 'DescribeVPCClassicLinkDNSSupport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvcldsNextToken' - The token for the next page of results.
--
-- * 'dvcldsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dvcldsVPCIds' - One or more VPC IDs.
describeVPCClassicLinkDNSSupport ::
  DescribeVPCClassicLinkDNSSupport
describeVPCClassicLinkDNSSupport =
  DescribeVPCClassicLinkDNSSupport'
    { _dvcldsNextToken =
        Nothing,
      _dvcldsMaxResults = Nothing,
      _dvcldsVPCIds = Nothing
    }

-- | The token for the next page of results.
dvcldsNextToken :: Lens' DescribeVPCClassicLinkDNSSupport (Maybe Text)
dvcldsNextToken = lens _dvcldsNextToken (\s a -> s {_dvcldsNextToken = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dvcldsMaxResults :: Lens' DescribeVPCClassicLinkDNSSupport (Maybe Natural)
dvcldsMaxResults = lens _dvcldsMaxResults (\s a -> s {_dvcldsMaxResults = a}) . mapping _Nat

-- | One or more VPC IDs.
dvcldsVPCIds :: Lens' DescribeVPCClassicLinkDNSSupport [Text]
dvcldsVPCIds = lens _dvcldsVPCIds (\s a -> s {_dvcldsVPCIds = a}) . _Default . _Coerce

instance AWSPager DescribeVPCClassicLinkDNSSupport where
  page rq rs
    | stop (rs ^. dvcldsrrsNextToken) = Nothing
    | stop (rs ^. dvcldsrrsVPCs) = Nothing
    | otherwise =
      Just $
        rq
          & dvcldsNextToken .~ rs ^. dvcldsrrsNextToken

instance AWSRequest DescribeVPCClassicLinkDNSSupport where
  type
    Rs DescribeVPCClassicLinkDNSSupport =
      DescribeVPCClassicLinkDNSSupportResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVPCClassicLinkDNSSupportResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "vpcs" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeVPCClassicLinkDNSSupport

instance NFData DescribeVPCClassicLinkDNSSupport

instance ToHeaders DescribeVPCClassicLinkDNSSupport where
  toHeaders = const mempty

instance ToPath DescribeVPCClassicLinkDNSSupport where
  toPath = const "/"

instance ToQuery DescribeVPCClassicLinkDNSSupport where
  toQuery DescribeVPCClassicLinkDNSSupport' {..} =
    mconcat
      [ "Action"
          =: ("DescribeVpcClassicLinkDnsSupport" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dvcldsNextToken,
        "MaxResults" =: _dvcldsMaxResults,
        toQuery (toQueryList "VpcIds" <$> _dvcldsVPCIds)
      ]

-- | /See:/ 'describeVPCClassicLinkDNSSupportResponse' smart constructor.
data DescribeVPCClassicLinkDNSSupportResponse = DescribeVPCClassicLinkDNSSupportResponse'
  { _dvcldsrrsNextToken ::
      !( Maybe
           Text
       ),
    _dvcldsrrsVPCs ::
      !( Maybe
           [ClassicLinkDNSSupport]
       ),
    _dvcldsrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVPCClassicLinkDNSSupportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvcldsrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dvcldsrrsVPCs' - Information about the ClassicLink DNS support status of the VPCs.
--
-- * 'dvcldsrrsResponseStatus' - -- | The response status code.
describeVPCClassicLinkDNSSupportResponse ::
  -- | 'dvcldsrrsResponseStatus'
  Int ->
  DescribeVPCClassicLinkDNSSupportResponse
describeVPCClassicLinkDNSSupportResponse
  pResponseStatus_ =
    DescribeVPCClassicLinkDNSSupportResponse'
      { _dvcldsrrsNextToken =
          Nothing,
        _dvcldsrrsVPCs = Nothing,
        _dvcldsrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dvcldsrrsNextToken :: Lens' DescribeVPCClassicLinkDNSSupportResponse (Maybe Text)
dvcldsrrsNextToken = lens _dvcldsrrsNextToken (\s a -> s {_dvcldsrrsNextToken = a})

-- | Information about the ClassicLink DNS support status of the VPCs.
dvcldsrrsVPCs :: Lens' DescribeVPCClassicLinkDNSSupportResponse [ClassicLinkDNSSupport]
dvcldsrrsVPCs = lens _dvcldsrrsVPCs (\s a -> s {_dvcldsrrsVPCs = a}) . _Default . _Coerce

-- | -- | The response status code.
dvcldsrrsResponseStatus :: Lens' DescribeVPCClassicLinkDNSSupportResponse Int
dvcldsrrsResponseStatus = lens _dvcldsrrsResponseStatus (\s a -> s {_dvcldsrrsResponseStatus = a})

instance
  NFData
    DescribeVPCClassicLinkDNSSupportResponse
