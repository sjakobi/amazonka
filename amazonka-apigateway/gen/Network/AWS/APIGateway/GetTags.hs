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
-- Module      : Network.AWS.APIGateway.GetTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the 'Tags' collection for a given resource.
module Network.AWS.APIGateway.GetTags
  ( -- * Creating a Request
    getTags,
    GetTags,

    -- * Request Lenses
    gtPosition,
    gtLimit,
    gtResourceARN,

    -- * Destructuring the Response
    getTagsResponse,
    GetTagsResponse,

    -- * Response Lenses
    gtrrsTags,
    gtrrsResponseStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Gets the 'Tags' collection for a given resource.
--
--
--
-- /See:/ 'getTags' smart constructor.
data GetTags = GetTags'
  { _gtPosition :: !(Maybe Text),
    _gtLimit :: !(Maybe Int),
    _gtResourceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtPosition' - (Not currently supported) The current pagination position in the paged result set.
--
-- * 'gtLimit' - (Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
--
-- * 'gtResourceARN' - [Required] The ARN of a resource that can be tagged.
getTags ::
  -- | 'gtResourceARN'
  Text ->
  GetTags
getTags pResourceARN_ =
  GetTags'
    { _gtPosition = Nothing,
      _gtLimit = Nothing,
      _gtResourceARN = pResourceARN_
    }

-- | (Not currently supported) The current pagination position in the paged result set.
gtPosition :: Lens' GetTags (Maybe Text)
gtPosition = lens _gtPosition (\s a -> s {_gtPosition = a})

-- | (Not currently supported) The maximum number of returned results per page. The default value is 25 and the maximum value is 500.
gtLimit :: Lens' GetTags (Maybe Int)
gtLimit = lens _gtLimit (\s a -> s {_gtLimit = a})

-- | [Required] The ARN of a resource that can be tagged.
gtResourceARN :: Lens' GetTags Text
gtResourceARN = lens _gtResourceARN (\s a -> s {_gtResourceARN = a})

instance AWSRequest GetTags where
  type Rs GetTags = GetTagsResponse
  request = get apiGateway
  response =
    receiveJSON
      ( \s h x ->
          GetTagsResponse'
            <$> (x .?> "tags" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable GetTags

instance NFData GetTags

instance ToHeaders GetTags where
  toHeaders =
    const
      ( mconcat
          ["Accept" =# ("application/json" :: ByteString)]
      )

instance ToPath GetTags where
  toPath GetTags' {..} =
    mconcat ["/tags/", toBS _gtResourceARN]

instance ToQuery GetTags where
  toQuery GetTags' {..} =
    mconcat
      ["position" =: _gtPosition, "limit" =: _gtLimit]

-- | The collection of tags. Each tag element is associated with a given resource.
--
--
--
-- /See:/ 'getTagsResponse' smart constructor.
data GetTagsResponse = GetTagsResponse'
  { _gtrrsTags ::
      !(Maybe (Map Text Text)),
    _gtrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gtrrsTags' - The collection of tags. Each tag element is associated with a given resource.
--
-- * 'gtrrsResponseStatus' - -- | The response status code.
getTagsResponse ::
  -- | 'gtrrsResponseStatus'
  Int ->
  GetTagsResponse
getTagsResponse pResponseStatus_ =
  GetTagsResponse'
    { _gtrrsTags = Nothing,
      _gtrrsResponseStatus = pResponseStatus_
    }

-- | The collection of tags. Each tag element is associated with a given resource.
gtrrsTags :: Lens' GetTagsResponse (HashMap Text Text)
gtrrsTags = lens _gtrrsTags (\s a -> s {_gtrrsTags = a}) . _Default . _Map

-- | -- | The response status code.
gtrrsResponseStatus :: Lens' GetTagsResponse Int
gtrrsResponseStatus = lens _gtrrsResponseStatus (\s a -> s {_gtrrsResponseStatus = a})

instance NFData GetTagsResponse
