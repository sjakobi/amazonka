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
-- Module      : Network.AWS.DAX.ListTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the tags for a DAX cluster. You can call @ListTags@ up to 10 times per second, per account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.DAX.ListTags
  ( -- * Creating a Request
    listTags,
    ListTags,

    -- * Request Lenses
    ltNextToken,
    ltResourceName,

    -- * Destructuring the Response
    listTagsResponse,
    ListTagsResponse,

    -- * Response Lenses
    ltrrsNextToken,
    ltrrsTags,
    ltrrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTags' smart constructor.
data ListTags = ListTags'
  { _ltNextToken ::
      !(Maybe Text),
    _ltResourceName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltNextToken' - An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token.
--
-- * 'ltResourceName' - The name of the DAX resource to which the tags belong.
listTags ::
  -- | 'ltResourceName'
  Text ->
  ListTags
listTags pResourceName_ =
  ListTags'
    { _ltNextToken = Nothing,
      _ltResourceName = pResourceName_
    }

-- | An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token.
ltNextToken :: Lens' ListTags (Maybe Text)
ltNextToken = lens _ltNextToken (\s a -> s {_ltNextToken = a})

-- | The name of the DAX resource to which the tags belong.
ltResourceName :: Lens' ListTags Text
ltResourceName = lens _ltResourceName (\s a -> s {_ltResourceName = a})

instance AWSPager ListTags where
  page rq rs
    | stop (rs ^. ltrrsNextToken) = Nothing
    | stop (rs ^. ltrrsTags) = Nothing
    | otherwise =
      Just $ rq & ltNextToken .~ rs ^. ltrrsNextToken

instance AWSRequest ListTags where
  type Rs ListTags = ListTagsResponse
  request = postJSON dax
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
              =# ("AmazonDAXV3.ListTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTags where
  toJSON ListTags' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ltNextToken,
            Just ("ResourceName" .= _ltResourceName)
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
-- * 'ltrrsNextToken' - If this value is present, there are additional results to be displayed. To retrieve them, call @ListTags@ again, with @NextToken@ set to this value.
--
-- * 'ltrrsTags' - A list of tags currently associated with the DAX cluster.
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

-- | If this value is present, there are additional results to be displayed. To retrieve them, call @ListTags@ again, with @NextToken@ set to this value.
ltrrsNextToken :: Lens' ListTagsResponse (Maybe Text)
ltrrsNextToken = lens _ltrrsNextToken (\s a -> s {_ltrrsNextToken = a})

-- | A list of tags currently associated with the DAX cluster.
ltrrsTags :: Lens' ListTagsResponse [Tag]
ltrrsTags = lens _ltrrsTags (\s a -> s {_ltrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTagsResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTagsResponse
