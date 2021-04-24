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
-- Module      : Network.AWS.MediaConvert.DescribeEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Send an request with an empty body to the regional API endpoint to get your account API endpoint.
--
-- This operation returns paginated results.
module Network.AWS.MediaConvert.DescribeEndpoints
  ( -- * Creating a Request
    describeEndpoints,
    DescribeEndpoints,

    -- * Request Lenses
    deNextToken,
    deMaxResults,
    deMode,

    -- * Destructuring the Response
    describeEndpointsResponse,
    DescribeEndpointsResponse,

    -- * Response Lenses
    derrsNextToken,
    derrsEndpoints,
    derrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | DescribeEndpointsRequest
--
-- /See:/ 'describeEndpoints' smart constructor.
data DescribeEndpoints = DescribeEndpoints'
  { _deNextToken ::
      !(Maybe Text),
    _deMaxResults :: !(Maybe Int),
    _deMode ::
      !(Maybe DescribeEndpointsMode)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deNextToken' - Use this string, provided with the response to a previous request, to request the next batch of endpoints.
--
-- * 'deMaxResults' - Optional. Max number of endpoints, up to twenty, that will be returned at one time.
--
-- * 'deMode' - Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist.
describeEndpoints ::
  DescribeEndpoints
describeEndpoints =
  DescribeEndpoints'
    { _deNextToken = Nothing,
      _deMaxResults = Nothing,
      _deMode = Nothing
    }

-- | Use this string, provided with the response to a previous request, to request the next batch of endpoints.
deNextToken :: Lens' DescribeEndpoints (Maybe Text)
deNextToken = lens _deNextToken (\s a -> s {_deNextToken = a})

-- | Optional. Max number of endpoints, up to twenty, that will be returned at one time.
deMaxResults :: Lens' DescribeEndpoints (Maybe Int)
deMaxResults = lens _deMaxResults (\s a -> s {_deMaxResults = a})

-- | Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist.
deMode :: Lens' DescribeEndpoints (Maybe DescribeEndpointsMode)
deMode = lens _deMode (\s a -> s {_deMode = a})

instance AWSPager DescribeEndpoints where
  page rq rs
    | stop (rs ^. derrsNextToken) = Nothing
    | stop (rs ^. derrsEndpoints) = Nothing
    | otherwise =
      Just $ rq & deNextToken .~ rs ^. derrsNextToken

instance AWSRequest DescribeEndpoints where
  type Rs DescribeEndpoints = DescribeEndpointsResponse
  request = postJSON mediaConvert
  response =
    receiveJSON
      ( \s h x ->
          DescribeEndpointsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "endpoints" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEndpoints

instance NFData DescribeEndpoints

instance ToHeaders DescribeEndpoints where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEndpoints where
  toJSON DescribeEndpoints' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _deNextToken,
            ("maxResults" .=) <$> _deMaxResults,
            ("mode" .=) <$> _deMode
          ]
      )

instance ToPath DescribeEndpoints where
  toPath = const "/2017-08-29/endpoints"

instance ToQuery DescribeEndpoints where
  toQuery = const mempty

-- | /See:/ 'describeEndpointsResponse' smart constructor.
data DescribeEndpointsResponse = DescribeEndpointsResponse'
  { _derrsNextToken ::
      !(Maybe Text),
    _derrsEndpoints ::
      !(Maybe [Endpoint]),
    _derrsResponseStatus ::
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

-- | Creates a value of 'DescribeEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derrsNextToken' - Use this string to request the next batch of endpoints.
--
-- * 'derrsEndpoints' - List of endpoints
--
-- * 'derrsResponseStatus' - -- | The response status code.
describeEndpointsResponse ::
  -- | 'derrsResponseStatus'
  Int ->
  DescribeEndpointsResponse
describeEndpointsResponse pResponseStatus_ =
  DescribeEndpointsResponse'
    { _derrsNextToken =
        Nothing,
      _derrsEndpoints = Nothing,
      _derrsResponseStatus = pResponseStatus_
    }

-- | Use this string to request the next batch of endpoints.
derrsNextToken :: Lens' DescribeEndpointsResponse (Maybe Text)
derrsNextToken = lens _derrsNextToken (\s a -> s {_derrsNextToken = a})

-- | List of endpoints
derrsEndpoints :: Lens' DescribeEndpointsResponse [Endpoint]
derrsEndpoints = lens _derrsEndpoints (\s a -> s {_derrsEndpoints = a}) . _Default . _Coerce

-- | -- | The response status code.
derrsResponseStatus :: Lens' DescribeEndpointsResponse Int
derrsResponseStatus = lens _derrsResponseStatus (\s a -> s {_derrsResponseStatus = a})

instance NFData DescribeEndpointsResponse
