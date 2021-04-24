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
-- Module      : Network.AWS.EC2.DescribeClientVPNConnections
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes active client connections and connections that have been terminated within the last 60 minutes for the specified Client VPN endpoint.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeClientVPNConnections
  ( -- * Creating a Request
    describeClientVPNConnections,
    DescribeClientVPNConnections,

    -- * Request Lenses
    dcvcNextToken,
    dcvcDryRun,
    dcvcMaxResults,
    dcvcFilters,
    dcvcClientVPNEndpointId,

    -- * Destructuring the Response
    describeClientVPNConnectionsResponse,
    DescribeClientVPNConnectionsResponse,

    -- * Response Lenses
    dcvcrrsNextToken,
    dcvcrrsConnections,
    dcvcrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeClientVPNConnections' smart constructor.
data DescribeClientVPNConnections = DescribeClientVPNConnections'
  { _dcvcNextToken ::
      !(Maybe Text),
    _dcvcDryRun ::
      !(Maybe Bool),
    _dcvcMaxResults ::
      !(Maybe Nat),
    _dcvcFilters ::
      !( Maybe
           [Filter]
       ),
    _dcvcClientVPNEndpointId ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeClientVPNConnections' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvcNextToken' - The token to retrieve the next page of results.
--
-- * 'dcvcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dcvcMaxResults' - The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
--
-- * 'dcvcFilters' - One or more filters. Filter names and values are case-sensitive.     * @connection-id@ - The ID of the connection.     * @username@ - For Active Directory client authentication, the user name of the client who established the client connection.
--
-- * 'dcvcClientVPNEndpointId' - The ID of the Client VPN endpoint.
describeClientVPNConnections ::
  -- | 'dcvcClientVPNEndpointId'
  Text ->
  DescribeClientVPNConnections
describeClientVPNConnections pClientVPNEndpointId_ =
  DescribeClientVPNConnections'
    { _dcvcNextToken =
        Nothing,
      _dcvcDryRun = Nothing,
      _dcvcMaxResults = Nothing,
      _dcvcFilters = Nothing,
      _dcvcClientVPNEndpointId =
        pClientVPNEndpointId_
    }

-- | The token to retrieve the next page of results.
dcvcNextToken :: Lens' DescribeClientVPNConnections (Maybe Text)
dcvcNextToken = lens _dcvcNextToken (\s a -> s {_dcvcNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dcvcDryRun :: Lens' DescribeClientVPNConnections (Maybe Bool)
dcvcDryRun = lens _dcvcDryRun (\s a -> s {_dcvcDryRun = a})

-- | The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the nextToken value.
dcvcMaxResults :: Lens' DescribeClientVPNConnections (Maybe Natural)
dcvcMaxResults = lens _dcvcMaxResults (\s a -> s {_dcvcMaxResults = a}) . mapping _Nat

-- | One or more filters. Filter names and values are case-sensitive.     * @connection-id@ - The ID of the connection.     * @username@ - For Active Directory client authentication, the user name of the client who established the client connection.
dcvcFilters :: Lens' DescribeClientVPNConnections [Filter]
dcvcFilters = lens _dcvcFilters (\s a -> s {_dcvcFilters = a}) . _Default . _Coerce

-- | The ID of the Client VPN endpoint.
dcvcClientVPNEndpointId :: Lens' DescribeClientVPNConnections Text
dcvcClientVPNEndpointId = lens _dcvcClientVPNEndpointId (\s a -> s {_dcvcClientVPNEndpointId = a})

instance AWSPager DescribeClientVPNConnections where
  page rq rs
    | stop (rs ^. dcvcrrsNextToken) = Nothing
    | stop (rs ^. dcvcrrsConnections) = Nothing
    | otherwise =
      Just $ rq & dcvcNextToken .~ rs ^. dcvcrrsNextToken

instance AWSRequest DescribeClientVPNConnections where
  type
    Rs DescribeClientVPNConnections =
      DescribeClientVPNConnectionsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeClientVPNConnectionsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "connections" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeClientVPNConnections

instance NFData DescribeClientVPNConnections

instance ToHeaders DescribeClientVPNConnections where
  toHeaders = const mempty

instance ToPath DescribeClientVPNConnections where
  toPath = const "/"

instance ToQuery DescribeClientVPNConnections where
  toQuery DescribeClientVPNConnections' {..} =
    mconcat
      [ "Action"
          =: ("DescribeClientVpnConnections" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dcvcNextToken,
        "DryRun" =: _dcvcDryRun,
        "MaxResults" =: _dcvcMaxResults,
        toQuery (toQueryList "Filter" <$> _dcvcFilters),
        "ClientVpnEndpointId" =: _dcvcClientVPNEndpointId
      ]

-- | /See:/ 'describeClientVPNConnectionsResponse' smart constructor.
data DescribeClientVPNConnectionsResponse = DescribeClientVPNConnectionsResponse'
  { _dcvcrrsNextToken ::
      !( Maybe
           Text
       ),
    _dcvcrrsConnections ::
      !( Maybe
           [ClientVPNConnection]
       ),
    _dcvcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeClientVPNConnectionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcvcrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dcvcrrsConnections' - Information about the active and terminated client connections.
--
-- * 'dcvcrrsResponseStatus' - -- | The response status code.
describeClientVPNConnectionsResponse ::
  -- | 'dcvcrrsResponseStatus'
  Int ->
  DescribeClientVPNConnectionsResponse
describeClientVPNConnectionsResponse pResponseStatus_ =
  DescribeClientVPNConnectionsResponse'
    { _dcvcrrsNextToken =
        Nothing,
      _dcvcrrsConnections = Nothing,
      _dcvcrrsResponseStatus =
        pResponseStatus_
    }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dcvcrrsNextToken :: Lens' DescribeClientVPNConnectionsResponse (Maybe Text)
dcvcrrsNextToken = lens _dcvcrrsNextToken (\s a -> s {_dcvcrrsNextToken = a})

-- | Information about the active and terminated client connections.
dcvcrrsConnections :: Lens' DescribeClientVPNConnectionsResponse [ClientVPNConnection]
dcvcrrsConnections = lens _dcvcrrsConnections (\s a -> s {_dcvcrrsConnections = a}) . _Default . _Coerce

-- | -- | The response status code.
dcvcrrsResponseStatus :: Lens' DescribeClientVPNConnectionsResponse Int
dcvcrrsResponseStatus = lens _dcvcrrsResponseStatus (\s a -> s {_dcvcrrsResponseStatus = a})

instance NFData DescribeClientVPNConnectionsResponse
