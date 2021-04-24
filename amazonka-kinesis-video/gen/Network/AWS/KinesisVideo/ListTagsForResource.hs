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
-- Module      : Network.AWS.KinesisVideo.ListTagsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of tags associated with the specified signaling channel.
module Network.AWS.KinesisVideo.ListTagsForResource
  ( -- * Creating a Request
    listTagsForResource,
    ListTagsForResource,

    -- * Request Lenses
    ltfrNextToken,
    ltfrResourceARN,

    -- * Destructuring the Response
    listTagsForResourceResponse,
    ListTagsForResourceResponse,

    -- * Response Lenses
    ltfrrrsNextToken,
    ltfrrrsTags,
    ltfrrrsResponseStatus,
  )
where

import Network.AWS.KinesisVideo.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTagsForResource' smart constructor.
data ListTagsForResource = ListTagsForResource'
  { _ltfrNextToken ::
      !(Maybe Text),
    _ltfrResourceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsForResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrNextToken' - If you specify this parameter and the result of a @ListTagsForResource@ call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.
--
-- * 'ltfrResourceARN' - The Amazon Resource Name (ARN) of the signaling channel for which you want to list tags.
listTagsForResource ::
  -- | 'ltfrResourceARN'
  Text ->
  ListTagsForResource
listTagsForResource pResourceARN_ =
  ListTagsForResource'
    { _ltfrNextToken = Nothing,
      _ltfrResourceARN = pResourceARN_
    }

-- | If you specify this parameter and the result of a @ListTagsForResource@ call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.
ltfrNextToken :: Lens' ListTagsForResource (Maybe Text)
ltfrNextToken = lens _ltfrNextToken (\s a -> s {_ltfrNextToken = a})

-- | The Amazon Resource Name (ARN) of the signaling channel for which you want to list tags.
ltfrResourceARN :: Lens' ListTagsForResource Text
ltfrResourceARN = lens _ltfrResourceARN (\s a -> s {_ltfrResourceARN = a})

instance AWSRequest ListTagsForResource where
  type
    Rs ListTagsForResource =
      ListTagsForResourceResponse
  request = postJSON kinesisVideo
  response =
    receiveJSON
      ( \s h x ->
          ListTagsForResourceResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTagsForResource

instance NFData ListTagsForResource

instance ToHeaders ListTagsForResource where
  toHeaders = const mempty

instance ToJSON ListTagsForResource where
  toJSON ListTagsForResource' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltfrNextToken,
            Just ("ResourceARN" .= _ltfrResourceARN)
          ]
      )

instance ToPath ListTagsForResource where
  toPath = const "/ListTagsForResource"

instance ToQuery ListTagsForResource where
  toQuery = const mempty

-- | /See:/ 'listTagsForResourceResponse' smart constructor.
data ListTagsForResourceResponse = ListTagsForResourceResponse'
  { _ltfrrrsNextToken ::
      !(Maybe Text),
    _ltfrrrsTags ::
      !( Maybe
           ( Map
               Text
               Text
           )
       ),
    _ltfrrrsResponseStatus ::
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

-- | Creates a value of 'ListTagsForResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrrrsNextToken' - If you specify this parameter and the result of a @ListTagsForResource@ call is truncated, the response includes a token that you can use in the next request to fetch the next set of tags.
--
-- * 'ltfrrrsTags' - A map of tag keys and values associated with the specified signaling channel.
--
-- * 'ltfrrrsResponseStatus' - -- | The response status code.
listTagsForResourceResponse ::
  -- | 'ltfrrrsResponseStatus'
  Int ->
  ListTagsForResourceResponse
listTagsForResourceResponse pResponseStatus_ =
  ListTagsForResourceResponse'
    { _ltfrrrsNextToken =
        Nothing,
      _ltfrrrsTags = Nothing,
      _ltfrrrsResponseStatus = pResponseStatus_
    }

-- | If you specify this parameter and the result of a @ListTagsForResource@ call is truncated, the response includes a token that you can use in the next request to fetch the next set of tags.
ltfrrrsNextToken :: Lens' ListTagsForResourceResponse (Maybe Text)
ltfrrrsNextToken = lens _ltfrrrsNextToken (\s a -> s {_ltfrrrsNextToken = a})

-- | A map of tag keys and values associated with the specified signaling channel.
ltfrrrsTags :: Lens' ListTagsForResourceResponse (HashMap Text Text)
ltfrrrsTags = lens _ltfrrrsTags (\s a -> s {_ltfrrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
ltfrrrsResponseStatus :: Lens' ListTagsForResourceResponse Int
ltfrrrsResponseStatus = lens _ltfrrrsResponseStatus (\s a -> s {_ltfrrrsResponseStatus = a})

instance NFData ListTagsForResourceResponse
