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
-- Module      : Network.AWS.EC2.DescribeTransitGatewayPeeringAttachments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your transit gateway peering attachments.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGatewayPeeringAttachments
  ( -- * Creating a Request
    describeTransitGatewayPeeringAttachments,
    DescribeTransitGatewayPeeringAttachments,

    -- * Request Lenses
    dtgpasNextToken,
    dtgpasDryRun,
    dtgpasMaxResults,
    dtgpasTransitGatewayAttachmentIds,
    dtgpasFilters,

    -- * Destructuring the Response
    describeTransitGatewayPeeringAttachmentsResponse,
    DescribeTransitGatewayPeeringAttachmentsResponse,

    -- * Response Lenses
    dtgpartrsTransitGatewayPeeringAttachments,
    dtgpartrsNextToken,
    dtgpartrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTransitGatewayPeeringAttachments' smart constructor.
data DescribeTransitGatewayPeeringAttachments = DescribeTransitGatewayPeeringAttachments'
  { _dtgpasNextToken ::
      !( Maybe
           Text
       ),
    _dtgpasDryRun ::
      !( Maybe
           Bool
       ),
    _dtgpasMaxResults ::
      !( Maybe
           Nat
       ),
    _dtgpasTransitGatewayAttachmentIds ::
      !( Maybe
           [Text]
       ),
    _dtgpasFilters ::
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

-- | Creates a value of 'DescribeTransitGatewayPeeringAttachments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgpasNextToken' - The token for the next page of results.
--
-- * 'dtgpasDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgpasMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtgpasTransitGatewayAttachmentIds' - One or more IDs of the transit gateway peering attachments.
--
-- * 'dtgpasFilters' - One or more filters. The possible values are:     * @transit-gateway-attachment-id@ - The ID of the transit gateway attachment.     * @local-owner-id@ - The ID of your AWS account.     * @remote-owner-id@ - The ID of the AWS account in the remote Region that owns the transit gateway.     * @state@ - The state of the peering attachment. Valid values are @available@ | @deleted@ | @deleting@ | @failed@ | @failing@ | @initiatingRequest@ | @modifying@ | @pendingAcceptance@ | @pending@ | @rollingBack@ | @rejected@ | @rejecting@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.     * @transit-gateway-id@ - The ID of the transit gateway.
describeTransitGatewayPeeringAttachments ::
  DescribeTransitGatewayPeeringAttachments
describeTransitGatewayPeeringAttachments =
  DescribeTransitGatewayPeeringAttachments'
    { _dtgpasNextToken =
        Nothing,
      _dtgpasDryRun = Nothing,
      _dtgpasMaxResults = Nothing,
      _dtgpasTransitGatewayAttachmentIds =
        Nothing,
      _dtgpasFilters = Nothing
    }

-- | The token for the next page of results.
dtgpasNextToken :: Lens' DescribeTransitGatewayPeeringAttachments (Maybe Text)
dtgpasNextToken = lens _dtgpasNextToken (\s a -> s {_dtgpasNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgpasDryRun :: Lens' DescribeTransitGatewayPeeringAttachments (Maybe Bool)
dtgpasDryRun = lens _dtgpasDryRun (\s a -> s {_dtgpasDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtgpasMaxResults :: Lens' DescribeTransitGatewayPeeringAttachments (Maybe Natural)
dtgpasMaxResults = lens _dtgpasMaxResults (\s a -> s {_dtgpasMaxResults = a}) . mapping _Nat

-- | One or more IDs of the transit gateway peering attachments.
dtgpasTransitGatewayAttachmentIds :: Lens' DescribeTransitGatewayPeeringAttachments [Text]
dtgpasTransitGatewayAttachmentIds = lens _dtgpasTransitGatewayAttachmentIds (\s a -> s {_dtgpasTransitGatewayAttachmentIds = a}) . _Default . _Coerce

-- | One or more filters. The possible values are:     * @transit-gateway-attachment-id@ - The ID of the transit gateway attachment.     * @local-owner-id@ - The ID of your AWS account.     * @remote-owner-id@ - The ID of the AWS account in the remote Region that owns the transit gateway.     * @state@ - The state of the peering attachment. Valid values are @available@ | @deleted@ | @deleting@ | @failed@ | @failing@ | @initiatingRequest@ | @modifying@ | @pendingAcceptance@ | @pending@ | @rollingBack@ | @rejected@ | @rejecting@ ).     * @tag@ :<key> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key @Owner@ and the value @TeamA@ , specify @tag:Owner@ for the filter name and @TeamA@ for the filter value.     * @tag-key@ - The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.     * @transit-gateway-id@ - The ID of the transit gateway.
dtgpasFilters :: Lens' DescribeTransitGatewayPeeringAttachments [Filter]
dtgpasFilters = lens _dtgpasFilters (\s a -> s {_dtgpasFilters = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeTransitGatewayPeeringAttachments
  where
  page rq rs
    | stop (rs ^. dtgpartrsNextToken) = Nothing
    | stop
        (rs ^. dtgpartrsTransitGatewayPeeringAttachments) =
      Nothing
    | otherwise =
      Just $
        rq
          & dtgpasNextToken .~ rs ^. dtgpartrsNextToken

instance
  AWSRequest
    DescribeTransitGatewayPeeringAttachments
  where
  type
    Rs DescribeTransitGatewayPeeringAttachments =
      DescribeTransitGatewayPeeringAttachmentsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTransitGatewayPeeringAttachmentsResponse'
            <$> ( x .@? "transitGatewayPeeringAttachments" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (x .@? "nextToken")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeTransitGatewayPeeringAttachments

instance
  NFData
    DescribeTransitGatewayPeeringAttachments

instance
  ToHeaders
    DescribeTransitGatewayPeeringAttachments
  where
  toHeaders = const mempty

instance
  ToPath
    DescribeTransitGatewayPeeringAttachments
  where
  toPath = const "/"

instance
  ToQuery
    DescribeTransitGatewayPeeringAttachments
  where
  toQuery DescribeTransitGatewayPeeringAttachments' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeTransitGatewayPeeringAttachments" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtgpasNextToken,
        "DryRun" =: _dtgpasDryRun,
        "MaxResults" =: _dtgpasMaxResults,
        toQuery
          ( toQueryList "TransitGatewayAttachmentIds"
              <$> _dtgpasTransitGatewayAttachmentIds
          ),
        toQuery (toQueryList "Filter" <$> _dtgpasFilters)
      ]

-- | /See:/ 'describeTransitGatewayPeeringAttachmentsResponse' smart constructor.
data DescribeTransitGatewayPeeringAttachmentsResponse = DescribeTransitGatewayPeeringAttachmentsResponse'
  { _dtgpartrsTransitGatewayPeeringAttachments ::
      !( Maybe
           [TransitGatewayPeeringAttachment]
       ),
    _dtgpartrsNextToken ::
      !( Maybe
           Text
       ),
    _dtgpartrsResponseStatus ::
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

-- | Creates a value of 'DescribeTransitGatewayPeeringAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgpartrsTransitGatewayPeeringAttachments' - The transit gateway peering attachments.
--
-- * 'dtgpartrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dtgpartrsResponseStatus' - -- | The response status code.
describeTransitGatewayPeeringAttachmentsResponse ::
  -- | 'dtgpartrsResponseStatus'
  Int ->
  DescribeTransitGatewayPeeringAttachmentsResponse
describeTransitGatewayPeeringAttachmentsResponse
  pResponseStatus_ =
    DescribeTransitGatewayPeeringAttachmentsResponse'
      { _dtgpartrsTransitGatewayPeeringAttachments =
          Nothing,
        _dtgpartrsNextToken =
          Nothing,
        _dtgpartrsResponseStatus =
          pResponseStatus_
      }

-- | The transit gateway peering attachments.
dtgpartrsTransitGatewayPeeringAttachments :: Lens' DescribeTransitGatewayPeeringAttachmentsResponse [TransitGatewayPeeringAttachment]
dtgpartrsTransitGatewayPeeringAttachments = lens _dtgpartrsTransitGatewayPeeringAttachments (\s a -> s {_dtgpartrsTransitGatewayPeeringAttachments = a}) . _Default . _Coerce

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dtgpartrsNextToken :: Lens' DescribeTransitGatewayPeeringAttachmentsResponse (Maybe Text)
dtgpartrsNextToken = lens _dtgpartrsNextToken (\s a -> s {_dtgpartrsNextToken = a})

-- | -- | The response status code.
dtgpartrsResponseStatus :: Lens' DescribeTransitGatewayPeeringAttachmentsResponse Int
dtgpartrsResponseStatus = lens _dtgpartrsResponseStatus (\s a -> s {_dtgpartrsResponseStatus = a})

instance
  NFData
    DescribeTransitGatewayPeeringAttachmentsResponse
