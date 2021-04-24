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
-- Module      : Network.AWS.EC2.DescribeVPCEndpointServiceConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the VPC endpoint service configurations in your account (your services).
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeVPCEndpointServiceConfigurations
  ( -- * Creating a Request
    describeVPCEndpointServiceConfigurations,
    DescribeVPCEndpointServiceConfigurations,

    -- * Request Lenses
    dvescNextToken,
    dvescDryRun,
    dvescMaxResults,
    dvescServiceIds,
    dvescFilters,

    -- * Destructuring the Response
    describeVPCEndpointServiceConfigurationsResponse,
    DescribeVPCEndpointServiceConfigurationsResponse,

    -- * Response Lenses
    dvescrrsNextToken,
    dvescrrsServiceConfigurations,
    dvescrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeVPCEndpointServiceConfigurations' smart constructor.
data DescribeVPCEndpointServiceConfigurations = DescribeVPCEndpointServiceConfigurations'
  { _dvescNextToken ::
      !( Maybe
           Text
       ),
    _dvescDryRun ::
      !( Maybe
           Bool
       ),
    _dvescMaxResults ::
      !( Maybe
           Int
       ),
    _dvescServiceIds ::
      !( Maybe
           [Text]
       ),
    _dvescFilters ::
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

-- | Creates a value of 'DescribeVPCEndpointServiceConfigurations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvescNextToken' - The token to retrieve the next page of results.
--
-- * 'dvescDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dvescMaxResults' - The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned @NextToken@ value. This value can be between 5 and 1,000; if @MaxResults@ is given a value larger than 1,000, only 1,000 results are returned.
--
-- * 'dvescServiceIds' - The IDs of one or more services.
--
-- * 'dvescFilters' - One or more filters.     * @service-name@ - The name of the service.     * @service-id@ - The ID of the service.     * @service-state@ - The state of the service (@Pending@ | @Available@ | @Deleting@ | @Deleted@ | @Failed@ ).      * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
describeVPCEndpointServiceConfigurations ::
  DescribeVPCEndpointServiceConfigurations
describeVPCEndpointServiceConfigurations =
  DescribeVPCEndpointServiceConfigurations'
    { _dvescNextToken =
        Nothing,
      _dvescDryRun = Nothing,
      _dvescMaxResults = Nothing,
      _dvescServiceIds = Nothing,
      _dvescFilters = Nothing
    }

-- | The token to retrieve the next page of results.
dvescNextToken :: Lens' DescribeVPCEndpointServiceConfigurations (Maybe Text)
dvescNextToken = lens _dvescNextToken (\s a -> s {_dvescNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dvescDryRun :: Lens' DescribeVPCEndpointServiceConfigurations (Maybe Bool)
dvescDryRun = lens _dvescDryRun (\s a -> s {_dvescDryRun = a})

-- | The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned @NextToken@ value. This value can be between 5 and 1,000; if @MaxResults@ is given a value larger than 1,000, only 1,000 results are returned.
dvescMaxResults :: Lens' DescribeVPCEndpointServiceConfigurations (Maybe Int)
dvescMaxResults = lens _dvescMaxResults (\s a -> s {_dvescMaxResults = a})

-- | The IDs of one or more services.
dvescServiceIds :: Lens' DescribeVPCEndpointServiceConfigurations [Text]
dvescServiceIds = lens _dvescServiceIds (\s a -> s {_dvescServiceIds = a}) . _Default . _Coerce

-- | One or more filters.     * @service-name@ - The name of the service.     * @service-id@ - The ID of the service.     * @service-state@ - The state of the service (@Pending@ | @Available@ | @Deleting@ | @Deleted@ | @Failed@ ).      * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
dvescFilters :: Lens' DescribeVPCEndpointServiceConfigurations [Filter]
dvescFilters = lens _dvescFilters (\s a -> s {_dvescFilters = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeVPCEndpointServiceConfigurations
  where
  page rq rs
    | stop (rs ^. dvescrrsNextToken) = Nothing
    | stop (rs ^. dvescrrsServiceConfigurations) =
      Nothing
    | otherwise =
      Just $ rq & dvescNextToken .~ rs ^. dvescrrsNextToken

instance
  AWSRequest
    DescribeVPCEndpointServiceConfigurations
  where
  type
    Rs DescribeVPCEndpointServiceConfigurations =
      DescribeVPCEndpointServiceConfigurationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeVPCEndpointServiceConfigurationsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "serviceConfigurationSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeVPCEndpointServiceConfigurations

instance
  NFData
    DescribeVPCEndpointServiceConfigurations

instance
  ToHeaders
    DescribeVPCEndpointServiceConfigurations
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeVPCEndpointServiceConfigurations
  where
  toPath = const "/"

instance
  ToQuery
    DescribeVPCEndpointServiceConfigurations
  where
  toQuery DescribeVPCEndpointServiceConfigurations' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeVpcEndpointServiceConfigurations" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dvescNextToken,
        "DryRun" =: _dvescDryRun,
        "MaxResults" =: _dvescMaxResults,
        toQuery
          (toQueryList "ServiceId" <$> _dvescServiceIds),
        toQuery (toQueryList "Filter" <$> _dvescFilters)
      ]

-- | /See:/ 'describeVPCEndpointServiceConfigurationsResponse' smart constructor.
data DescribeVPCEndpointServiceConfigurationsResponse = DescribeVPCEndpointServiceConfigurationsResponse'
  { _dvescrrsNextToken ::
      !( Maybe
           Text
       ),
    _dvescrrsServiceConfigurations ::
      !( Maybe
           [ServiceConfiguration]
       ),
    _dvescrrsResponseStatus ::
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

-- | Creates a value of 'DescribeVPCEndpointServiceConfigurationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvescrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dvescrrsServiceConfigurations' - Information about one or more services.
--
-- * 'dvescrrsResponseStatus' - -- | The response status code.
describeVPCEndpointServiceConfigurationsResponse ::
  -- | 'dvescrrsResponseStatus'
  Int ->
  DescribeVPCEndpointServiceConfigurationsResponse
describeVPCEndpointServiceConfigurationsResponse
  pResponseStatus_ =
    DescribeVPCEndpointServiceConfigurationsResponse'
      { _dvescrrsNextToken =
          Nothing,
        _dvescrrsServiceConfigurations =
          Nothing,
        _dvescrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dvescrrsNextToken :: Lens' DescribeVPCEndpointServiceConfigurationsResponse (Maybe Text)
dvescrrsNextToken = lens _dvescrrsNextToken (\s a -> s {_dvescrrsNextToken = a})

-- | Information about one or more services.
dvescrrsServiceConfigurations :: Lens' DescribeVPCEndpointServiceConfigurationsResponse [ServiceConfiguration]
dvescrrsServiceConfigurations = lens _dvescrrsServiceConfigurations (\s a -> s {_dvescrrsServiceConfigurations = a}) . _Default . _Coerce

-- | -- | The response status code.
dvescrrsResponseStatus :: Lens' DescribeVPCEndpointServiceConfigurationsResponse Int
dvescrrsResponseStatus = lens _dvescrrsResponseStatus (\s a -> s {_dvescrrsResponseStatus = a})

instance
  NFData
    DescribeVPCEndpointServiceConfigurationsResponse
