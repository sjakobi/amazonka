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
-- Module      : Network.AWS.EC2.DescribeMovingAddresses
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform. This request does not return information about any other Elastic IP addresses in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeMovingAddresses
  ( -- * Creating a Request
    describeMovingAddresses,
    DescribeMovingAddresses,

    -- * Request Lenses
    dmaNextToken,
    dmaDryRun,
    dmaMaxResults,
    dmaPublicIPs,
    dmaFilters,

    -- * Destructuring the Response
    describeMovingAddressesResponse,
    DescribeMovingAddressesResponse,

    -- * Response Lenses
    dmarrsNextToken,
    dmarrsMovingAddressStatuses,
    dmarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeMovingAddresses' smart constructor.
data DescribeMovingAddresses = DescribeMovingAddresses'
  { _dmaNextToken ::
      !(Maybe Text),
    _dmaDryRun ::
      !(Maybe Bool),
    _dmaMaxResults ::
      !(Maybe Nat),
    _dmaPublicIPs ::
      !(Maybe [Text]),
    _dmaFilters ::
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

-- | Creates a value of 'DescribeMovingAddresses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmaNextToken' - The token for the next page of results.
--
-- * 'dmaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dmaMaxResults' - The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned @NextToken@ value. This value can be between 5 and 1000; if @MaxResults@ is given a value outside of this range, an error is returned. Default: If no value is provided, the default is 1000.
--
-- * 'dmaPublicIPs' - One or more Elastic IP addresses.
--
-- * 'dmaFilters' - One or more filters.     * @moving-status@ - The status of the Elastic IP address (@MovingToVpc@ | @RestoringToClassic@ ).
describeMovingAddresses ::
  DescribeMovingAddresses
describeMovingAddresses =
  DescribeMovingAddresses'
    { _dmaNextToken = Nothing,
      _dmaDryRun = Nothing,
      _dmaMaxResults = Nothing,
      _dmaPublicIPs = Nothing,
      _dmaFilters = Nothing
    }

-- | The token for the next page of results.
dmaNextToken :: Lens' DescribeMovingAddresses (Maybe Text)
dmaNextToken = lens _dmaNextToken (\s a -> s {_dmaNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dmaDryRun :: Lens' DescribeMovingAddresses (Maybe Bool)
dmaDryRun = lens _dmaDryRun (\s a -> s {_dmaDryRun = a})

-- | The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned @NextToken@ value. This value can be between 5 and 1000; if @MaxResults@ is given a value outside of this range, an error is returned. Default: If no value is provided, the default is 1000.
dmaMaxResults :: Lens' DescribeMovingAddresses (Maybe Natural)
dmaMaxResults = lens _dmaMaxResults (\s a -> s {_dmaMaxResults = a}) . mapping _Nat

-- | One or more Elastic IP addresses.
dmaPublicIPs :: Lens' DescribeMovingAddresses [Text]
dmaPublicIPs = lens _dmaPublicIPs (\s a -> s {_dmaPublicIPs = a}) . _Default . _Coerce

-- | One or more filters.     * @moving-status@ - The status of the Elastic IP address (@MovingToVpc@ | @RestoringToClassic@ ).
dmaFilters :: Lens' DescribeMovingAddresses [Filter]
dmaFilters = lens _dmaFilters (\s a -> s {_dmaFilters = a}) . _Default . _Coerce

instance AWSPager DescribeMovingAddresses where
  page rq rs
    | stop (rs ^. dmarrsNextToken) = Nothing
    | stop (rs ^. dmarrsMovingAddressStatuses) = Nothing
    | otherwise =
      Just $ rq & dmaNextToken .~ rs ^. dmarrsNextToken

instance AWSRequest DescribeMovingAddresses where
  type
    Rs DescribeMovingAddresses =
      DescribeMovingAddressesResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeMovingAddressesResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "movingAddressStatusSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeMovingAddresses

instance NFData DescribeMovingAddresses

instance ToHeaders DescribeMovingAddresses where
  toHeaders = const mempty

instance ToPath DescribeMovingAddresses where
  toPath = const "/"

instance ToQuery DescribeMovingAddresses where
  toQuery DescribeMovingAddresses' {..} =
    mconcat
      [ "Action"
          =: ("DescribeMovingAddresses" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dmaNextToken,
        "DryRun" =: _dmaDryRun,
        "MaxResults" =: _dmaMaxResults,
        toQuery (toQueryList "PublicIp" <$> _dmaPublicIPs),
        toQuery (toQueryList "Filter" <$> _dmaFilters)
      ]

-- | /See:/ 'describeMovingAddressesResponse' smart constructor.
data DescribeMovingAddressesResponse = DescribeMovingAddressesResponse'
  { _dmarrsNextToken ::
      !( Maybe
           Text
       ),
    _dmarrsMovingAddressStatuses ::
      !( Maybe
           [MovingAddressStatus]
       ),
    _dmarrsResponseStatus ::
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

-- | Creates a value of 'DescribeMovingAddressesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmarrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dmarrsMovingAddressStatuses' - The status for each Elastic IP address.
--
-- * 'dmarrsResponseStatus' - -- | The response status code.
describeMovingAddressesResponse ::
  -- | 'dmarrsResponseStatus'
  Int ->
  DescribeMovingAddressesResponse
describeMovingAddressesResponse pResponseStatus_ =
  DescribeMovingAddressesResponse'
    { _dmarrsNextToken =
        Nothing,
      _dmarrsMovingAddressStatuses = Nothing,
      _dmarrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dmarrsNextToken :: Lens' DescribeMovingAddressesResponse (Maybe Text)
dmarrsNextToken = lens _dmarrsNextToken (\s a -> s {_dmarrsNextToken = a})

-- | The status for each Elastic IP address.
dmarrsMovingAddressStatuses :: Lens' DescribeMovingAddressesResponse [MovingAddressStatus]
dmarrsMovingAddressStatuses = lens _dmarrsMovingAddressStatuses (\s a -> s {_dmarrsMovingAddressStatuses = a}) . _Default . _Coerce

-- | -- | The response status code.
dmarrsResponseStatus :: Lens' DescribeMovingAddressesResponse Int
dmarrsResponseStatus = lens _dmarrsResponseStatus (\s a -> s {_dmarrsResponseStatus = a})

instance NFData DescribeMovingAddressesResponse
