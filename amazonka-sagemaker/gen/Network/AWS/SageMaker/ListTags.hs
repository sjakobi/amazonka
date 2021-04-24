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
-- Module      : Network.AWS.SageMaker.ListTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the tags for the specified Amazon SageMaker resource.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListTags
  ( -- * Creating a Request
    listTags,
    ListTags,

    -- * Request Lenses
    ltsNextToken,
    ltsMaxResults,
    ltsResourceARN,

    -- * Destructuring the Response
    listTagsResponse,
    ListTagsResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTags,
    ltrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listTags' smart constructor.
data ListTags = ListTags'
  { _ltsNextToken ::
      !(Maybe Text),
    _ltsMaxResults :: !(Maybe Nat),
    _ltsResourceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltsNextToken' - If the response to the previous @ListTags@ request is truncated, Amazon SageMaker returns this token. To retrieve the next set of tags, use it in the subsequent request.
--
-- * 'ltsMaxResults' - Maximum number of tags to return.
--
-- * 'ltsResourceARN' - The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.
listTags ::
  -- | 'ltsResourceARN'
  Text ->
  ListTags
listTags pResourceARN_ =
  ListTags'
    { _ltsNextToken = Nothing,
      _ltsMaxResults = Nothing,
      _ltsResourceARN = pResourceARN_
    }

-- | If the response to the previous @ListTags@ request is truncated, Amazon SageMaker returns this token. To retrieve the next set of tags, use it in the subsequent request.
ltsNextToken :: Lens' ListTags (Maybe Text)
ltsNextToken = lens _ltsNextToken (\s a -> s {_ltsNextToken = a})

-- | Maximum number of tags to return.
ltsMaxResults :: Lens' ListTags (Maybe Natural)
ltsMaxResults = lens _ltsMaxResults (\s a -> s {_ltsMaxResults = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.
ltsResourceARN :: Lens' ListTags Text
ltsResourceARN = lens _ltsResourceARN (\s a -> s {_ltsResourceARN = a})

instance AWSPager ListTags where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTags) = Nothing
    | otherwise =
      Just $ rq & ltsNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTags where
  type Rs ListTags = ListTagsResponse
  request = postJSON sageMaker
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
              =# ("SageMaker.ListTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTags where
  toJSON ListTags' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltsNextToken,
            ("MaxResults" .=) <$> _ltsMaxResults,
            Just ("ResourceArn" .= _ltsResourceARN)
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
-- * 'ltrrsNextToken' - If response is truncated, Amazon SageMaker includes a token in the response. You can use this token in your subsequent request to fetch next set of tokens.
--
-- * 'ltrrsTags' - An array of @Tag@ objects, each with a tag key and a value.
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

-- | If response is truncated, Amazon SageMaker includes a token in the response. You can use this token in your subsequent request to fetch next set of tokens.
ltrrsNextToken :: Lens' ListTagsResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | An array of @Tag@ objects, each with a tag key and a value.
ltrrsTags :: Lens' ListTagsResponse [Tag]
ltrrsTags = lens _ltrrsTags (\s a -> s {_ltrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTagsResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTagsResponse
