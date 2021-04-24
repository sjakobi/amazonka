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
-- Module      : Network.AWS.ElasticSearch.ListTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all tags for the given Elasticsearch domain.
module Network.AWS.ElasticSearch.ListTags
  ( -- * Creating a Request
    listTags,
    ListTags,

    -- * Request Lenses
    ltARN,

    -- * Destructuring the Response
    listTagsResponse,
    ListTagsResponse,

    -- * Response Lenses
    ltrrsTagList,
    ltrrsResponseStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Container for the parameters to the @'ListTags' @ operation. Specify the @ARN@ for the Elasticsearch domain to which the tags are attached that you want to view are attached.
--
--
--
-- /See:/ 'listTags' smart constructor.
newtype ListTags = ListTags' {_ltARN :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltARN' - Specify the @ARN@ for the Elasticsearch domain to which the tags are attached that you want to view.
listTags ::
  -- | 'ltARN'
  Text ->
  ListTags
listTags pARN_ = ListTags' {_ltARN = pARN_}

-- | Specify the @ARN@ for the Elasticsearch domain to which the tags are attached that you want to view.
ltARN :: Lens' ListTags Text
ltARN = lens _ltARN (\s a -> s {_ltARN = a})

instance AWSRequest ListTags where
  type Rs ListTags = ListTagsResponse
  request = get elasticSearch
  response =
    receiveJSON
      ( \s h x ->
          ListTagsResponse'
            <$> (x .?> "TagList" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable ListTags

instance NFData ListTags

instance ToHeaders ListTags where
  toHeaders = const mempty

instance ToPath ListTags where
  toPath = const "/2015-01-01/tags/"

instance ToQuery ListTags where
  toQuery ListTags' {..} = mconcat ["arn" =: _ltARN]

-- | The result of a @ListTags@ operation. Contains tags for all requested Elasticsearch domains.
--
--
--
-- /See:/ 'listTagsResponse' smart constructor.
data ListTagsResponse = ListTagsResponse'
  { _ltrrsTagList ::
      !(Maybe [Tag]),
    _ltrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsTagList' - List of @Tag@ for the requested Elasticsearch domain.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTagsResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTagsResponse
listTagsResponse pResponseStatus_ =
  ListTagsResponse'
    { _ltrrsTagList = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | List of @Tag@ for the requested Elasticsearch domain.
ltrrsTagList :: Lens' ListTagsResponse [Tag]
ltrrsTagList = lens _ltrrsTagList (\s a -> s {_ltrrsTagList = a}) . _Default . _Coerce

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTagsResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTagsResponse
