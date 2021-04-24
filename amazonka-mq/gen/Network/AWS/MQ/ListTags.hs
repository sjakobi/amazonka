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
-- Module      : Network.AWS.MQ.ListTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists tags for a resource.
module Network.AWS.MQ.ListTags
  ( -- * Creating a Request
    listTags,
    ListTags,

    -- * Request Lenses
    ltResourceARN,

    -- * Destructuring the Response
    listTagsResponse,
    ListTagsResponse,

    -- * Response Lenses
    ltrrsTags,
    ltrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MQ.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listTags' smart constructor.
newtype ListTags = ListTags' {_ltResourceARN :: Text}
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltResourceARN' - The Amazon Resource Name (ARN) of the resource tag.
listTags ::
  -- | 'ltResourceARN'
  Text ->
  ListTags
listTags pResourceARN_ =
  ListTags' {_ltResourceARN = pResourceARN_}

-- | The Amazon Resource Name (ARN) of the resource tag.
ltResourceARN :: Lens' ListTags Text
ltResourceARN = lens _ltResourceARN (\s a -> s {_ltResourceARN = a})

instance AWSRequest ListTags where
  type Rs ListTags = ListTagsResponse
  request = get mq
  response =
    receiveJSON
      ( \s h x ->
          ListTagsResponse'
            <$> (x .?> "tags" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable ListTags

instance NFData ListTags

instance ToHeaders ListTags where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListTags where
  toPath ListTags' {..} =
    mconcat ["/v1/tags/", toBS _ltResourceARN]

instance ToQuery ListTags where
  toQuery = const mempty

-- | /See:/ 'listTagsResponse' smart constructor.
data ListTagsResponse = ListTagsResponse'
  { _ltrrsTags ::
      !(Maybe (Map Text Text)),
    _ltrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrsTags' - The key-value pair for the resource tag.
--
-- * 'ltrrsResponseStatus' - -- | The response status code.
listTagsResponse ::
  -- | 'ltrrsResponseStatus'
  Int ->
  ListTagsResponse
listTagsResponse pResponseStatus_ =
  ListTagsResponse'
    { _ltrrsTags = Nothing,
      _ltrrsResponseStatus = pResponseStatus_
    }

-- | The key-value pair for the resource tag.
ltrrsTags :: Lens' ListTagsResponse (HashMap Text Text)
ltrrsTags = lens _ltrrsTags (\s a -> s {_ltrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
ltrrsResponseStatus :: Lens' ListTagsResponse Int
ltrrsResponseStatus = lens _ltrrsResponseStatus (\s a -> s {_ltrrsResponseStatus = a})

instance NFData ListTagsResponse
