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
-- Module      : Network.AWS.CloudHSMv2.ListTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of tags for the specified AWS CloudHSM cluster.
--
--
-- This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a @NextToken@ value. Use this value in a subsequent @ListTags@ request to get more tags. When you receive a response with no @NextToken@ (or an empty or null value), that means there are no more tags to get.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudHSMv2.ListTags
  ( -- * Creating a Request
    listTags,
    ListTags,

    -- * Request Lenses
    ltNextToken,
    ltMaxResults,
    ltResourceId,

    -- * Destructuring the Response
    listTagsResponse,
    ListTagsResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsResponseStatus,
    ltrrsTagList,
  )
where

import Network.AWS.CloudHSMv2.Types
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
    _ltResourceId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - The @NextToken@ value that you received in the previous response. Use this value to get more tags.
--
-- * 'ltMaxResults' - The maximum number of tags to return in the response. When there are more tags than the number you specify, the response contains a @NextToken@ value.
--
-- * 'ltResourceId' - The cluster identifier (ID) for the cluster whose tags you are getting. To find the cluster ID, use 'DescribeClusters' .
listTags ::
  -- | 'ltResourceId'
  Text ->
  ListTags
listTags pResourceId_ =
  ListTags'
    { _ltNextToken = Nothing,
      _ltMaxResults = Nothing,
      _ltResourceId = pResourceId_
    }

-- | The @NextToken@ value that you received in the previous response. Use this value to get more tags.
ltNextToken :: Lens' ListTags (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | The maximum number of tags to return in the response. When there are more tags than the number you specify, the response contains a @NextToken@ value.
ltMaxResults :: Lens' ListTags (Maybe Natural)
ltMaxResults = lens _ltMaxResults (\s a -> s {_ltMaxResults = a}) . mapping _Nat

-- | The cluster identifier (ID) for the cluster whose tags you are getting. To find the cluster ID, use 'DescribeClusters' .
ltResourceId :: Lens' ListTags Text
ltResourceId = lens _ltResourceId (\s a -> s {_ltResourceId = a})

instance AWSPager ListTags where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTagList) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTags where
  type Rs ListTags = ListTagsResponse
  request = postJSON cloudHSMv2
  response =
    receiveJSON
      ( \s h x ->
          ListTagsResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "TagList" .!@ mempty)
      )

instance Hashable ListTags

instance NFData ListTags

instance ToHeaders ListTags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("BaldrApiService.ListTags" :: ByteString),
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
            Just ("ResourceId" .= _ltResourceId)
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
    _ltrrsResponseStatus :: !Int,
    _ltrrsTagList :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsNextToken' - An opaque string that indicates that the response contains only a subset of tags. Use this value in a subsequent @ListTags@ request to get more tags.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
--
-- * 'ltrrsTagList' - A list of tags.
listTagsResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTagsResponse
listTagsResponse pResponseStatus_ =
  ListTagsResponse'
    { _ltrrsNextToken = Nothing,
      _ltrrsResponseStatus = pResponseStatus_,
      _ltrrsTagList = mempty
    }

-- | An opaque string that indicates that the response contains only a subset of tags. Use this value in a subsequent @ListTags@ request to get more tags.
ltrrsNextToken :: Lens' ListTagsResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTagsResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

-- | A list of tags.
ltrrsTagList :: Lens' ListTagsResponse [Tag]
ltrrsTagList = lens _ltrrsTagList (\s a -> s {_ltrrsTagList = a}) . _Coerce

instance NFData ListTagsResponse
