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
-- Module      : Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the associations between your Direct Connect gateways and virtual private gateways and transit gateways. You must specify one of the following:
--
--
--     * A Direct Connect gateway
--
-- The response contains all virtual private gateways and transit gateways associated with the Direct Connect gateway.
--
--     * A virtual private gateway
--
-- The response contains the Direct Connect gateway.
--
--     * A transit gateway
--
-- The response contains the Direct Connect gateway.
--
--     * A Direct Connect gateway and a virtual private gateway
--
-- The response contains the association between the Direct Connect gateway and virtual private gateway.
--
--     * A Direct Connect gateway and a transit gateway
--
-- The response contains the association between the Direct Connect gateway and transit gateway.
--
--
--
--
-- This operation returns paginated results.
module Network.AWS.DirectConnect.DescribeDirectConnectGatewayAssociations
  ( -- * Creating a Request
    describeDirectConnectGatewayAssociations,
    DescribeDirectConnectGatewayAssociations,

    -- * Request Lenses
    ddcgaNextToken,
    ddcgaVirtualGatewayId,
    ddcgaMaxResults,
    ddcgaAssociatedGatewayId,
    ddcgaAssociationId,
    ddcgaDirectConnectGatewayId,

    -- * Destructuring the Response
    describeDirectConnectGatewayAssociationsResponse,
    DescribeDirectConnectGatewayAssociationsResponse,

    -- * Response Lenses
    ddcgarrsNextToken,
    ddcgarrsDirectConnectGatewayAssociations,
    ddcgarrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDirectConnectGatewayAssociations' smart constructor.
data DescribeDirectConnectGatewayAssociations = DescribeDirectConnectGatewayAssociations'
  { _ddcgaNextToken ::
      !( Maybe
           Text
       ),
    _ddcgaVirtualGatewayId ::
      !( Maybe
           Text
       ),
    _ddcgaMaxResults ::
      !( Maybe
           Int
       ),
    _ddcgaAssociatedGatewayId ::
      !( Maybe
           Text
       ),
    _ddcgaAssociationId ::
      !( Maybe
           Text
       ),
    _ddcgaDirectConnectGatewayId ::
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

-- | Creates a value of 'DescribeDirectConnectGatewayAssociations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgaNextToken' - The token provided in the previous call to retrieve the next page.
--
-- * 'ddcgaVirtualGatewayId' - The ID of the virtual private gateway or transit gateway.
--
-- * 'ddcgaMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
--
-- * 'ddcgaAssociatedGatewayId' - The ID of the associated gateway.
--
-- * 'ddcgaAssociationId' - The ID of the Direct Connect gateway association.
--
-- * 'ddcgaDirectConnectGatewayId' - The ID of the Direct Connect gateway.
describeDirectConnectGatewayAssociations ::
  DescribeDirectConnectGatewayAssociations
describeDirectConnectGatewayAssociations =
  DescribeDirectConnectGatewayAssociations'
    { _ddcgaNextToken =
        Nothing,
      _ddcgaVirtualGatewayId = Nothing,
      _ddcgaMaxResults = Nothing,
      _ddcgaAssociatedGatewayId =
        Nothing,
      _ddcgaAssociationId = Nothing,
      _ddcgaDirectConnectGatewayId =
        Nothing
    }

-- | The token provided in the previous call to retrieve the next page.
ddcgaNextToken :: Lens' DescribeDirectConnectGatewayAssociations (Maybe Text)
ddcgaNextToken = lens _ddcgaNextToken (\s a -> s {_ddcgaNextToken = a})

-- | The ID of the virtual private gateway or transit gateway.
ddcgaVirtualGatewayId :: Lens' DescribeDirectConnectGatewayAssociations (Maybe Text)
ddcgaVirtualGatewayId = lens _ddcgaVirtualGatewayId (\s a -> s {_ddcgaVirtualGatewayId = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
ddcgaMaxResults :: Lens' DescribeDirectConnectGatewayAssociations (Maybe Int)
ddcgaMaxResults = lens _ddcgaMaxResults (\s a -> s {_ddcgaMaxResults = a})

-- | The ID of the associated gateway.
ddcgaAssociatedGatewayId :: Lens' DescribeDirectConnectGatewayAssociations (Maybe Text)
ddcgaAssociatedGatewayId = lens _ddcgaAssociatedGatewayId (\s a -> s {_ddcgaAssociatedGatewayId = a})

-- | The ID of the Direct Connect gateway association.
ddcgaAssociationId :: Lens' DescribeDirectConnectGatewayAssociations (Maybe Text)
ddcgaAssociationId = lens _ddcgaAssociationId (\s a -> s {_ddcgaAssociationId = a})

-- | The ID of the Direct Connect gateway.
ddcgaDirectConnectGatewayId :: Lens' DescribeDirectConnectGatewayAssociations (Maybe Text)
ddcgaDirectConnectGatewayId = lens _ddcgaDirectConnectGatewayId (\s a -> s {_ddcgaDirectConnectGatewayId = a})

instance
  AWSPager
    DescribeDirectConnectGatewayAssociations
  where
  page rq rs
    | stop (rs ^. ddcgarrsNextToken) = Nothing
    | stop
        (rs ^. ddcgarrsDirectConnectGatewayAssociations) =
      Nothing
    | otherwise =
      Just $ rq & ddcgaNextToken .~ rs ^. ddcgarrsNextToken

instance
  AWSRequest
    DescribeDirectConnectGatewayAssociations
  where
  type
    Rs DescribeDirectConnectGatewayAssociations =
      DescribeDirectConnectGatewayAssociationsResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeDirectConnectGatewayAssociationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "directConnectGatewayAssociations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeDirectConnectGatewayAssociations

instance
  NFData
    DescribeDirectConnectGatewayAssociations

instance
  ToHeaders
    DescribeDirectConnectGatewayAssociations
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DescribeDirectConnectGatewayAssociations" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeDirectConnectGatewayAssociations
  where
  toJSON DescribeDirectConnectGatewayAssociations' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ddcgaNextToken,
            ("virtualGatewayId" .=) <$> _ddcgaVirtualGatewayId,
            ("maxResults" .=) <$> _ddcgaMaxResults,
            ("associatedGatewayId" .=)
              <$> _ddcgaAssociatedGatewayId,
            ("associationId" .=) <$> _ddcgaAssociationId,
            ("directConnectGatewayId" .=)
              <$> _ddcgaDirectConnectGatewayId
          ]
      )

instance
  ToPath
    DescribeDirectConnectGatewayAssociations
  where
  toPath = const "/"

instance
  ToQuery
    DescribeDirectConnectGatewayAssociations
  where
  toQuery = const mempty

-- | /See:/ 'describeDirectConnectGatewayAssociationsResponse' smart constructor.
data DescribeDirectConnectGatewayAssociationsResponse = DescribeDirectConnectGatewayAssociationsResponse'
  { _ddcgarrsNextToken ::
      !( Maybe
           Text
       ),
    _ddcgarrsDirectConnectGatewayAssociations ::
      !( Maybe
           [DirectConnectGatewayAssociation]
       ),
    _ddcgarrsResponseStatus ::
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

-- | Creates a value of 'DescribeDirectConnectGatewayAssociationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgarrsNextToken' - The token to retrieve the next page.
--
-- * 'ddcgarrsDirectConnectGatewayAssociations' - Information about the associations.
--
-- * 'ddcgarrsResponseStatus' - -- | The response status code.
describeDirectConnectGatewayAssociationsResponse ::
  -- | 'ddcgarrsResponseStatus'
  Int ->
  DescribeDirectConnectGatewayAssociationsResponse
describeDirectConnectGatewayAssociationsResponse
  pResponseStatus_ =
    DescribeDirectConnectGatewayAssociationsResponse'
      { _ddcgarrsNextToken =
          Nothing,
        _ddcgarrsDirectConnectGatewayAssociations =
          Nothing,
        _ddcgarrsResponseStatus =
          pResponseStatus_
      }

-- | The token to retrieve the next page.
ddcgarrsNextToken :: Lens' DescribeDirectConnectGatewayAssociationsResponse (Maybe Text)
ddcgarrsNextToken = lens _ddcgarrsNextToken (\s a -> s {_ddcgarrsNextToken = a})

-- | Information about the associations.
ddcgarrsDirectConnectGatewayAssociations :: Lens' DescribeDirectConnectGatewayAssociationsResponse [DirectConnectGatewayAssociation]
ddcgarrsDirectConnectGatewayAssociations = lens _ddcgarrsDirectConnectGatewayAssociations (\s a -> s {_ddcgarrsDirectConnectGatewayAssociations = a}) . _Default . _Coerce

-- | -- | The response status code.
ddcgarrsResponseStatus :: Lens' DescribeDirectConnectGatewayAssociationsResponse Int
ddcgarrsResponseStatus = lens _ddcgarrsResponseStatus (\s a -> s {_ddcgarrsResponseStatus = a})

instance
  NFData
    DescribeDirectConnectGatewayAssociationsResponse
