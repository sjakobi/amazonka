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
-- Module      : Network.AWS.EC2.DescribeEgressOnlyInternetGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your egress-only internet gateways.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeEgressOnlyInternetGateways
  ( -- * Creating a Request
    describeEgressOnlyInternetGateways,
    DescribeEgressOnlyInternetGateways,

    -- * Request Lenses
    deoigsNextToken,
    deoigsEgressOnlyInternetGatewayIds,
    deoigsDryRun,
    deoigsMaxResults,
    deoigsFilters,

    -- * Destructuring the Response
    describeEgressOnlyInternetGatewaysResponse,
    DescribeEgressOnlyInternetGatewaysResponse,

    -- * Response Lenses
    deoigrersNextToken,
    deoigrersEgressOnlyInternetGateways,
    deoigrersResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEgressOnlyInternetGateways' smart constructor.
data DescribeEgressOnlyInternetGateways = DescribeEgressOnlyInternetGateways'
  { _deoigsNextToken ::
      !( Maybe
           Text
       ),
    _deoigsEgressOnlyInternetGatewayIds ::
      !( Maybe
           [Text]
       ),
    _deoigsDryRun ::
      !( Maybe
           Bool
       ),
    _deoigsMaxResults ::
      !( Maybe
           Nat
       ),
    _deoigsFilters ::
      !( Maybe
           [Filter]
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

-- | Creates a value of 'DescribeEgressOnlyInternetGateways' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deoigsNextToken' - The token for the next page of results.
--
-- * 'deoigsEgressOnlyInternetGatewayIds' - One or more egress-only internet gateway IDs.
--
-- * 'deoigsDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'deoigsMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'deoigsFilters' - One or more filters.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeEgressOnlyInternetGateways ::
  DescribeEgressOnlyInternetGateways
describeEgressOnlyInternetGateways =
  DescribeEgressOnlyInternetGateways'
    { _deoigsNextToken =
        Nothing,
      _deoigsEgressOnlyInternetGatewayIds =
        Nothing,
      _deoigsDryRun = Nothing,
      _deoigsMaxResults = Nothing,
      _deoigsFilters = Nothing
    }

-- | The token for the next page of results.
deoigsNextToken :: Lens' DescribeEgressOnlyInternetGateways (Maybe Text)
deoigsNextToken = lens _deoigsNextToken (\s a -> s {_deoigsNextToken = a})

-- | One or more egress-only internet gateway IDs.
deoigsEgressOnlyInternetGatewayIds :: Lens' DescribeEgressOnlyInternetGateways [Text]
deoigsEgressOnlyInternetGatewayIds = lens _deoigsEgressOnlyInternetGatewayIds (\s a -> s {_deoigsEgressOnlyInternetGatewayIds = a}) . _Default . _Coerce

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
deoigsDryRun :: Lens' DescribeEgressOnlyInternetGateways (Maybe Bool)
deoigsDryRun = lens _deoigsDryRun (\s a -> s {_deoigsDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
deoigsMaxResults :: Lens' DescribeEgressOnlyInternetGateways (Maybe Natural)
deoigsMaxResults = lens _deoigsMaxResults (\s a -> s {_deoigsMaxResults = a}) . mapping _Nat

-- | One or more filters.     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
deoigsFilters :: Lens' DescribeEgressOnlyInternetGateways [Filter]
deoigsFilters = lens _deoigsFilters (\s a -> s {_deoigsFilters = a}) . _Default . _Coerce

instance AWSPager DescribeEgressOnlyInternetGateways where
  page rq rs
    | stop (rs ^. deoigrersNextToken) = Nothing
    | stop (rs ^. deoigrersEgressOnlyInternetGateways) =
      Nothing
    | otherwise =
      Just $
        rq
          & deoigsNextToken .~ rs ^. deoigrersNextToken

instance
  AWSRequest
    DescribeEgressOnlyInternetGateways
  where
  type
    Rs DescribeEgressOnlyInternetGateways =
      DescribeEgressOnlyInternetGatewaysResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeEgressOnlyInternetGatewaysResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "egressOnlyInternetGatewaySet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEgressOnlyInternetGateways

instance NFData DescribeEgressOnlyInternetGateways

instance ToHeaders DescribeEgressOnlyInternetGateways where
  toHeaders = const mempty

instance ToPath DescribeEgressOnlyInternetGateways where
  toPath = const "/"

instance ToQuery DescribeEgressOnlyInternetGateways where
  toQuery DescribeEgressOnlyInternetGateways' {..} =
    mconcat
      [ "Action"
          =: ("DescribeEgressOnlyInternetGateways" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _deoigsNextToken,
        toQuery
          ( toQueryList "EgressOnlyInternetGatewayId"
              <$> _deoigsEgressOnlyInternetGatewayIds
          ),
        "DryRun" =: _deoigsDryRun,
        "MaxResults" =: _deoigsMaxResults,
        toQuery (toQueryList "Filter" <$> _deoigsFilters)
      ]

-- | /See:/ 'describeEgressOnlyInternetGatewaysResponse' smart constructor.
data DescribeEgressOnlyInternetGatewaysResponse = DescribeEgressOnlyInternetGatewaysResponse'
  { _deoigrersNextToken ::
      !( Maybe
           Text
       ),
    _deoigrersEgressOnlyInternetGateways ::
      !( Maybe
           [EgressOnlyInternetGateway]
       ),
    _deoigrersResponseStatus ::
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

-- | Creates a value of 'DescribeEgressOnlyInternetGatewaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deoigrersNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'deoigrersEgressOnlyInternetGateways' - Information about the egress-only internet gateways.
--
-- * 'deoigrersResponseStatus' - -- | The response status code.
describeEgressOnlyInternetGatewaysResponse ::
  -- | 'deoigrersResponseStatus'
  Int ->
  DescribeEgressOnlyInternetGatewaysResponse
describeEgressOnlyInternetGatewaysResponse
  pResponseStatus_ =
    DescribeEgressOnlyInternetGatewaysResponse'
      { _deoigrersNextToken =
          Nothing,
        _deoigrersEgressOnlyInternetGateways =
          Nothing,
        _deoigrersResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
deoigrersNextToken :: Lens' DescribeEgressOnlyInternetGatewaysResponse (Maybe Text)
deoigrersNextToken = lens _deoigrersNextToken (\s a -> s {_deoigrersNextToken = a})

-- | Information about the egress-only internet gateways.
deoigrersEgressOnlyInternetGateways :: Lens' DescribeEgressOnlyInternetGatewaysResponse [EgressOnlyInternetGateway]
deoigrersEgressOnlyInternetGateways = lens _deoigrersEgressOnlyInternetGateways (\s a -> s {_deoigrersEgressOnlyInternetGateways = a}) . _Default . _Coerce

-- | -- | The response status code.
deoigrersResponseStatus :: Lens' DescribeEgressOnlyInternetGatewaysResponse Int
deoigrersResponseStatus = lens _deoigrersResponseStatus (\s a -> s {_deoigrersResponseStatus = a})

instance
  NFData
    DescribeEgressOnlyInternetGatewaysResponse
