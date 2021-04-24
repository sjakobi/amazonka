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
-- Module      : Network.AWS.DirectConnect.DescribeDirectConnectGatewayAttachments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the attachments between your Direct Connect gateways and virtual interfaces. You must specify a Direct Connect gateway, a virtual interface, or both. If you specify a Direct Connect gateway, the response contains all virtual interfaces attached to the Direct Connect gateway. If you specify a virtual interface, the response contains all Direct Connect gateways attached to the virtual interface. If you specify both, the response contains the attachment between the Direct Connect gateway and the virtual interface.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DirectConnect.DescribeDirectConnectGatewayAttachments
  ( -- * Creating a Request
    describeDirectConnectGatewayAttachments,
    DescribeDirectConnectGatewayAttachments,

    -- * Request Lenses
    ddcgasNextToken,
    ddcgasMaxResults,
    ddcgasVirtualInterfaceId,
    ddcgasDirectConnectGatewayId,

    -- * Destructuring the Response
    describeDirectConnectGatewayAttachmentsResponse,
    DescribeDirectConnectGatewayAttachmentsResponse,

    -- * Response Lenses
    drsNextToken,
    drsDirectConnectGatewayAttachments,
    drsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDirectConnectGatewayAttachments' smart constructor.
data DescribeDirectConnectGatewayAttachments = DescribeDirectConnectGatewayAttachments'
  { _ddcgasNextToken ::
      !( Maybe
           Text
       ),
    _ddcgasMaxResults ::
      !( Maybe
           Int
       ),
    _ddcgasVirtualInterfaceId ::
      !( Maybe
           Text
       ),
    _ddcgasDirectConnectGatewayId ::
      !( Maybe
           Text
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

-- | Creates a value of 'DescribeDirectConnectGatewayAttachments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgasNextToken' - The token provided in the previous call to retrieve the next page.
--
-- * 'ddcgasMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
--
-- * 'ddcgasVirtualInterfaceId' - The ID of the virtual interface.
--
-- * 'ddcgasDirectConnectGatewayId' - The ID of the Direct Connect gateway.
describeDirectConnectGatewayAttachments ::
  DescribeDirectConnectGatewayAttachments
describeDirectConnectGatewayAttachments =
  DescribeDirectConnectGatewayAttachments'
    { _ddcgasNextToken =
        Nothing,
      _ddcgasMaxResults = Nothing,
      _ddcgasVirtualInterfaceId =
        Nothing,
      _ddcgasDirectConnectGatewayId =
        Nothing
    }

-- | The token provided in the previous call to retrieve the next page.
ddcgasNextToken :: Lens' DescribeDirectConnectGatewayAttachments (Maybe Text)
ddcgasNextToken = lens _ddcgasNextToken (\s a -> s {_ddcgasNextToken = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
ddcgasMaxResults :: Lens' DescribeDirectConnectGatewayAttachments (Maybe Int)
ddcgasMaxResults = lens _ddcgasMaxResults (\s a -> s {_ddcgasMaxResults = a})

-- | The ID of the virtual interface.
ddcgasVirtualInterfaceId :: Lens' DescribeDirectConnectGatewayAttachments (Maybe Text)
ddcgasVirtualInterfaceId = lens _ddcgasVirtualInterfaceId (\s a -> s {_ddcgasVirtualInterfaceId = a})

-- | The ID of the Direct Connect gateway.
ddcgasDirectConnectGatewayId :: Lens' DescribeDirectConnectGatewayAttachments (Maybe Text)
ddcgasDirectConnectGatewayId = lens _ddcgasDirectConnectGatewayId (\s a -> s {_ddcgasDirectConnectGatewayId = a})

instance
  AWSPager
    DescribeDirectConnectGatewayAttachments
  where
  page rq rs
    | stop (rs ^. drsNextToken) = Nothing
    | stop (rs ^. drsDirectConnectGatewayAttachments) =
      Nothing
    | otherwise =
      Just $ rq & ddcgasNextToken .~ rs ^. drsNextToken

instance
  AWSRequest
    DescribeDirectConnectGatewayAttachments
  where
  type
    Rs DescribeDirectConnectGatewayAttachments =
      DescribeDirectConnectGatewayAttachmentsResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeDirectConnectGatewayAttachmentsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "directConnectGatewayAttachments" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeDirectConnectGatewayAttachments

instance
  NFData
    DescribeDirectConnectGatewayAttachments

instance
  ToHeaders
    DescribeDirectConnectGatewayAttachments
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DescribeDirectConnectGatewayAttachments" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeDirectConnectGatewayAttachments
  where
  toJSON DescribeDirectConnectGatewayAttachments' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ddcgasNextToken,
            ("maxResults" .=) <$> _ddcgasMaxResults,
            ("virtualInterfaceId" .=)
              <$> _ddcgasVirtualInterfaceId,
            ("directConnectGatewayId" .=)
              <$> _ddcgasDirectConnectGatewayId
          ]
      )

instance
  ToPath
    DescribeDirectConnectGatewayAttachments
  where
  toPath = const "/"

instance
  ToQuery
    DescribeDirectConnectGatewayAttachments
  where
  toQuery = const mempty

-- | /See:/ 'describeDirectConnectGatewayAttachmentsResponse' smart constructor.
data DescribeDirectConnectGatewayAttachmentsResponse = DescribeDirectConnectGatewayAttachmentsResponse'
  { _drsNextToken ::
      !( Maybe
           Text
       ),
    _drsDirectConnectGatewayAttachments ::
      !( Maybe
           [DirectConnectGatewayAttachment]
       ),
    _drsResponseStatus ::
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

-- | Creates a value of 'DescribeDirectConnectGatewayAttachmentsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drsNextToken' - The token to retrieve the next page.
--
-- * 'drsDirectConnectGatewayAttachments' - The attachments.
--
-- * 'drsResponseStatus' - -- | The response status code.
describeDirectConnectGatewayAttachmentsResponse ::
  -- | 'drsResponseStatus'
  Int ->
  DescribeDirectConnectGatewayAttachmentsResponse
describeDirectConnectGatewayAttachmentsResponse
  pResponseStatus_ =
    DescribeDirectConnectGatewayAttachmentsResponse'
      { _drsNextToken =
          Nothing,
        _drsDirectConnectGatewayAttachments =
          Nothing,
        _drsResponseStatus =
          pResponseStatus_
      }

-- | The token to retrieve the next page.
drsNextToken :: Lens' DescribeDirectConnectGatewayAttachmentsResponse (Maybe Text)
drsNextToken = lens _drsNextToken (\s a -> s {_drsNextToken = a})

-- | The attachments.
drsDirectConnectGatewayAttachments :: Lens' DescribeDirectConnectGatewayAttachmentsResponse [DirectConnectGatewayAttachment]
drsDirectConnectGatewayAttachments = lens _drsDirectConnectGatewayAttachments (\s a -> s {_drsDirectConnectGatewayAttachments = a}) . _Default . _Coerce

-- | -- | The response status code.
drsResponseStatus :: Lens' DescribeDirectConnectGatewayAttachmentsResponse Int
drsResponseStatus = lens _drsResponseStatus (\s a -> s {_drsResponseStatus = a})

instance
  NFData
    DescribeDirectConnectGatewayAttachmentsResponse
