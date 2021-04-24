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
-- Module      : Network.AWS.CodePipeline.ListTagsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the set of key-value pairs (metadata) that are used to manage the resource.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodePipeline.ListTagsForResource
  ( -- * Creating a Request
    listTagsForResource,
    ListTagsForResource,

    -- * Request Lenses
    ltfrNextToken,
    ltfrMaxResults,
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

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTagsForResource' smart constructor.
data ListTagsForResource = ListTagsForResource'
  { _ltfrNextToken ::
      !(Maybe Text),
    _ltfrMaxResults :: !(Maybe Nat),
    _ltfrResourceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsForResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrNextToken' - The token that was returned from the previous API call, which would be used to return the next page of the list. The ListTagsforResource call lists all available tags in one call and does not use pagination.
--
-- * 'ltfrMaxResults' - The maximum number of results to return in a single call.
--
-- * 'ltfrResourceARN' - The Amazon Resource Name (ARN) of the resource to get tags for.
listTagsForResource ::
  -- | 'ltfrResourceARN'
  Text ->
  ListTagsForResource
listTagsForResource pResourceARN_ =
  ListTagsForResource'
    { _ltfrNextToken = Nothing,
      _ltfrMaxResults = Nothing,
      _ltfrResourceARN = pResourceARN_
    }

-- | The token that was returned from the previous API call, which would be used to return the next page of the list. The ListTagsforResource call lists all available tags in one call and does not use pagination.
ltfrNextToken :: Lens' ListTagsForResource (Maybe Text)
ltfrNextToken = lens _ltfrNextToken (\s a -> s {_ltfrNextToken = a})

-- | The maximum number of results to return in a single call.
ltfrMaxResults :: Lens' ListTagsForResource (Maybe Natural)
ltfrMaxResults = lens _ltfrMaxResults (\s a -> s {_ltfrMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the resource to get tags for.
ltfrResourceARN :: Lens' ListTagsForResource Text
ltfrResourceARN = lens _ltfrResourceARN (\s a -> s {_ltfrResourceARN = a})

instance AWSPager ListTagsForResource where
  page rq rs
    | stop (rs ^. ltfrrrsNextToken) = Nothing
    | stop (rs ^. ltfrrrsTags) = Nothing
    | otherwise =
      Just $ rq & ltfrNextToken .~ rs ^. ltfrrrsNextToken

instance AWSRequest ListTagsForResource where
  type
    Rs ListTagsForResource =
      ListTagsForResourceResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          ListTagsForResourceResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTagsForResource

instance NFData ListTagsForResource

instance ToHeaders ListTagsForResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.ListTagsForResource" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTagsForResource where
  toJSON ListTagsForResource' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _ltfrNextToken,
            ("maxResults" .=) <$> _ltfrMaxResults,
            Just ("resourceArn" .= _ltfrResourceARN)
          ]
      )

instance ToPath ListTagsForResource where
  toPath = const "/"

instance ToQuery ListTagsForResource where
  toQuery = const mempty

-- | /See:/ 'listTagsForResourceResponse' smart constructor.
data ListTagsForResourceResponse = ListTagsForResourceResponse'
  { _ltfrrrsNextToken ::
      !(Maybe Text),
    _ltfrrrsTags ::
      !(Maybe [Tag]),
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
-- * 'ltfrrrsNextToken' - If the amount of returned information is significantly large, an identifier is also returned and can be used in a subsequent API call to return the next page of the list. The ListTagsforResource call lists all available tags in one call and does not use pagination.
--
-- * 'ltfrrrsTags' - The tags for the resource.
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

-- | If the amount of returned information is significantly large, an identifier is also returned and can be used in a subsequent API call to return the next page of the list. The ListTagsforResource call lists all available tags in one call and does not use pagination.
ltfrrrsNextToken :: Lens' ListTagsForResourceResponse (Maybe Text)
ltfrrrsNextToken = lens _ltfrrrsNextToken (\s a -> s {_ltfrrrsNextToken = a})

-- | The tags for the resource.
ltfrrrsTags :: Lens' ListTagsForResourceResponse [Tag]
ltfrrrsTags = lens _ltfrrrsTags (\s a -> s {_ltfrrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
ltfrrrsResponseStatus :: Lens' ListTagsForResourceResponse Int
ltfrrrsResponseStatus = lens _ltfrrrsResponseStatus (\s a -> s {_ltfrrrsResponseStatus = a})

instance NFData ListTagsForResourceResponse
