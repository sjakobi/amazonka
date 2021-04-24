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
-- Module      : Network.AWS.DirectConnect.DescribeDirectConnectGateways
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all your Direct Connect gateways or only the specified Direct Connect gateway. Deleted Direct Connect gateways are not returned.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DirectConnect.DescribeDirectConnectGateways
  ( -- * Creating a Request
    describeDirectConnectGateways,
    DescribeDirectConnectGateways,

    -- * Request Lenses
    ddcgNextToken,
    ddcgMaxResults,
    ddcgDirectConnectGatewayId,

    -- * Destructuring the Response
    describeDirectConnectGatewaysResponse,
    DescribeDirectConnectGatewaysResponse,

    -- * Response Lenses
    ddcgrdrsNextToken,
    ddcgrdrsDirectConnectGateways,
    ddcgrdrsResponseStatus,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDirectConnectGateways' smart constructor.
data DescribeDirectConnectGateways = DescribeDirectConnectGateways'
  { _ddcgNextToken ::
      !( Maybe
           Text
       ),
    _ddcgMaxResults ::
      !( Maybe
           Int
       ),
    _ddcgDirectConnectGatewayId ::
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

-- | Creates a value of 'DescribeDirectConnectGateways' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgNextToken' - The token provided in the previous call to retrieve the next page.
--
-- * 'ddcgMaxResults' - The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
--
-- * 'ddcgDirectConnectGatewayId' - The ID of the Direct Connect gateway.
describeDirectConnectGateways ::
  DescribeDirectConnectGateways
describeDirectConnectGateways =
  DescribeDirectConnectGateways'
    { _ddcgNextToken =
        Nothing,
      _ddcgMaxResults = Nothing,
      _ddcgDirectConnectGatewayId = Nothing
    }

-- | The token provided in the previous call to retrieve the next page.
ddcgNextToken :: Lens' DescribeDirectConnectGateways (Maybe Text)
ddcgNextToken = lens _ddcgNextToken (\s a -> s {_ddcgNextToken = a})

-- | The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned @nextToken@ value. If @MaxResults@ is given a value larger than 100, only 100 results are returned.
ddcgMaxResults :: Lens' DescribeDirectConnectGateways (Maybe Int)
ddcgMaxResults = lens _ddcgMaxResults (\s a -> s {_ddcgMaxResults = a})

-- | The ID of the Direct Connect gateway.
ddcgDirectConnectGatewayId :: Lens' DescribeDirectConnectGateways (Maybe Text)
ddcgDirectConnectGatewayId = lens _ddcgDirectConnectGatewayId (\s a -> s {_ddcgDirectConnectGatewayId = a})

instance AWSPager DescribeDirectConnectGateways where
  page rq rs
    | stop (rs ^. ddcgrdrsNextToken) = Nothing
    | stop (rs ^. ddcgrdrsDirectConnectGateways) =
      Nothing
    | otherwise =
      Just $ rq & ddcgNextToken .~ rs ^. ddcgrdrsNextToken

instance AWSRequest DescribeDirectConnectGateways where
  type
    Rs DescribeDirectConnectGateways =
      DescribeDirectConnectGatewaysResponse
  request = postJSON directConnect
  response =
    receiveJSON
      ( \s h x ->
          DescribeDirectConnectGatewaysResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "directConnectGateways" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDirectConnectGateways

instance NFData DescribeDirectConnectGateways

instance ToHeaders DescribeDirectConnectGateways where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "OvertureService.DescribeDirectConnectGateways" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDirectConnectGateways where
  toJSON DescribeDirectConnectGateways' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ddcgNextToken,
            ("maxResults" .=) <$> _ddcgMaxResults,
            ("directConnectGatewayId" .=)
              <$> _ddcgDirectConnectGatewayId
          ]
      )

instance ToPath DescribeDirectConnectGateways where
  toPath = const "/"

instance ToQuery DescribeDirectConnectGateways where
  toQuery = const mempty

-- | /See:/ 'describeDirectConnectGatewaysResponse' smart constructor.
data DescribeDirectConnectGatewaysResponse = DescribeDirectConnectGatewaysResponse'
  { _ddcgrdrsNextToken ::
      !( Maybe
           Text
       ),
    _ddcgrdrsDirectConnectGateways ::
      !( Maybe
           [DirectConnectGateway]
       ),
    _ddcgrdrsResponseStatus ::
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

-- | Creates a value of 'DescribeDirectConnectGatewaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcgrdrsNextToken' - The token to retrieve the next page.
--
-- * 'ddcgrdrsDirectConnectGateways' - The Direct Connect gateways.
--
-- * 'ddcgrdrsResponseStatus' - -- | The response status code.
describeDirectConnectGatewaysResponse ::
  -- | 'ddcgrdrsResponseStatus'
  Int ->
  DescribeDirectConnectGatewaysResponse
describeDirectConnectGatewaysResponse
  pResponseStatus_ =
    DescribeDirectConnectGatewaysResponse'
      { _ddcgrdrsNextToken =
          Nothing,
        _ddcgrdrsDirectConnectGateways =
          Nothing,
        _ddcgrdrsResponseStatus =
          pResponseStatus_
      }

-- | The token to retrieve the next page.
ddcgrdrsNextToken :: Lens' DescribeDirectConnectGatewaysResponse (Maybe Text)
ddcgrdrsNextToken = lens _ddcgrdrsNextToken (\s a -> s {_ddcgrdrsNextToken = a})

-- | The Direct Connect gateways.
ddcgrdrsDirectConnectGateways :: Lens' DescribeDirectConnectGatewaysResponse [DirectConnectGateway]
ddcgrdrsDirectConnectGateways = lens _ddcgrdrsDirectConnectGateways (\s a -> s {_ddcgrdrsDirectConnectGateways = a}) . _Default . _Coerce

-- | -- | The response status code.
ddcgrdrsResponseStatus :: Lens' DescribeDirectConnectGatewaysResponse Int
ddcgrdrsResponseStatus = lens _ddcgrdrsResponseStatus (\s a -> s {_ddcgrdrsResponseStatus = a})

instance NFData DescribeDirectConnectGatewaysResponse
