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
-- Module      : Network.AWS.EC2.DescribeTransitGatewayVPCAttachments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more VPC attachments. By default, all VPC attachments are described. Alternatively, you can filter the results.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeTransitGatewayVPCAttachments
  ( -- * Creating a Request
    describeTransitGatewayVPCAttachments,
    DescribeTransitGatewayVPCAttachments,

    -- * Request Lenses
    dtgvaNextToken,
    dtgvaDryRun,
    dtgvaMaxResults,
    dtgvaTransitGatewayAttachmentIds,
    dtgvaFilters,

    -- * Destructuring the Response
    describeTransitGatewayVPCAttachmentsResponse,
    DescribeTransitGatewayVPCAttachmentsResponse,

    -- * Response Lenses
    dtgvpcarrsNextToken,
    dtgvpcarrsTransitGatewayVPCAttachments,
    dtgvpcarrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeTransitGatewayVPCAttachments' smart constructor.
data DescribeTransitGatewayVPCAttachments = DescribeTransitGatewayVPCAttachments'
  { _dtgvaNextToken ::
      !( Maybe
           Text
       ),
    _dtgvaDryRun ::
      !( Maybe
           Bool
       ),
    _dtgvaMaxResults ::
      !( Maybe
           Nat
       ),
    _dtgvaTransitGatewayAttachmentIds ::
      !( Maybe
           [Text]
       ),
    _dtgvaFilters ::
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

-- | Creates a value of 'DescribeTransitGatewayVPCAttachments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgvaNextToken' - The token for the next page of results.
--
-- * 'dtgvaDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'dtgvaMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'dtgvaTransitGatewayAttachmentIds' - The IDs of the attachments.
--
-- * 'dtgvaFilters' - One or more filters. The possible values are:     * @state@ - The state of the attachment. Valid values are @available@ | @deleted@ | @deleting@ | @failed@ | @failing@ | @initiatingRequest@ | @modifying@ | @pendingAcceptance@ | @pending@ | @rollingBack@ | @rejected@ | @rejecting@ .     * @transit-gateway-attachment-id@ - The ID of the attachment.     * @transit-gateway-id@ - The ID of the transit gateway.     * @vpc-id@ - The ID of the VPC.
describeTransitGatewayVPCAttachments ::
  DescribeTransitGatewayVPCAttachments
describeTransitGatewayVPCAttachments =
  DescribeTransitGatewayVPCAttachments'
    { _dtgvaNextToken =
        Nothing,
      _dtgvaDryRun = Nothing,
      _dtgvaMaxResults = Nothing,
      _dtgvaTransitGatewayAttachmentIds =
        Nothing,
      _dtgvaFilters = Nothing
    }

-- | The token for the next page of results.
dtgvaNextToken :: Lens' DescribeTransitGatewayVPCAttachments (Maybe Text)
dtgvaNextToken = lens _dtgvaNextToken (\s a -> s {_dtgvaNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
dtgvaDryRun :: Lens' DescribeTransitGatewayVPCAttachments (Maybe Bool)
dtgvaDryRun = lens _dtgvaDryRun (\s a -> s {_dtgvaDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
dtgvaMaxResults :: Lens' DescribeTransitGatewayVPCAttachments (Maybe Natural)
dtgvaMaxResults = lens _dtgvaMaxResults (\s a -> s {_dtgvaMaxResults = a}) . mapping _Nat

-- | The IDs of the attachments.
dtgvaTransitGatewayAttachmentIds :: Lens' DescribeTransitGatewayVPCAttachments [Text]
dtgvaTransitGatewayAttachmentIds = lens _dtgvaTransitGatewayAttachmentIds (\s a -> s {_dtgvaTransitGatewayAttachmentIds = a}) . _Default . _Coerce

-- | One or more filters. The possible values are:     * @state@ - The state of the attachment. Valid values are @available@ | @deleted@ | @deleting@ | @failed@ | @failing@ | @initiatingRequest@ | @modifying@ | @pendingAcceptance@ | @pending@ | @rollingBack@ | @rejected@ | @rejecting@ .     * @transit-gateway-attachment-id@ - The ID of the attachment.     * @transit-gateway-id@ - The ID of the transit gateway.     * @vpc-id@ - The ID of the VPC.
dtgvaFilters :: Lens' DescribeTransitGatewayVPCAttachments [Filter]
dtgvaFilters = lens _dtgvaFilters (\s a -> s {_dtgvaFilters = a}) . _Default . _Coerce

instance
  AWSPager
    DescribeTransitGatewayVPCAttachments
  where
  page rq rs
    | stop (rs ^. dtgvpcarrsNextToken) = Nothing
    | stop (rs ^. dtgvpcarrsTransitGatewayVPCAttachments) =
      Nothing
    | otherwise =
      Just $
        rq
          & dtgvaNextToken .~ rs ^. dtgvpcarrsNextToken

instance
  AWSRequest
    DescribeTransitGatewayVPCAttachments
  where
  type
    Rs DescribeTransitGatewayVPCAttachments =
      DescribeTransitGatewayVPCAttachmentsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DescribeTransitGatewayVPCAttachmentsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewayVpcAttachments" .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeTransitGatewayVPCAttachments

instance NFData DescribeTransitGatewayVPCAttachments

instance
  ToHeaders
    DescribeTransitGatewayVPCAttachments
  where
  toHeaders = const mempty

instance ToPath DescribeTransitGatewayVPCAttachments where
  toPath = const "/"

instance ToQuery DescribeTransitGatewayVPCAttachments where
  toQuery DescribeTransitGatewayVPCAttachments' {..} =
    mconcat
      [ "Action"
          =: ( "DescribeTransitGatewayVpcAttachments" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _dtgvaNextToken,
        "DryRun" =: _dtgvaDryRun,
        "MaxResults" =: _dtgvaMaxResults,
        toQuery
          ( toQueryList "TransitGatewayAttachmentIds"
              <$> _dtgvaTransitGatewayAttachmentIds
          ),
        toQuery (toQueryList "Filter" <$> _dtgvaFilters)
      ]

-- | /See:/ 'describeTransitGatewayVPCAttachmentsResponse' smart constructor.
data DescribeTransitGatewayVPCAttachmentsResponse = DescribeTransitGatewayVPCAttachmentsResponse'
  { _dtgvpcarrsNextToken ::
      !( Maybe
           Text
       ),
    _dtgvpcarrsTransitGatewayVPCAttachments ::
      !( Maybe
           [TransitGatewayVPCAttachment]
       ),
    _dtgvpcarrsResponseStatus ::
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

-- | Creates a value of 'DescribeTransitGatewayVPCAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgvpcarrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'dtgvpcarrsTransitGatewayVPCAttachments' - Information about the VPC attachments.
--
-- * 'dtgvpcarrsResponseStatus' - -- | The response status code.
describeTransitGatewayVPCAttachmentsResponse ::
  -- | 'dtgvpcarrsResponseStatus'
  Int ->
  DescribeTransitGatewayVPCAttachmentsResponse
describeTransitGatewayVPCAttachmentsResponse
  pResponseStatus_ =
    DescribeTransitGatewayVPCAttachmentsResponse'
      { _dtgvpcarrsNextToken =
          Nothing,
        _dtgvpcarrsTransitGatewayVPCAttachments =
          Nothing,
        _dtgvpcarrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
dtgvpcarrsNextToken :: Lens' DescribeTransitGatewayVPCAttachmentsResponse (Maybe Text)
dtgvpcarrsNextToken = lens _dtgvpcarrsNextToken (\s a -> s {_dtgvpcarrsNextToken = a})

-- | Information about the VPC attachments.
dtgvpcarrsTransitGatewayVPCAttachments :: Lens' DescribeTransitGatewayVPCAttachmentsResponse [TransitGatewayVPCAttachment]
dtgvpcarrsTransitGatewayVPCAttachments = lens _dtgvpcarrsTransitGatewayVPCAttachments (\s a -> s {_dtgvpcarrsTransitGatewayVPCAttachments = a}) . _Default . _Coerce

-- | -- | The response status code.
dtgvpcarrsResponseStatus :: Lens' DescribeTransitGatewayVPCAttachmentsResponse Int
dtgvpcarrsResponseStatus = lens _dtgvpcarrsResponseStatus (\s a -> s {_dtgvpcarrsResponseStatus = a})

instance
  NFData
    DescribeTransitGatewayVPCAttachmentsResponse
