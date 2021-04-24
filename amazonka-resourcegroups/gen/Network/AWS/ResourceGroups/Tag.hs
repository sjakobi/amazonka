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
-- Module      : Network.AWS.ResourceGroups.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds tags to a resource group with the specified ARN. Existing tags on a resource group are not changed if they are not specified in the request parameters.
--
--
-- /Important:/ Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data.
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * @resource-groups:Tag@
module Network.AWS.ResourceGroups.Tag
  ( -- * Creating a Request
    tag,
    Tag,

    -- * Request Lenses
    tagARN,
    tagTags,

    -- * Destructuring the Response
    tagResponse,
    TagResponse,

    -- * Response Lenses
    trrsARN,
    trrsTags,
    trrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.ResourceGroups.Types
import Network.AWS.Response

-- | /See:/ 'tag' smart constructor.
data Tag = Tag'
  { _tagARN :: !Text,
    _tagTags :: !(Map Text Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Tag' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tagARN' - The ARN of the resource group to which to add tags.
--
-- * 'tagTags' - The tags to add to the specified resource group. A tag is a string-to-string map of key-value pairs.
tag ::
  -- | 'tagARN'
  Text ->
  Tag
tag pARN_ = Tag' {_tagARN = pARN_, _tagTags = mempty}

-- | The ARN of the resource group to which to add tags.
tagARN :: Lens' Tag Text
tagARN = lens _tagARN (\s a -> s {_tagARN = a})

-- | The tags to add to the specified resource group. A tag is a string-to-string map of key-value pairs.
tagTags :: Lens' Tag (HashMap Text Text)
tagTags = lens _tagTags (\s a -> s {_tagTags = a}) . _Map

instance AWSRequest Tag where
  type Rs Tag = TagResponse
  request = putJSON resourceGroups
  response =
    receiveJSON
      ( \s h x ->
          TagResponse'
            <$> (x .?> "Arn")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable Tag

instance NFData Tag

instance ToHeaders Tag where
  toHeaders = const mempty

instance ToJSON Tag where
  toJSON Tag' {..} =
    object (catMaybes [Just ("Tags" .= _tagTags)])

instance ToPath Tag where
  toPath Tag' {..} =
    mconcat ["/resources/", toBS _tagARN, "/tags"]

instance ToQuery Tag where
  toQuery = const mempty

-- | /See:/ 'tagResponse' smart constructor.
data TagResponse = TagResponse'
  { _trrsARN ::
      !(Maybe Text),
    _trrsTags :: !(Maybe (Map Text Text)),
    _trrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrsARN' - The ARN of the tagged resource.
--
-- * 'trrsTags' - The tags that have been added to the specified resource group.
--
-- * 'trrsResponseStatus' - -- | The response status code.
tagResponse ::
  -- | 'trrsResponseStatus'
  Int ->
  TagResponse
tagResponse pResponseStatus_ =
  TagResponse'
    { _trrsARN = Nothing,
      _trrsTags = Nothing,
      _trrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the tagged resource.
trrsARN :: Lens' TagResponse (Maybe Text)
trrsARN = lens _trrsARN (\s a -> s {_trrsARN = a})

-- | The tags that have been added to the specified resource group.
trrsTags :: Lens' TagResponse (HashMap Text Text)
trrsTags = lens _trrsTags (\s a -> s {_trrsTags = a}) . _Default . _Map

-- | -- | The response status code.
trrsResponseStatus :: Lens' TagResponse Int
trrsResponseStatus = lens _trrsResponseStatus (\s a -> s {_trrsResponseStatus = a})

instance NFData TagResponse
