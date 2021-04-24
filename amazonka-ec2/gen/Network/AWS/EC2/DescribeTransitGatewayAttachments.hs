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
-- Module      : Network.AWS.EC2.DescribeTransitGatewayAttachments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more attachments between resources and transit gateways. By default, all attachments are described. Alternatively, you can filter the results by attachment ID, attachment state, resource ID, or resource owner.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGatewayAttachments
  ( -- * Creating a Request
    describeTransitGatewayAttachments,
    DescribeTransitGatewayAttachments,

    -- * Request Lenses
    dtgaNextToken,
    dtgaDryRun,
    dtgaMaxResults,
    dtgaTransitGatewayAttachmentIds,
    dtgaFilters,

    -- * Destructuring the Response
    describeTransitGatewayAttachmentsResponse,
    DescribeTransitGatewayAttachmentsResponse,

    -- * Response Lenses
    dtgarrsNextToken,
    dtgarrsTransitGatewayAttachments,
    dtgarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTransitGatewayAttachments' smart constructor.
data DescribeTransitGatewayAttachments = DescribeTransitGatewayAttachments'
  { _dtgaNextToken ::
      !( Maybe
           Text
       ),
    _dtgaDryRun ::
      !( Maybe
           Bool
       ),
    _dtgaMaxResults ::
      !( Maybe
           Nat
       ),
    _dtgaTransitGatewayAttachmentIds ::
      !( Maybe
           [Text]
       ),
    _dtgaFilters ::
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

-- | Creates a value of 'DescribeTransitGatewayAttachments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgaNextToken' - The token for the next page of results.
--
-- * 'dtgaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgaMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtgaTransitGatewayAttachmentIds' - The IDs of the attachments.
--
-- * 'dtgaFilters' - One or more filters. The possible values are:     * @association.state@ - The state of the association (@associating@ | @associated@ | @disassociating@ ).     * @association.transit-gateway-route-table-id@ - The ID of the route table for the transit gateway.     * @resource-id@ - The ID of the resource.     * @resource-owner-id@ - The ID of the AWS account that owns the resource.     * @resource-type@ - The resource type. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ | @connect@ .     * @state@ - The state of the attachment. Valid values are @available@ | @deleted@ | @deleting@ | @failed@ | @failing@ | @initiatingRequest@ | @modifying@ | @pendingAcceptance@ | @pending@ | @rollingBack@ | @rejected@ | @rejecting@ .     * @transit-gateway-attachment-id@ - The ID of the attachment.     * @transit-gateway-id@ - The ID of the transit gateway.     * @transit-gateway-owner-id@ - The ID of the AWS account that owns the transit gateway.
describeTransitGatewayAttachments ::
  DescribeTransitGatewayAttachments
describeTransitGatewayAttachments =
  DescribeTransitGatewayAttachments'
    { _dtgaNextToken =
        Nothing,
      _dtgaDryRun = Nothing,
      _dtgaMaxResults = Nothing,
      _dtgaTransitGatewayAttachmentIds =
        Nothing,
      _dtgaFilters = Nothing
    }

-- | The token for the next page of results.
dtgaNextToken :: Lens' DescribeTransitGatewayAttachments (Maybe Text)
dtgaNextToken = lens _dtgaNextToken (\s a -> s {_dtgaNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgaDryRun :: Lens' DescribeTransitGatewayAttachments (Maybe Bool)
dtgaDryRun = lens _dtgaDryRun (\s a -> s {_dtgaDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtgaMaxResults :: Lens' DescribeTransitGatewayAttachments (Maybe Natural)
dtgaMaxResults = lens _dtgaMaxResults (\s a -> s {_dtgaMaxResults = a}) . mapping _Nat

-- | The IDs of the attachments.
dtgaTransitGatewayAttachmentIds :: Lens' DescribeTransitGatewayAttachments [Text]
dtgaTransitGatewayAttachmentIds = lens _dtgaTransitGatewayAttachmentIds (\s a -> s {_dtgaTransitGatewayAttachmentIds = a}) . _Default . _Coerce

-- | One or more filters. The possible values are:     * @association.state@ - The state of the association (@associating@ | @associated@ | @disassociating@ ).     * @association.transit-gateway-route-table-id@ - The ID of the route table for the transit gateway.     * @resource-id@ - The ID of the resource.     * @resource-owner-id@ - The ID of the AWS account that owns the resource.     * @resource-type@ - The resource type. Valid values are @vpc@ | @vpn@ | @direct-connect-gateway@ | @peering@ | @connect@ .     * @state@ - The state of the attachment. Valid values are @available@ | @deleted@ | @deleting@ | @failed@ | @failing@ | @initiatingRequest@ | @modifying@ | @pendingAcceptance@ | @pending@ | @rollingBack@ | @rejected@ | @rejecting@ .     * @transit-gateway-attachment-id@ - The ID of the attachment.     * @transit-gateway-id@ - The ID of the transit gateway.     * @transit-gateway-owner-id@ - The ID of the AWS account that owns the transit gateway.
dtgaFilters :: Lens' DescribeTransitGatewayAttachments [Filter]
dtgaFilters = lens _dtgaFilters (\s a -> s {_dtgaFilters = a}) . _Default . _Coerce

instance AWSPager DescribeTransitGatewayAttachments where
  page rq rs
    | stop (rs ^. dtgarrsNextToken) = Nothing
    | stop (rs ^. dtgarrsTransitGatewayAttachments) =
      Nothing
    | otherwise =
      Just $ rq & dtgaNextToken .~ rs ^. dtgarrsNextToken

instance AWSRequest DescribeTransitGatewayAttachments where
  type
    Rs DescribeTransitGatewayAttachments =
      DescribeTransitGatewayAttachmentsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTransitGatewayAttachmentsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewayAttachments" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeTransitGatewayAttachments

instance NFData DescribeTransitGatewayAttachments

instance ToHeaders DescribeTransitGatewayAttachments where
  toHeaders = const mempty

instance ToPath DescribeTransitGatewayAttachments where
  toPath = const "/"

instance ToQuery DescribeTransitGatewayAttachments where
  toQuery DescribeTransitGatewayAttachments' {..} =
    mconcat
      [ "Action"
          =: ("DescribeTransitGatewayAttachments" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtgaNextToken,
        "DryRun" =: _dtgaDryRun,
        "MaxResults" =: _dtgaMaxResults,
        toQuery
          ( toQueryList "TransitGatewayAttachmentIds"
              <$> _dtgaTransitGatewayAttachmentIds
          ),
        toQuery (toQueryList "Filter" <$> _dtgaFilters)
      ]

-- | /See:/ 'describeTransitGatewayAttachmentsResponse' smart constructor.
data DescribeTransitGatewayAttachmentsResponse = DescribeTransitGatewayAttachmentsResponse'
  { _dtgarrsNextToken ::
      !( Maybe
           Text
       ),
    _dtgarrsTransitGatewayAttachments ::
      !( Maybe
           [TransitGatewayAttachment]
       ),
    _dtgarrsResponseStatus ::
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

-- | Creates a value of 'DescribeTransitGatewayAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgarrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dtgarrsTransitGatewayAttachments' - Information about the attachments.
--
-- * 'dtgarrsResponseStatus' - -- | The response status code.
describeTransitGatewayAttachmentsResponse ::
  -- | 'dtgarrsResponseStatus'
  Int ->
  DescribeTransitGatewayAttachmentsResponse
describeTransitGatewayAttachmentsResponse
  pResponseStatus_ =
    DescribeTransitGatewayAttachmentsResponse'
      { _dtgarrsNextToken =
          Nothing,
        _dtgarrsTransitGatewayAttachments =
          Nothing,
        _dtgarrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dtgarrsNextToken :: Lens' DescribeTransitGatewayAttachmentsResponse (Maybe Text)
dtgarrsNextToken = lens _dtgarrsNextToken (\s a -> s {_dtgarrsNextToken = a})

-- | Information about the attachments.
dtgarrsTransitGatewayAttachments :: Lens' DescribeTransitGatewayAttachmentsResponse [TransitGatewayAttachment]
dtgarrsTransitGatewayAttachments = lens _dtgarrsTransitGatewayAttachments (\s a -> s {_dtgarrsTransitGatewayAttachments = a}) . _Default . _Coerce

-- | -- | The response status code.
dtgarrsResponseStatus :: Lens' DescribeTransitGatewayAttachmentsResponse Int
dtgarrsResponseStatus = lens _dtgarrsResponseStatus (\s a -> s {_dtgarrsResponseStatus = a})

instance
  NFData
    DescribeTransitGatewayAttachmentsResponse
