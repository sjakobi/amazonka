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
-- Module      : Network.AWS.EC2.DescribeInternetGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your internet gateways.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeInternetGateways
  ( -- * Creating a Request
    describeInternetGateways,
    DescribeInternetGateways,

    -- * Request Lenses
    digsNextToken,
    digsDryRun,
    digsMaxResults,
    digsInternetGatewayIds,
    digsFilters,

    -- * Destructuring the Response
    describeInternetGatewaysResponse,
    DescribeInternetGatewaysResponse,

    -- * Response Lenses
    digrrsNextToken,
    digrrsInternetGateways,
    digrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInternetGateways' smart constructor.
data DescribeInternetGateways = DescribeInternetGateways'
  { _digsNextToken ::
      !(Maybe Text),
    _digsDryRun ::
      !(Maybe Bool),
    _digsMaxResults ::
      !(Maybe Nat),
    _digsInternetGatewayIds ::
      !(Maybe [Text]),
    _digsFilters ::
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

-- | Creates a value of 'DescribeInternetGateways' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'digsNextToken' - The token for the next page of results.
--
-- * 'digsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'digsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'digsInternetGatewayIds' - One or more internet gateway IDs. Default: Describes all your internet gateways.
--
-- * 'digsFilters' - One or more filters.     * @attachment.state@ - The current state of the attachment between the gateway and the VPC (@available@ ). Present only if a VPC is attached.     * @attachment.vpc-id@ - The ID of an attached VPC.     * @internet-gateway-id@ - The ID of the Internet gateway.     * @owner-id@ - The ID of the AWS account that owns the internet gateway.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeInternetGateways ::
  DescribeInternetGateways
describeInternetGateways =
  DescribeInternetGateways'
    { _digsNextToken = Nothing,
      _digsDryRun = Nothing,
      _digsMaxResults = Nothing,
      _digsInternetGatewayIds = Nothing,
      _digsFilters = Nothing
    }

-- | The token for the next page of results.
digsNextToken :: Lens' DescribeInternetGateways (Maybe Text)
digsNextToken = lens _digsNextToken (\s a -> s {_digsNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
digsDryRun :: Lens' DescribeInternetGateways (Maybe Bool)
digsDryRun = lens _digsDryRun (\s a -> s {_digsDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
digsMaxResults :: Lens' DescribeInternetGateways (Maybe Natural)
digsMaxResults = lens _digsMaxResults (\s a -> s {_digsMaxResults = a}) . mapping _Nat

-- | One or more internet gateway IDs. Default: Describes all your internet gateways.
digsInternetGatewayIds :: Lens' DescribeInternetGateways [Text]
digsInternetGatewayIds = lens _digsInternetGatewayIds (\s a -> s {_digsInternetGatewayIds = a}) . _Default . _Coerce

-- | One or more filters.     * @attachment.state@ - The current state of the attachment between the gateway and the VPC (@available@ ). Present only if a VPC is attached.     * @attachment.vpc-id@ - The ID of an attached VPC.     * @internet-gateway-id@ - The ID of the Internet gateway.     * @owner-id@ - The ID of the AWS account that owns the internet gateway.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
digsFilters :: Lens' DescribeInternetGateways [Filter]
digsFilters = lens _digsFilters (\s a -> s {_digsFilters = a}) . _Default . _Coerce

instance AWSPager DescribeInternetGateways where
  page rq rs
    | stop (rs ^. digrrsNextToken) = Nothing
    | stop (rs ^. digrrsInternetGateways) = Nothing
    | otherwise =
      Just $ rq & digsNextToken .~ rs ^. digrrsNextToken

instance AWSRequest DescribeInternetGateways where
  type
    Rs DescribeInternetGateways =
      DescribeInternetGatewaysResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeInternetGatewaysResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "internetGatewaySet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInternetGateways

instance NFData DescribeInternetGateways

instance ToHeaders DescribeInternetGateways where
  toHeaders = const mempty

instance ToPath DescribeInternetGateways where
  toPath = const "/"

instance ToQuery DescribeInternetGateways where
  toQuery DescribeInternetGateways' {..} =
    mconcat
      [ "Action"
          =: ("DescribeInternetGateways" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _digsNextToken,
        "DryRun" =: _digsDryRun,
        "MaxResults" =: _digsMaxResults,
        toQuery
          ( toQueryList "InternetGatewayId"
              <$> _digsInternetGatewayIds
          ),
        toQuery (toQueryList "Filter" <$> _digsFilters)
      ]

-- | /See:/ 'describeInternetGatewaysResponse' smart constructor.
data DescribeInternetGatewaysResponse = DescribeInternetGatewaysResponse'
  { _digrrsNextToken ::
      !( Maybe
           Text
       ),
    _digrrsInternetGateways ::
      !( Maybe
           [InternetGateway]
       ),
    _digrrsResponseStatus ::
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

-- | Creates a value of 'DescribeInternetGatewaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'digrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'digrrsInternetGateways' - Information about one or more internet gateways.
--
-- * 'digrrsResponseStatus' - -- | The response status code.
describeInternetGatewaysResponse ::
  -- | 'digrrsResponseStatus'
  Int ->
  DescribeInternetGatewaysResponse
describeInternetGatewaysResponse pResponseStatus_ =
  DescribeInternetGatewaysResponse'
    { _digrrsNextToken =
        Nothing,
      _digrrsInternetGateways = Nothing,
      _digrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
digrrsNextToken :: Lens' DescribeInternetGatewaysResponse (Maybe Text)
digrrsNextToken = lens _digrrsNextToken (\s a -> s {_digrrsNextToken = a})

-- | Information about one or more internet gateways.
digrrsInternetGateways :: Lens' DescribeInternetGatewaysResponse [InternetGateway]
digrrsInternetGateways = lens _digrrsInternetGateways (\s a -> s {_digrrsInternetGateways = a}) . _Default . _Coerce

-- | -- | The response status code.
digrrsResponseStatus :: Lens' DescribeInternetGatewaysResponse Int
digrrsResponseStatus = lens _digrrsResponseStatus (\s a -> s {_digrrsResponseStatus = a})

instance NFData DescribeInternetGatewaysResponse
