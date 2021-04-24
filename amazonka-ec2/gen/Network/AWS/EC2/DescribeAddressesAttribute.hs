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
-- Module      : Network.AWS.EC2.DescribeAddressesAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the attributes of the specified Elastic IP addresses. For requirements, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS Using reverse DNS for email applications> .
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeAddressesAttribute
  ( -- * Creating a Request
    describeAddressesAttribute,
    DescribeAddressesAttribute,

    -- * Request Lenses
    daaaNextToken,
    daaaDryRun,
    daaaMaxResults,
    daaaAttribute,
    daaaAllocationIds,

    -- * Destructuring the Response
    describeAddressesAttributeResponse,
    DescribeAddressesAttributeResponse,

    -- * Response Lenses
    daararsNextToken,
    daararsAddresses,
    daararsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAddressesAttribute' smart constructor.
data DescribeAddressesAttribute = DescribeAddressesAttribute'
  { _daaaNextToken ::
      !(Maybe Text),
    _daaaDryRun ::
      !(Maybe Bool),
    _daaaMaxResults ::
      !(Maybe Nat),
    _daaaAttribute ::
      !( Maybe
           AddressAttributeName
       ),
    _daaaAllocationIds ::
      !(Maybe [Text])
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAddressesAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daaaNextToken' - The token for the next page of results.
--
-- * 'daaaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'daaaMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'daaaAttribute' - The attribute of the IP address.
--
-- * 'daaaAllocationIds' - [EC2-VPC] The allocation IDs.
describeAddressesAttribute ::
  DescribeAddressesAttribute
describeAddressesAttribute =
  DescribeAddressesAttribute'
    { _daaaNextToken =
        Nothing,
      _daaaDryRun = Nothing,
      _daaaMaxResults = Nothing,
      _daaaAttribute = Nothing,
      _daaaAllocationIds = Nothing
    }

-- | The token for the next page of results.
daaaNextToken :: Lens' DescribeAddressesAttribute (Maybe Text)
daaaNextToken = lens _daaaNextToken (\s a -> s {_daaaNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
daaaDryRun :: Lens' DescribeAddressesAttribute (Maybe Bool)
daaaDryRun = lens _daaaDryRun (\s a -> s {_daaaDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
daaaMaxResults :: Lens' DescribeAddressesAttribute (Maybe Natural)
daaaMaxResults = lens _daaaMaxResults (\s a -> s {_daaaMaxResults = a}) . mapping _Nat

-- | The attribute of the IP address.
daaaAttribute :: Lens' DescribeAddressesAttribute (Maybe AddressAttributeName)
daaaAttribute = lens _daaaAttribute (\s a -> s {_daaaAttribute = a})

-- | [EC2-VPC] The allocation IDs.
daaaAllocationIds :: Lens' DescribeAddressesAttribute [Text]
daaaAllocationIds = lens _daaaAllocationIds (\s a -> s {_daaaAllocationIds = a}) . _Default . _Coerce

instance AWSPager DescribeAddressesAttribute where
  page rq rs
    | stop (rs ^. daararsNextToken) = Nothing
    | stop (rs ^. daararsAddresses) = Nothing
    | otherwise =
      Just $ rq & daaaNextToken .~ rs ^. daararsNextToken

instance AWSRequest DescribeAddressesAttribute where
  type
    Rs DescribeAddressesAttribute =
      DescribeAddressesAttributeResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeAddressesAttributeResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "addressSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAddressesAttribute

instance NFData DescribeAddressesAttribute

instance ToHeaders DescribeAddressesAttribute where
  toHeaders = const mempty

instance ToPath DescribeAddressesAttribute where
  toPath = const "/"

instance ToQuery DescribeAddressesAttribute where
  toQuery DescribeAddressesAttribute' {..} =
    mconcat
      [ "Action"
          =: ("DescribeAddressesAttribute" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _daaaNextToken,
        "DryRun" =: _daaaDryRun,
        "MaxResults" =: _daaaMaxResults,
        "Attribute" =: _daaaAttribute,
        toQuery
          (toQueryList "AllocationId" <$> _daaaAllocationIds)
      ]

-- | /See:/ 'describeAddressesAttributeResponse' smart constructor.
data DescribeAddressesAttributeResponse = DescribeAddressesAttributeResponse'
  { _daararsNextToken ::
      !( Maybe
           Text
       ),
    _daararsAddresses ::
      !( Maybe
           [AddressAttribute]
       ),
    _daararsResponseStatus ::
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

-- | Creates a value of 'DescribeAddressesAttributeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daararsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'daararsAddresses' - Information about the IP addresses.
--
-- * 'daararsResponseStatus' - -- | The response status code.
describeAddressesAttributeResponse ::
  -- | 'daararsResponseStatus'
  Int ->
  DescribeAddressesAttributeResponse
describeAddressesAttributeResponse pResponseStatus_ =
  DescribeAddressesAttributeResponse'
    { _daararsNextToken =
        Nothing,
      _daararsAddresses = Nothing,
      _daararsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
daararsNextToken :: Lens' DescribeAddressesAttributeResponse (Maybe Text)
daararsNextToken = lens _daararsNextToken (\s a -> s {_daararsNextToken = a})

-- | Information about the IP addresses.
daararsAddresses :: Lens' DescribeAddressesAttributeResponse [AddressAttribute]
daararsAddresses = lens _daararsAddresses (\s a -> s {_daararsAddresses = a}) . _Default . _Coerce

-- | -- | The response status code.
daararsResponseStatus :: Lens' DescribeAddressesAttributeResponse Int
daararsResponseStatus = lens _daararsResponseStatus (\s a -> s {_daararsResponseStatus = a})

instance NFData DescribeAddressesAttributeResponse
