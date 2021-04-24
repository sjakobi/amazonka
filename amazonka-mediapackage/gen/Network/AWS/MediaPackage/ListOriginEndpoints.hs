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
-- Module      : Network.AWS.MediaPackage.ListOriginEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a collection of OriginEndpoint records.
--
-- This operation returns paginated results.
module Network.AWS.MediaPackage.ListOriginEndpoints
  ( -- * Creating a Request
    listOriginEndpoints,
    ListOriginEndpoints,

    -- * Request Lenses
    loeNextToken,
    loeChannelId,
    loeMaxResults,

    -- * Destructuring the Response
    listOriginEndpointsResponse,
    ListOriginEndpointsResponse,

    -- * Response Lenses
    loerrsOriginEndpoints,
    loerrsNextToken,
    loerrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaPackage.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listOriginEndpoints' smart constructor.
data ListOriginEndpoints = ListOriginEndpoints'
  { _loeNextToken ::
      !(Maybe Text),
    _loeChannelId :: !(Maybe Text),
    _loeMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOriginEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loeNextToken' - A token used to resume pagination from the end of a previous request.
--
-- * 'loeChannelId' - When specified, the request will return only OriginEndpoints associated with the given Channel ID.
--
-- * 'loeMaxResults' - The upper bound on the number of records to return.
listOriginEndpoints ::
  ListOriginEndpoints
listOriginEndpoints =
  ListOriginEndpoints'
    { _loeNextToken = Nothing,
      _loeChannelId = Nothing,
      _loeMaxResults = Nothing
    }

-- | A token used to resume pagination from the end of a previous request.
loeNextToken :: Lens' ListOriginEndpoints (Maybe Text)
loeNextToken = lens _loeNextToken (\s a -> s {_loeNextToken = a})

-- | When specified, the request will return only OriginEndpoints associated with the given Channel ID.
loeChannelId :: Lens' ListOriginEndpoints (Maybe Text)
loeChannelId = lens _loeChannelId (\s a -> s {_loeChannelId = a})

-- | The upper bound on the number of records to return.
loeMaxResults :: Lens' ListOriginEndpoints (Maybe Natural)
loeMaxResults = lens _loeMaxResults (\s a -> s {_loeMaxResults = a}) . mapping _Nat

instance AWSPager ListOriginEndpoints where
  page rq rs
    | stop (rs ^. loerrsNextToken) = Nothing
    | stop (rs ^. loerrsOriginEndpoints) = Nothing
    | otherwise =
      Just $ rq & loeNextToken .~ rs ^. loerrsNextToken

instance AWSRequest ListOriginEndpoints where
  type
    Rs ListOriginEndpoints =
      ListOriginEndpointsResponse
  request = get mediaPackage
  response =
    receiveJSON
      ( \s h x ->
          ListOriginEndpointsResponse'
            <$> (x .?> "originEndpoints" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListOriginEndpoints

instance NFData ListOriginEndpoints

instance ToHeaders ListOriginEndpoints where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListOriginEndpoints where
  toPath = const "/origin_endpoints"

instance ToQuery ListOriginEndpoints where
  toQuery ListOriginEndpoints' {..} =
    mconcat
      [ "nextToken" =: _loeNextToken,
        "channelId" =: _loeChannelId,
        "maxResults" =: _loeMaxResults
      ]

-- | /See:/ 'listOriginEndpointsResponse' smart constructor.
data ListOriginEndpointsResponse = ListOriginEndpointsResponse'
  { _loerrsOriginEndpoints ::
      !( Maybe
           [OriginEndpoint]
       ),
    _loerrsNextToken ::
      !(Maybe Text),
    _loerrsResponseStatus ::
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

-- | Creates a value of 'ListOriginEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loerrsOriginEndpoints' - A list of OriginEndpoint records.
--
-- * 'loerrsNextToken' - A token that can be used to resume pagination from the end of the collection.
--
-- * 'loerrsResponseStatus' - -- | The response status code.
listOriginEndpointsResponse ::
  -- | 'loerrsResponseStatus'
  Int ->
  ListOriginEndpointsResponse
listOriginEndpointsResponse pResponseStatus_ =
  ListOriginEndpointsResponse'
    { _loerrsOriginEndpoints =
        Nothing,
      _loerrsNextToken = Nothing,
      _loerrsResponseStatus = pResponseStatus_
    }

-- | A list of OriginEndpoint records.
loerrsOriginEndpoints :: Lens' ListOriginEndpointsResponse [OriginEndpoint]
loerrsOriginEndpoints = lens _loerrsOriginEndpoints (\s a -> s {_loerrsOriginEndpoints = a}) . _Default . _Coerce

-- | A token that can be used to resume pagination from the end of the collection.
loerrsNextToken :: Lens' ListOriginEndpointsResponse (Maybe Text)
loerrsNextToken = lens _loerrsNextToken (\s a -> s {_loerrsNextToken = a})

-- | -- | The response status code.
loerrsResponseStatus :: Lens' ListOriginEndpointsResponse Int
loerrsResponseStatus = lens _loerrsResponseStatus (\s a -> s {_loerrsResponseStatus = a})

instance NFData ListOriginEndpointsResponse
