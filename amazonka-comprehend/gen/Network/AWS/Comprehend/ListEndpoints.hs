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
-- Module      : Network.AWS.Comprehend.ListEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of all existing endpoints that you've created.
module Network.AWS.Comprehend.ListEndpoints
  ( -- * Creating a Request
    listEndpoints,
    ListEndpoints,

    -- * Request Lenses
    leNextToken,
    leMaxResults,
    leFilter,

    -- * Destructuring the Response
    listEndpointsResponse,
    ListEndpointsResponse,

    -- * Response Lenses
    lerrsNextToken,
    lerrsEndpointPropertiesList,
    lerrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listEndpoints' smart constructor.
data ListEndpoints = ListEndpoints'
  { _leNextToken ::
      !(Maybe Text),
    _leMaxResults :: !(Maybe Nat),
    _leFilter :: !(Maybe EndpointFilter)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leNextToken' - Identifies the next page of results to return.
--
-- * 'leMaxResults' - The maximum number of results to return in each page. The default is 100.
--
-- * 'leFilter' - Filters the endpoints that are returned. You can filter endpoints on their name, model, status, or the date and time that they were created. You can only set one filter at a time.
listEndpoints ::
  ListEndpoints
listEndpoints =
  ListEndpoints'
    { _leNextToken = Nothing,
      _leMaxResults = Nothing,
      _leFilter = Nothing
    }

-- | Identifies the next page of results to return.
leNextToken :: Lens' ListEndpoints (Maybe Text)
leNextToken = lens _leNextToken (\s a -> s {_leNextToken = a})

-- | The maximum number of results to return in each page. The default is 100.
leMaxResults :: Lens' ListEndpoints (Maybe Natural)
leMaxResults = lens _leMaxResults (\s a -> s {_leMaxResults = a}) . mapping _Nat

-- | Filters the endpoints that are returned. You can filter endpoints on their name, model, status, or the date and time that they were created. You can only set one filter at a time.
leFilter :: Lens' ListEndpoints (Maybe EndpointFilter)
leFilter = lens _leFilter (\s a -> s {_leFilter = a})

instance AWSRequest ListEndpoints where
  type Rs ListEndpoints = ListEndpointsResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          ListEndpointsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "EndpointPropertiesList" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListEndpoints

instance NFData ListEndpoints

instance ToHeaders ListEndpoints where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("Comprehend_20171127.ListEndpoints" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListEndpoints where
  toJSON ListEndpoints' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _leNextToken,
            ("MaxResults" .=) <$> _leMaxResults,
            ("Filter" .=) <$> _leFilter
          ]
      )

instance ToPath ListEndpoints where
  toPath = const "/"

instance ToQuery ListEndpoints where
  toQuery = const mempty

-- | /See:/ 'listEndpointsResponse' smart constructor.
data ListEndpointsResponse = ListEndpointsResponse'
  { _lerrsNextToken ::
      !(Maybe Text),
    _lerrsEndpointPropertiesList ::
      !( Maybe
           [EndpointProperties]
       ),
    _lerrsResponseStatus ::
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

-- | Creates a value of 'ListEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerrsNextToken' - Identifies the next page of results to return.
--
-- * 'lerrsEndpointPropertiesList' - Displays a list of endpoint properties being retrieved by the service in response to the request.
--
-- * 'lerrsResponseStatus' - -- | The response status code.
listEndpointsResponse ::
  -- | 'lerrsResponseStatus'
  Int ->
  ListEndpointsResponse
listEndpointsResponse pResponseStatus_ =
  ListEndpointsResponse'
    { _lerrsNextToken = Nothing,
      _lerrsEndpointPropertiesList = Nothing,
      _lerrsResponseStatus = pResponseStatus_
    }

-- | Identifies the next page of results to return.
lerrsNextToken :: Lens' ListEndpointsResponse (Maybe Text)
lerrsNextToken = lens _lerrsNextToken (\s a -> s {_lerrsNextToken = a})

-- | Displays a list of endpoint properties being retrieved by the service in response to the request.
lerrsEndpointPropertiesList :: Lens' ListEndpointsResponse [EndpointProperties]
lerrsEndpointPropertiesList = lens _lerrsEndpointPropertiesList (\s a -> s {_lerrsEndpointPropertiesList = a}) . _Default . _Coerce

-- | -- | The response status code.
lerrsResponseStatus :: Lens' ListEndpointsResponse Int
lerrsResponseStatus = lens _lerrsResponseStatus (\s a -> s {_lerrsResponseStatus = a})

instance NFData ListEndpointsResponse
