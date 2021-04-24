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
-- Module      : Network.AWS.EC2.DescribeTransitGatewayConnects
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more Connect attachments.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGatewayConnects
  ( -- * Creating a Request
    describeTransitGatewayConnects,
    DescribeTransitGatewayConnects,

    -- * Request Lenses
    dtgcNextToken,
    dtgcDryRun,
    dtgcMaxResults,
    dtgcTransitGatewayAttachmentIds,
    dtgcFilters,

    -- * Destructuring the Response
    describeTransitGatewayConnectsResponse,
    DescribeTransitGatewayConnectsResponse,

    -- * Response Lenses
    dtgcrrsNextToken,
    dtgcrrsTransitGatewayConnects,
    dtgcrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTransitGatewayConnects' smart constructor.
data DescribeTransitGatewayConnects = DescribeTransitGatewayConnects'
  { _dtgcNextToken ::
      !( Maybe
           Text
       ),
    _dtgcDryRun ::
      !( Maybe
           Bool
       ),
    _dtgcMaxResults ::
      !( Maybe
           Nat
       ),
    _dtgcTransitGatewayAttachmentIds ::
      !( Maybe
           [Text]
       ),
    _dtgcFilters ::
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

-- | Creates a value of 'DescribeTransitGatewayConnects' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgcNextToken' - The token for the next page of results.
--
-- * 'dtgcDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgcMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtgcTransitGatewayAttachmentIds' - The IDs of the attachments.
--
-- * 'dtgcFilters' - One or more filters. The possible values are:     * @options.protocol@ - The tunnel protocol (@gre@ ).     * @state@ - The state of the attachment (@initiating@ | @initiatingRequest@ | @pendingAcceptance@ | @rollingBack@ | @pending@ | @available@ | @modifying@ | @deleting@ | @deleted@ | @failed@ | @rejected@ | @rejecting@ | @failing@ ).     * @transit-gateway-attachment-id@ - The ID of the Connect attachment.     * @transit-gateway-id@ - The ID of the transit gateway.     * @transport-transit-gateway-attachment-id@ - The ID of the transit gateway attachment from which the Connect attachment was created.
describeTransitGatewayConnects ::
  DescribeTransitGatewayConnects
describeTransitGatewayConnects =
  DescribeTransitGatewayConnects'
    { _dtgcNextToken =
        Nothing,
      _dtgcDryRun = Nothing,
      _dtgcMaxResults = Nothing,
      _dtgcTransitGatewayAttachmentIds = Nothing,
      _dtgcFilters = Nothing
    }

-- | The token for the next page of results.
dtgcNextToken :: Lens' DescribeTransitGatewayConnects (Maybe Text)
dtgcNextToken = lens _dtgcNextToken (\s a -> s {_dtgcNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgcDryRun :: Lens' DescribeTransitGatewayConnects (Maybe Bool)
dtgcDryRun = lens _dtgcDryRun (\s a -> s {_dtgcDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtgcMaxResults :: Lens' DescribeTransitGatewayConnects (Maybe Natural)
dtgcMaxResults = lens _dtgcMaxResults (\s a -> s {_dtgcMaxResults = a}) . mapping _Nat

-- | The IDs of the attachments.
dtgcTransitGatewayAttachmentIds :: Lens' DescribeTransitGatewayConnects [Text]
dtgcTransitGatewayAttachmentIds = lens _dtgcTransitGatewayAttachmentIds (\s a -> s {_dtgcTransitGatewayAttachmentIds = a}) . _Default . _Coerce

-- | One or more filters. The possible values are:     * @options.protocol@ - The tunnel protocol (@gre@ ).     * @state@ - The state of the attachment (@initiating@ | @initiatingRequest@ | @pendingAcceptance@ | @rollingBack@ | @pending@ | @available@ | @modifying@ | @deleting@ | @deleted@ | @failed@ | @rejected@ | @rejecting@ | @failing@ ).     * @transit-gateway-attachment-id@ - The ID of the Connect attachment.     * @transit-gateway-id@ - The ID of the transit gateway.     * @transport-transit-gateway-attachment-id@ - The ID of the transit gateway attachment from which the Connect attachment was created.
dtgcFilters :: Lens' DescribeTransitGatewayConnects [Filter]
dtgcFilters = lens _dtgcFilters (\s a -> s {_dtgcFilters = a}) . _Default . _Coerce

instance AWSPager DescribeTransitGatewayConnects where
  page rq rs
    | stop (rs ^. dtgcrrsNextToken) = Nothing
    | stop (rs ^. dtgcrrsTransitGatewayConnects) =
      Nothing
    | otherwise =
      Just $ rq & dtgcNextToken .~ rs ^. dtgcrrsNextToken

instance AWSRequest DescribeTransitGatewayConnects where
  type
    Rs DescribeTransitGatewayConnects =
      DescribeTransitGatewayConnectsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTransitGatewayConnectsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewayConnectSet" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTransitGatewayConnects

instance NFData DescribeTransitGatewayConnects

instance ToHeaders DescribeTransitGatewayConnects where
  toHeaders = const mempty

instance ToPath DescribeTransitGatewayConnects where
  toPath = const "/"

instance ToQuery DescribeTransitGatewayConnects where
  toQuery DescribeTransitGatewayConnects' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTransitGatewayConnects" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtgcNextToken,
        "DryRun" =: _dtgcDryRun,
        "MaxResults" =: _dtgcMaxResults,
        toQuery
          ( toQueryList "TransitGatewayAttachmentIds"
              <$> _dtgcTransitGatewayAttachmentIds
          ),
        toQuery (toQueryList "Filter" <$> _dtgcFilters)
      ]

-- | /See:/ 'describeTransitGatewayConnectsResponse' smart constructor.
data DescribeTransitGatewayConnectsResponse = DescribeTransitGatewayConnectsResponse'
  { _dtgcrrsNextToken ::
      !( Maybe
           Text
       ),
    _dtgcrrsTransitGatewayConnects ::
      !( Maybe
           [TransitGatewayConnect]
       ),
    _dtgcrrsResponseStatus ::
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

-- | Creates a value of 'DescribeTransitGatewayConnectsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgcrrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dtgcrrsTransitGatewayConnects' - Information about the Connect attachments.
--
-- * 'dtgcrrsResponseStatus' - -- | The response status code.
describeTransitGatewayConnectsResponse ::
  -- | 'dtgcrrsResponseStatus'
  Int ->
  DescribeTransitGatewayConnectsResponse
describeTransitGatewayConnectsResponse
  pResponseStatus_ =
    DescribeTransitGatewayConnectsResponse'
      { _dtgcrrsNextToken =
          Nothing,
        _dtgcrrsTransitGatewayConnects =
          Nothing,
        _dtgcrrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dtgcrrsNextToken :: Lens' DescribeTransitGatewayConnectsResponse (Maybe Text)
dtgcrrsNextToken = lens _dtgcrrsNextToken (\s a -> s {_dtgcrrsNextToken = a})

-- | Information about the Connect attachments.
dtgcrrsTransitGatewayConnects :: Lens' DescribeTransitGatewayConnectsResponse [TransitGatewayConnect]
dtgcrrsTransitGatewayConnects = lens _dtgcrrsTransitGatewayConnects (\s a -> s {_dtgcrrsTransitGatewayConnects = a}) . _Default . _Coerce

-- | -- | The response status code.
dtgcrrsResponseStatus :: Lens' DescribeTransitGatewayConnectsResponse Int
dtgcrrsResponseStatus = lens _dtgcrrsResponseStatus (\s a -> s {_dtgcrrsResponseStatus = a})

instance
  NFData
    DescribeTransitGatewayConnectsResponse
