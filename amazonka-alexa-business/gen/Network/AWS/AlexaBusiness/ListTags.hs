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
-- Module      : Network.AWS.AlexaBusiness.ListTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all tags for the specified resource.
--
--
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.ListTags
  ( -- * Creating a Request
    listTags,
    ListTags,

    -- * Request Lenses
    ltNextToken,
    ltMaxResults,
    ltARN,

    -- * Destructuring the Response
    listTagsResponse,
    ListTagsResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTags,
    ltrrsResponseStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTags' smart constructor.
data ListTags = ListTags'
  { _ltNextToken ::
      !(Maybe Text),
    _ltMaxResults :: !(Maybe Nat),
    _ltARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
--
-- * 'ltMaxResults' - The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
--
-- * 'ltARN' - The ARN of the specified resource for which to list tags.
listTags ::
  -- | 'ltARN'
  Text ->
  ListTags
listTags pARN_ =
  ListTags'
    { _ltNextToken = Nothing,
      _ltMaxResults = Nothing,
      _ltARN = pARN_
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by @MaxResults@ .
ltNextToken :: Lens' ListTags (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | The maximum number of results to include in the response. If more results exist than the specified @MaxResults@ value, a token is included in the response so that the remaining results can be retrieved.
ltMaxResults :: Lens' ListTags (Maybe Natural)
ltMaxResults = lens _ltMaxResults (\s a -> s {_ltMaxResults = a}) . mapping _Nat

-- | The ARN of the specified resource for which to list tags.
ltARN :: Lens' ListTags Text
ltARN = lens _ltARN (\s a -> s {_ltARN = a})

instance AWSPager ListTags where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTags) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTags where
  type Rs ListTags = ListTagsResponse
  request = postJSON alexaBusiness
  response =
    receiveJSON
      ( \s h x ->
          ListTagsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListTags

instance NFData ListTags

instance ToHeaders ListTags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AlexaForBusiness.ListTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTags where
  toJSON ListTags' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltNextToken,
            ("MaxResults" .=) <$> _ltMaxResults,
            Just ("Arn" .= _ltARN)
          ]
      )

instance ToPath ListTags where
  toPath = const "/"

instance ToQuery ListTags where
  toQuery = const mempty

-- | /See:/ 'listTagsResponse' smart constructor.
data ListTagsResponse = ListTagsResponse'
  { _ltrrsNextToken ::
      !(Maybe Text),
    _ltrrsTags :: !(Maybe [Tag]),
    _ltrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - The token returned to indicate that there is more data available.
--
-- * 'ltrrsTags' - The tags requested for the specified resource.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTagsResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTagsResponse
listTagsResponse pResponseStatus_ =
  ListTagsResponse'
    { _ltrrsNextToken = Nothing,
      _ltrrsTags = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | The token returned to indicate that there is more data available.
ltrrsNextToken :: Lens' ListTagsResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | The tags requested for the specified resource.
ltrrsTags :: Lens' ListTagsResponse [Tag]
ltrrsTags = lens _ltrrsTags (\s a -> s {_ltrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTagsResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTagsResponse
