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
-- Module      : Network.AWS.SMS.GetConnectors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the connectors registered with the AWS SMS.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SMS.GetConnectors
  ( -- * Creating a Request
    getConnectors,
    GetConnectors,

    -- * Request Lenses
    gcNextToken,
    gcMaxResults,

    -- * Destructuring the Response
    getConnectorsResponse,
    GetConnectorsResponse,

    -- * Response Lenses
    gcrrsNextToken,
    gcrrsConnectorList,
    gcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SMS.Types

-- | /See:/ 'getConnectors' smart constructor.
data GetConnectors = GetConnectors'
  { _gcNextToken ::
      !(Maybe Text),
    _gcMaxResults :: !(Maybe Int)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetConnectors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcNextToken' - The token for the next set of results.
--
-- * 'gcMaxResults' - The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
getConnectors ::
  GetConnectors
getConnectors =
  GetConnectors'
    { _gcNextToken = Nothing,
      _gcMaxResults = Nothing
    }

-- | The token for the next set of results.
gcNextToken :: Lens' GetConnectors (Maybe Text)
gcNextToken = lens _gcNextToken (\s a -> s {_gcNextToken = a})

-- | The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned @NextToken@ value.
gcMaxResults :: Lens' GetConnectors (Maybe Int)
gcMaxResults = lens _gcMaxResults (\s a -> s {_gcMaxResults = a})

instance AWSPager GetConnectors where
  page rq rs
    | stop (rs ^. gcrrsNextToken) = Nothing
    | stop (rs ^. gcrrsConnectorList) = Nothing
    | otherwise =
      Just $ rq & gcNextToken .~ rs ^. gcrrsNextToken

instance AWSRequest GetConnectors where
  type Rs GetConnectors = GetConnectorsResponse
  request = postJSON sms
  response =
    receiveJSON
      ( \s h x ->
          GetConnectorsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "connectorList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetConnectors

instance NFData GetConnectors

instance ToHeaders GetConnectors where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSServerMigrationService_V2016_10_24.GetConnectors" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetConnectors where
  toJSON GetConnectors' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _gcNextToken,
            ("maxResults" .=) <$> _gcMaxResults
          ]
      )

instance ToPath GetConnectors where
  toPath = const "/"

instance ToQuery GetConnectors where
  toQuery = const mempty

-- | /See:/ 'getConnectorsResponse' smart constructor.
data GetConnectorsResponse = GetConnectorsResponse'
  { _gcrrsNextToken ::
      !(Maybe Text),
    _gcrrsConnectorList ::
      !(Maybe [Connector]),
    _gcrrsResponseStatus ::
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

-- | Creates a value of 'GetConnectorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcrrsNextToken' - The token required to retrieve the next set of results. This value is null when there are no more results to return.
--
-- * 'gcrrsConnectorList' - Information about the registered connectors.
--
-- * 'gcrrsResponseStatus' - -- | The response status code.
getConnectorsResponse ::
  -- | 'gcrrsResponseStatus'
  Int ->
  GetConnectorsResponse
getConnectorsResponse pResponseStatus_ =
  GetConnectorsResponse'
    { _gcrrsNextToken = Nothing,
      _gcrrsConnectorList = Nothing,
      _gcrrsResponseStatus = pResponseStatus_
    }

-- | The token required to retrieve the next set of results. This value is null when there are no more results to return.
gcrrsNextToken :: Lens' GetConnectorsResponse (Maybe Text)
gcrrsNextToken = lens _gcrrsNextToken (\s a -> s {_gcrrsNextToken = a})

-- | Information about the registered connectors.
gcrrsConnectorList :: Lens' GetConnectorsResponse [Connector]
gcrrsConnectorList = lens _gcrrsConnectorList (\s a -> s {_gcrrsConnectorList = a}) . _Default . _Coerce

-- | -- | The response status code.
gcrrsResponseStatus :: Lens' GetConnectorsResponse Int
gcrrsResponseStatus = lens _gcrrsResponseStatus (\s a -> s {_gcrrsResponseStatus = a})

instance NFData GetConnectorsResponse
