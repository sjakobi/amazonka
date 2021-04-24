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
-- Module      : Network.AWS.EC2.DescribeTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified tags for your EC2 resources.
--
--
-- For more information about tags, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html Tagging Your Resources> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTags
  ( -- * Creating a Request
    describeTags,
    DescribeTags,

    -- * Request Lenses
    dtNextToken,
    dtDryRun,
    dtMaxResults,
    dtFilters,

    -- * Destructuring the Response
    describeTagsResponse,
    DescribeTagsResponse,

    -- * Response Lenses
    dtrrsNextToken,
    dtrrsTags,
    dtrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTags' smart constructor.
data DescribeTags = DescribeTags'
  { _dtNextToken ::
      !(Maybe Text),
    _dtDryRun :: !(Maybe Bool),
    _dtMaxResults :: !(Maybe Int),
    _dtFilters :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtNextToken' - The token to retrieve the next page of results.
--
-- * 'dtDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtMaxResults' - The maximum number of results to return in a single call. This value can be between 5 and 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
--
-- * 'dtFilters' - The filters.     * @key@ - The tag key.     * @resource-id@ - The ID of the resource.     * @resource-type@ - The resource type (@customer-gateway@ | @dedicated-host@ | @dhcp-options@ | @elastic-ip@ | @fleet@ | @fpga-image@ | @host-reservation@ | @image@ | @instance@ | @internet-gateway@ | @key-pair@ | @launch-template@ | @natgateway@ | @network-acl@ | @network-interface@ | @placement-group@ | @reserved-instances@ | @route-table@ | @security-group@ | @snapshot@ | @spot-instances-request@ | @subnet@ | @volume@ | @vpc@ | @vpc-endpoint@ | @vpc-endpoint-service@ | @vpc-peering-connection@ | @vpn-connection@ | @vpn-gateway@ ).     * @tag@ :<key> - The key/value combination of the tag. For example, specify "tag:Owner" for the filter name and "TeamA" for the filter value to find resources with the tag "Owner=TeamA".     * @value@ - The tag value.
describeTags ::
  DescribeTags
describeTags =
  DescribeTags'
    { _dtNextToken = Nothing,
      _dtDryRun = Nothing,
      _dtMaxResults = Nothing,
      _dtFilters = Nothing
    }

-- | The token to retrieve the next page of results.
dtNextToken :: Lens' DescribeTags (Maybe Text)
dtNextToken = lens _dtNextToken (\s a -> s {_dtNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtDryRun :: Lens' DescribeTags (Maybe Bool)
dtDryRun = lens _dtDryRun (\s a -> s {_dtDryRun = a})

-- | The maximum number of results to return in a single call. This value can be between 5 and 1000. To retrieve the remaining results, make another call with the returned @NextToken@ value.
dtMaxResults :: Lens' DescribeTags (Maybe Int)
dtMaxResults = lens _dtMaxResults (\s a -> s {_dtMaxResults = a})

-- | The filters.     * @key@ - The tag key.     * @resource-id@ - The ID of the resource.     * @resource-type@ - The resource type (@customer-gateway@ | @dedicated-host@ | @dhcp-options@ | @elastic-ip@ | @fleet@ | @fpga-image@ | @host-reservation@ | @image@ | @instance@ | @internet-gateway@ | @key-pair@ | @launch-template@ | @natgateway@ | @network-acl@ | @network-interface@ | @placement-group@ | @reserved-instances@ | @route-table@ | @security-group@ | @snapshot@ | @spot-instances-request@ | @subnet@ | @volume@ | @vpc@ | @vpc-endpoint@ | @vpc-endpoint-service@ | @vpc-peering-connection@ | @vpn-connection@ | @vpn-gateway@ ).     * @tag@ :<key> - The key/value combination of the tag. For example, specify "tag:Owner" for the filter name and "TeamA" for the filter value to find resources with the tag "Owner=TeamA".     * @value@ - The tag value.
dtFilters :: Lens' DescribeTags [Filter]
dtFilters = lens _dtFilters (\s a -> s {_dtFilters = a}) . _Default . _Coerce

instance AWSPager DescribeTags where
  page rq rs
    | stop (rs ^. dtrrsNextToken) = Nothing
    | stop (rs ^. dtrrsTags) = Nothing
    | otherwise =
      Just $ rq & dtNextToken .~ rs ^. dtrrsNextToken

instance AWSRequest DescribeTags where
  type Rs DescribeTags = DescribeTagsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTagsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "tagSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTags

instance NFData DescribeTags

instance ToHeaders DescribeTags where
  toHeaders = const mempty

instance ToPath DescribeTags where
  toPath = const "/"

instance ToQuery DescribeTags where
  toQuery DescribeTags' {..} =
    mconcat
      [ "Action" =: ("DescribeTags" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtNextToken,
        "DryRun" =: _dtDryRun,
        "MaxResults" =: _dtMaxResults,
        toQuery (toQueryList "Filter" <$> _dtFilters)
      ]

-- | /See:/ 'describeTagsResponse' smart constructor.
data DescribeTagsResponse = DescribeTagsResponse'
  { _dtrrsNextToken ::
      !(Maybe Text),
    _dtrrsTags ::
      !(Maybe [TagDescription]),
    _dtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dtrrsTags' - The tags.
--
-- * 'dtrrsResponseStatus' - -- | The response status code.
describeTagsResponse ::
  -- | 'dtrrsResponseStatus'
  Int ->
  DescribeTagsResponse
describeTagsResponse pResponseStatus_ =
  DescribeTagsResponse'
    { _dtrrsNextToken = Nothing,
      _dtrrsTags = Nothing,
      _dtrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dtrrsNextToken :: Lens' DescribeTagsResponse (Maybe Text)
dtrrsNextToken = lens _dtrrsNextToken (\s a -> s {_dtrrsNextToken = a})

-- | The tags.
dtrrsTags :: Lens' DescribeTagsResponse [TagDescription]
dtrrsTags = lens _dtrrsTags (\s a -> s {_dtrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
dtrrsResponseStatus :: Lens' DescribeTagsResponse Int
dtrrsResponseStatus = lens _dtrrsResponseStatus (\s a -> s {_dtrrsResponseStatus = a})

instance NFData DescribeTagsResponse
