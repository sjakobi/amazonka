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
-- Module      : Network.AWS.EC2.DescribeTransitGatewayConnectPeers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more Connect peers.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGatewayConnectPeers
  ( -- * Creating a Request
    describeTransitGatewayConnectPeers,
    DescribeTransitGatewayConnectPeers,

    -- * Request Lenses
    dtgcpNextToken,
    dtgcpDryRun,
    dtgcpMaxResults,
    dtgcpFilters,
    dtgcpTransitGatewayConnectPeerIds,

    -- * Destructuring the Response
    describeTransitGatewayConnectPeersResponse,
    DescribeTransitGatewayConnectPeersResponse,

    -- * Response Lenses
    dtgcprtrsNextToken,
    dtgcprtrsTransitGatewayConnectPeers,
    dtgcprtrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTransitGatewayConnectPeers' smart constructor.
data DescribeTransitGatewayConnectPeers = DescribeTransitGatewayConnectPeers'
  { _dtgcpNextToken ::
      !( Maybe
           Text
       ),
    _dtgcpDryRun ::
      !( Maybe
           Bool
       ),
    _dtgcpMaxResults ::
      !( Maybe
           Nat
       ),
    _dtgcpFilters ::
      !( Maybe
           [Filter]
       ),
    _dtgcpTransitGatewayConnectPeerIds ::
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

-- | Creates a value of 'DescribeTransitGatewayConnectPeers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgcpNextToken' - The token for the next page of results.
--
-- * 'dtgcpDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgcpMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtgcpFilters' - One or more filters. The possible values are:     * @state@ - The state of the Connect peer (@pending@ | @available@ | @deleting@ | @deleted@ ).     * @transit-gateway-attachment-id@ - The ID of the attachment.     * @transit-gateway-connect-peer-id@ - The ID of the Connect peer.
--
-- * 'dtgcpTransitGatewayConnectPeerIds' - The IDs of the Connect peers.
describeTransitGatewayConnectPeers ::
  DescribeTransitGatewayConnectPeers
describeTransitGatewayConnectPeers =
  DescribeTransitGatewayConnectPeers'
    { _dtgcpNextToken =
        Nothing,
      _dtgcpDryRun = Nothing,
      _dtgcpMaxResults = Nothing,
      _dtgcpFilters = Nothing,
      _dtgcpTransitGatewayConnectPeerIds =
        Nothing
    }

-- | The token for the next page of results.
dtgcpNextToken :: Lens' DescribeTransitGatewayConnectPeers (Maybe Text)
dtgcpNextToken = lens _dtgcpNextToken (\s a -> s {_dtgcpNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgcpDryRun :: Lens' DescribeTransitGatewayConnectPeers (Maybe Bool)
dtgcpDryRun = lens _dtgcpDryRun (\s a -> s {_dtgcpDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtgcpMaxResults :: Lens' DescribeTransitGatewayConnectPeers (Maybe Natural)
dtgcpMaxResults = lens _dtgcpMaxResults (\s a -> s {_dtgcpMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @state@ - The state of the Connect peer (@pending@ | @available@ | @deleting@ | @deleted@ ).     * @transit-gateway-attachment-id@ - The ID of the attachment.     * @transit-gateway-connect-peer-id@ - The ID of the Connect peer.
dtgcpFilters :: Lens' DescribeTransitGatewayConnectPeers [Filter]
dtgcpFilters = lens _dtgcpFilters (\s a -> s {_dtgcpFilters = a}) . _Default . _Coerce

-- | The IDs of the Connect peers.
dtgcpTransitGatewayConnectPeerIds :: Lens' DescribeTransitGatewayConnectPeers [Text]
dtgcpTransitGatewayConnectPeerIds = lens _dtgcpTransitGatewayConnectPeerIds (\s a -> s {_dtgcpTransitGatewayConnectPeerIds = a}) . _Default . _Coerce

instance AWSPager DescribeTransitGatewayConnectPeers where
  page rq rs
    | stop (rs ^. dtgcprtrsNextToken) = Nothing
    | stop (rs ^. dtgcprtrsTransitGatewayConnectPeers) =
      Nothing
    | otherwise =
      Just $
        rq
          & dtgcpNextToken .~ rs ^. dtgcprtrsNextToken

instance
  AWSRequest
    DescribeTransitGatewayConnectPeers
  where
  type
    Rs DescribeTransitGatewayConnectPeers =
      DescribeTransitGatewayConnectPeersResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTransitGatewayConnectPeersResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewayConnectPeerSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTransitGatewayConnectPeers

instance NFData DescribeTransitGatewayConnectPeers

instance ToHeaders DescribeTransitGatewayConnectPeers where
  toHeaders = const mempty

instance ToPath DescribeTransitGatewayConnectPeers where
  toPath = const "/"

instance ToQuery DescribeTransitGatewayConnectPeers where
  toQuery DescribeTransitGatewayConnectPeers' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTransitGatewayConnectPeers" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtgcpNextToken,
        "DryRun" =: _dtgcpDryRun,
        "MaxResults" =: _dtgcpMaxResults,
        toQuery (toQueryList "Filter" <$> _dtgcpFilters),
        toQuery
          ( toQueryList "TransitGatewayConnectPeerIds"
              <$> _dtgcpTransitGatewayConnectPeerIds
          )
      ]

-- | /See:/ 'describeTransitGatewayConnectPeersResponse' smart constructor.
data DescribeTransitGatewayConnectPeersResponse = DescribeTransitGatewayConnectPeersResponse'
  { _dtgcprtrsNextToken ::
      !( Maybe
           Text
       ),
    _dtgcprtrsTransitGatewayConnectPeers ::
      !( Maybe
           [TransitGatewayConnectPeer]
       ),
    _dtgcprtrsResponseStatus ::
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

-- | Creates a value of 'DescribeTransitGatewayConnectPeersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgcprtrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dtgcprtrsTransitGatewayConnectPeers' - Information about the Connect peers.
--
-- * 'dtgcprtrsResponseStatus' - -- | The response status code.
describeTransitGatewayConnectPeersResponse ::
  -- | 'dtgcprtrsResponseStatus'
  Int ->
  DescribeTransitGatewayConnectPeersResponse
describeTransitGatewayConnectPeersResponse
  pResponseStatus_ =
    DescribeTransitGatewayConnectPeersResponse'
      { _dtgcprtrsNextToken =
          Nothing,
        _dtgcprtrsTransitGatewayConnectPeers =
          Nothing,
        _dtgcprtrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dtgcprtrsNextToken :: Lens' DescribeTransitGatewayConnectPeersResponse (Maybe Text)
dtgcprtrsNextToken = lens _dtgcprtrsNextToken (\s a -> s {_dtgcprtrsNextToken = a})

-- | Information about the Connect peers.
dtgcprtrsTransitGatewayConnectPeers :: Lens' DescribeTransitGatewayConnectPeersResponse [TransitGatewayConnectPeer]
dtgcprtrsTransitGatewayConnectPeers = lens _dtgcprtrsTransitGatewayConnectPeers (\s a -> s {_dtgcprtrsTransitGatewayConnectPeers = a}) . _Default . _Coerce

-- | -- | The response status code.
dtgcprtrsResponseStatus :: Lens' DescribeTransitGatewayConnectPeersResponse Int
dtgcprtrsResponseStatus = lens _dtgcprtrsResponseStatus (\s a -> s {_dtgcprtrsResponseStatus = a})

instance
  NFData
    DescribeTransitGatewayConnectPeersResponse
