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
-- Module      : Network.AWS.EC2.DescribeHosts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified Dedicated Hosts or all your Dedicated Hosts.
--
--
-- The results describe only the Dedicated Hosts in the Region you're currently using. All listed instances consume capacity on your Dedicated Host. Dedicated Hosts that have recently been released are listed with the state @released@ .
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeHosts
  ( -- * Creating a Request
    describeHosts,
    DescribeHosts,

    -- * Request Lenses
    dhNextToken,
    dhMaxResults,
    dhHostIds,
    dhFilter,

    -- * Destructuring the Response
    describeHostsResponse,
    DescribeHostsResponse,

    -- * Response Lenses
    dhrrsNextToken,
    dhrrsHosts,
    dhrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeHosts' smart constructor.
data DescribeHosts = DescribeHosts'
  { _dhNextToken ::
      !(Maybe Text),
    _dhMaxResults :: !(Maybe Int),
    _dhHostIds :: !(Maybe [Text]),
    _dhFilter :: !(Maybe [Filter])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeHosts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhNextToken' - The token to use to retrieve the next page of results.
--
-- * 'dhMaxResults' - The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error. You cannot specify this parameter and the host IDs parameter in the same request.
--
-- * 'dhHostIds' - The IDs of the Dedicated Hosts. The IDs are used for targeted instance launches.
--
-- * 'dhFilter' - The filters.     * @auto-placement@ - Whether auto-placement is enabled or disabled (@on@ | @off@ ).     * @availability-zone@ - The Availability Zone of the host.     * @client-token@ - The idempotency token that you provided when you allocated the host.     * @host-reservation-id@ - The ID of the reservation assigned to this host.     * @instance-type@ - The instance type size that the Dedicated Host is configured to support.     * @state@ - The allocation state of the Dedicated Host (@available@ | @under-assessment@ | @permanent-failure@ | @released@ | @released-permanent-failure@ ).     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeHosts ::
  DescribeHosts
describeHosts =
  DescribeHosts'
    { _dhNextToken = Nothing,
      _dhMaxResults = Nothing,
      _dhHostIds = Nothing,
      _dhFilter = Nothing
    }

-- | The token to use to retrieve the next page of results.
dhNextToken :: Lens' DescribeHosts (Maybe Text)
dhNextToken = lens _dhNextToken (\s a -> s {_dhNextToken = a})

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned @nextToken@ value. This value can be between 5 and 500. If @maxResults@ is given a larger value than 500, you receive an error. You cannot specify this parameter and the host IDs parameter in the same request.
dhMaxResults :: Lens' DescribeHosts (Maybe Int)
dhMaxResults = lens _dhMaxResults (\s a -> s {_dhMaxResults = a})

-- | The IDs of the Dedicated Hosts. The IDs are used for targeted instance launches.
dhHostIds :: Lens' DescribeHosts [Text]
dhHostIds = lens _dhHostIds (\s a -> s {_dhHostIds = a}) . _Default . _Coerce

-- | The filters.     * @auto-placement@ - Whether auto-placement is enabled or disabled (@on@ | @off@ ).     * @availability-zone@ - The Availability Zone of the host.     * @client-token@ - The idempotency token that you provided when you allocated the host.     * @host-reservation-id@ - The ID of the reservation assigned to this host.     * @instance-type@ - The instance type size that the Dedicated Host is configured to support.     * @state@ - The allocation state of the Dedicated Host (@available@ | @under-assessment@ | @permanent-failure@ | @released@ | @released-permanent-failure@ ).     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dhFilter :: Lens' DescribeHosts [Filter]
dhFilter = lens _dhFilter (\s a -> s {_dhFilter = a}) . _Default . _Coerce

instance AWSPager DescribeHosts where
  page rq rs
    | stop (rs ^. dhrrsNextToken) = Nothing
    | stop (rs ^. dhrrsHosts) = Nothing
    | otherwise =
      Just $ rq & dhNextToken .~ rs ^. dhrrsNextToken

instance AWSRequest DescribeHosts where
  type Rs DescribeHosts = DescribeHostsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeHostsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "hostSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeHosts

instance NFData DescribeHosts

instance ToHeaders DescribeHosts where
  toHeaders = const mempty

instance ToPath DescribeHosts where
  toPath = const "/"

instance ToQuery DescribeHosts where
  toQuery DescribeHosts' {..} =
    mconcat
      [ "Action" =: ("DescribeHosts" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dhNextToken,
        "MaxResults" =: _dhMaxResults,
        toQuery (toQueryList "HostId" <$> _dhHostIds),
        toQuery (toQueryList "Filter" <$> _dhFilter)
      ]

-- | /See:/ 'describeHostsResponse' smart constructor.
data DescribeHostsResponse = DescribeHostsResponse'
  { _dhrrsNextToken ::
      !(Maybe Text),
    _dhrrsHosts ::
      !(Maybe [Host]),
    _dhrrsResponseStatus ::
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

-- | Creates a value of 'DescribeHostsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dhrrsHosts' - Information about the Dedicated Hosts.
--
-- * 'dhrrsResponseStatus' - -- | The response status code.
describeHostsResponse ::
  -- | 'dhrrsResponseStatus'
  Int ->
  DescribeHostsResponse
describeHostsResponse pResponseStatus_ =
  DescribeHostsResponse'
    { _dhrrsNextToken = Nothing,
      _dhrrsHosts = Nothing,
      _dhrrsResponseStatus = pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dhrrsNextToken :: Lens' DescribeHostsResponse (Maybe Text)
dhrrsNextToken = lens _dhrrsNextToken (\s a -> s {_dhrrsNextToken = a})

-- | Information about the Dedicated Hosts.
dhrrsHosts :: Lens' DescribeHostsResponse [Host]
dhrrsHosts = lens _dhrrsHosts (\s a -> s {_dhrrsHosts = a}) . _Default . _Coerce

-- | -- | The response status code.
dhrrsResponseStatus :: Lens' DescribeHostsResponse Int
dhrrsResponseStatus = lens _dhrrsResponseStatus (\s a -> s {_dhrrsResponseStatus = a})

instance NFData DescribeHostsResponse
