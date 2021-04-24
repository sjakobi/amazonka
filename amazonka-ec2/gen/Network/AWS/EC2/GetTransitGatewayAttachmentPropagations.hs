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
-- Module      : Network.AWS.EC2.GetTransitGatewayAttachmentPropagations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the route tables to which the specified resource attachment propagates routes.
--
--
--
-- This operation returns paginated results.
module Network.AWS.EC2.GetTransitGatewayAttachmentPropagations
  ( -- * Creating a Request
    getTransitGatewayAttachmentPropagations,
    GetTransitGatewayAttachmentPropagations,

    -- * Request Lenses
    gtgapNextToken,
    gtgapDryRun,
    gtgapMaxResults,
    gtgapFilters,
    gtgapTransitGatewayAttachmentId,

    -- * Destructuring the Response
    getTransitGatewayAttachmentPropagationsResponse,
    GetTransitGatewayAttachmentPropagationsResponse,

    -- * Response Lenses
    gtgaprrsNextToken,
    gtgaprrsTransitGatewayAttachmentPropagations,
    gtgaprrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getTransitGatewayAttachmentPropagations' smart constructor.
data GetTransitGatewayAttachmentPropagations = GetTransitGatewayAttachmentPropagations'
  { _gtgapNextToken ::
      !( Maybe
           Text
       ),
    _gtgapDryRun ::
      !( Maybe
           Bool
       ),
    _gtgapMaxResults ::
      !( Maybe
           Nat
       ),
    _gtgapFilters ::
      !( Maybe
           [Filter]
       ),
    _gtgapTransitGatewayAttachmentId ::
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

-- | Creates a value of 'GetTransitGatewayAttachmentPropagations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgapNextToken' - The token for the next page of results.
--
-- * 'gtgapDryRun' - Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
--
-- * 'gtgapMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
--
-- * 'gtgapFilters' - One or more filters. The possible values are:     * @transit-gateway-route-table-id@ - The ID of the transit gateway route table.
--
-- * 'gtgapTransitGatewayAttachmentId' - The ID of the attachment.
getTransitGatewayAttachmentPropagations ::
  -- | 'gtgapTransitGatewayAttachmentId'
  Text ->
  GetTransitGatewayAttachmentPropagations
getTransitGatewayAttachmentPropagations
  pTransitGatewayAttachmentId_ =
    GetTransitGatewayAttachmentPropagations'
      { _gtgapNextToken =
          Nothing,
        _gtgapDryRun = Nothing,
        _gtgapMaxResults = Nothing,
        _gtgapFilters = Nothing,
        _gtgapTransitGatewayAttachmentId =
          pTransitGatewayAttachmentId_
      }

-- | The token for the next page of results.
gtgapNextToken :: Lens' GetTransitGatewayAttachmentPropagations (Maybe Text)
gtgapNextToken = lens _gtgapNextToken (\s a -> s {_gtgapNextToken = a})

-- | Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is @DryRunOperation@ . Otherwise, it is @UnauthorizedOperation@ .
gtgapDryRun :: Lens' GetTransitGatewayAttachmentPropagations (Maybe Bool)
gtgapDryRun = lens _gtgapDryRun (\s a -> s {_gtgapDryRun = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value.
gtgapMaxResults :: Lens' GetTransitGatewayAttachmentPropagations (Maybe Natural)
gtgapMaxResults = lens _gtgapMaxResults (\s a -> s {_gtgapMaxResults = a}) . mapping _Nat

-- | One or more filters. The possible values are:     * @transit-gateway-route-table-id@ - The ID of the transit gateway route table.
gtgapFilters :: Lens' GetTransitGatewayAttachmentPropagations [Filter]
gtgapFilters = lens _gtgapFilters (\s a -> s {_gtgapFilters = a}) . _Default . _Coerce

-- | The ID of the attachment.
gtgapTransitGatewayAttachmentId :: Lens' GetTransitGatewayAttachmentPropagations Text
gtgapTransitGatewayAttachmentId = lens _gtgapTransitGatewayAttachmentId (\s a -> s {_gtgapTransitGatewayAttachmentId = a})

instance
  AWSPager
    GetTransitGatewayAttachmentPropagations
  where
  page rq rs
    | stop (rs ^. gtgaprrsNextToken) = Nothing
    | stop
        (rs ^. gtgaprrsTransitGatewayAttachmentPropagations) =
      Nothing
    | otherwise =
      Just $ rq & gtgapNextToken .~ rs ^. gtgaprrsNextToken

instance
  AWSRequest
    GetTransitGatewayAttachmentPropagations
  where
  type
    Rs GetTransitGatewayAttachmentPropagations =
      GetTransitGatewayAttachmentPropagationsResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          GetTransitGatewayAttachmentPropagationsResponse'
            <$> (x .@? "nextToken")
            <*> ( x .@? "transitGatewayAttachmentPropagations"
                    .!@ mempty
                    >>= may (parseXMLList "item")
                )
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    GetTransitGatewayAttachmentPropagations

instance
  NFData
    GetTransitGatewayAttachmentPropagations

instance
  ToHeaders
    GetTransitGatewayAttachmentPropagations
  where
  toHeaders = const mempty

instance
  ToPath
    GetTransitGatewayAttachmentPropagations
  where
  toPath = const "/"

instance
  ToQuery
    GetTransitGatewayAttachmentPropagations
  where
  toQuery GetTransitGatewayAttachmentPropagations' {..} =
    mconcat
      [ "Action"
          =: ( "GetTransitGatewayAttachmentPropagations" ::
                 ByteString
             ),
        "Version" =: ("2016-11-15" :: ByteString),
        "NextToken" =: _gtgapNextToken,
        "DryRun" =: _gtgapDryRun,
        "MaxResults" =: _gtgapMaxResults,
        toQuery (toQueryList "Filter" <$> _gtgapFilters),
        "TransitGatewayAttachmentId"
          =: _gtgapTransitGatewayAttachmentId
      ]

-- | /See:/ 'getTransitGatewayAttachmentPropagationsResponse' smart constructor.
data GetTransitGatewayAttachmentPropagationsResponse = GetTransitGatewayAttachmentPropagationsResponse'
  { _gtgaprrsNextToken ::
      !( Maybe
           Text
       ),
    _gtgaprrsTransitGatewayAttachmentPropagations ::
      !( Maybe
           [TransitGatewayAttachmentPropagation]
       ),
    _gtgaprrsResponseStatus ::
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

-- | Creates a value of 'GetTransitGatewayAttachmentPropagationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtgaprrsNextToken' - The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
--
-- * 'gtgaprrsTransitGatewayAttachmentPropagations' - Information about the propagation route tables.
--
-- * 'gtgaprrsResponseStatus' - -- | The response status code.
getTransitGatewayAttachmentPropagationsResponse ::
  -- | 'gtgaprrsResponseStatus'
  Int ->
  GetTransitGatewayAttachmentPropagationsResponse
getTransitGatewayAttachmentPropagationsResponse
  pResponseStatus_ =
    GetTransitGatewayAttachmentPropagationsResponse'
      { _gtgaprrsNextToken =
          Nothing,
        _gtgaprrsTransitGatewayAttachmentPropagations =
          Nothing,
        _gtgaprrsResponseStatus =
          pResponseStatus_
      }

-- | The token to use to retrieve the next page of results. This value is @null@ when there are no more results to return.
gtgaprrsNextToken :: Lens' GetTransitGatewayAttachmentPropagationsResponse (Maybe Text)
gtgaprrsNextToken = lens _gtgaprrsNextToken (\s a -> s {_gtgaprrsNextToken = a})

-- | Information about the propagation route tables.
gtgaprrsTransitGatewayAttachmentPropagations :: Lens' GetTransitGatewayAttachmentPropagationsResponse [TransitGatewayAttachmentPropagation]
gtgaprrsTransitGatewayAttachmentPropagations = lens _gtgaprrsTransitGatewayAttachmentPropagations (\s a -> s {_gtgaprrsTransitGatewayAttachmentPropagations = a}) . _Default . _Coerce

-- | -- | The response status code.
gtgaprrsResponseStatus :: Lens' GetTransitGatewayAttachmentPropagationsResponse Int
gtgaprrsResponseStatus = lens _gtgaprrsResponseStatus (\s a -> s {_gtgaprrsResponseStatus = a})

instance
  NFData
    GetTransitGatewayAttachmentPropagationsResponse
