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
-- Module      : Network.AWS.MachineLearning.AddTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key and an optional value. If you add a tag using a key that is already associated with the ML object, @AddTags@ updates the tag's value.
module Network.AWS.MachineLearning.AddTags
  ( -- * Creating a Request
    addTags,
    AddTags,

    -- * Request Lenses
    atTags,
    atResourceId,
    atResourceType,

    -- * Destructuring the Response
    addTagsResponse,
    AddTagsResponse,

    -- * Response Lenses
    atrrsResourceId,
    atrrsResourceType,
    atrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MachineLearning.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'addTags' smart constructor.
data AddTags = AddTags'
  { _atTags :: ![Tag],
    _atResourceId :: !Text,
    _atResourceType :: !TaggableResourceType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atTags' - The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.
--
-- * 'atResourceId' - The ID of the ML object to tag. For example, @exampleModelId@ .
--
-- * 'atResourceType' - The type of the ML object to tag.
addTags ::
  -- | 'atResourceId'
  Text ->
  -- | 'atResourceType'
  TaggableResourceType ->
  AddTags
addTags pResourceId_ pResourceType_ =
  AddTags'
    { _atTags = mempty,
      _atResourceId = pResourceId_,
      _atResourceType = pResourceType_
    }

-- | The key-value pairs to use to create tags. If you specify a key without specifying a value, Amazon ML creates a tag with the specified key and a value of null.
atTags :: Lens' AddTags [Tag]
atTags = lens _atTags (\s a -> s {_atTags = a}) . _Coerce

-- | The ID of the ML object to tag. For example, @exampleModelId@ .
atResourceId :: Lens' AddTags Text
atResourceId = lens _atResourceId (\s a -> s {_atResourceId = a})

-- | The type of the ML object to tag.
atResourceType :: Lens' AddTags TaggableResourceType
atResourceType = lens _atResourceType (\s a -> s {_atResourceType = a})

instance AWSRequest AddTags where
  type Rs AddTags = AddTagsResponse
  request = postJSON machineLearning
  response =
    receiveJSON
      ( \s h x ->
          AddTagsResponse'
            <$> (x .?> "ResourceId")
            <*> (x .?> "ResourceType")
            <*> (pure (fromEnum s))
      )

instance Hashable AddTags

instance NFData AddTags

instance ToHeaders AddTags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonML_20141212.AddTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AddTags where
  toJSON AddTags' {..} =
    object
      ( catMaybes
          [ Just ("Tags" .= _atTags),
            Just ("ResourceId" .= _atResourceId),
            Just ("ResourceType" .= _atResourceType)
          ]
      )

instance ToPath AddTags where
  toPath = const "/"

instance ToQuery AddTags where
  toQuery = const mempty

-- | Amazon ML returns the following elements.
--
--
--
-- /See:/ 'addTagsResponse' smart constructor.
data AddTagsResponse = AddTagsResponse'
  { _atrrsResourceId ::
      !(Maybe Text),
    _atrrsResourceType ::
      !(Maybe TaggableResourceType),
    _atrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atrrsResourceId' - The ID of the ML object that was tagged.
--
-- * 'atrrsResourceType' - The type of the ML object that was tagged.
--
-- * 'atrrsResponseStatus' - -- | The response status code.
addTagsResponse ::
  -- | 'atrrsResponseStatus'
  Int ->
  AddTagsResponse
addTagsResponse pResponseStatus_ =
  AddTagsResponse'
    { _atrrsResourceId = Nothing,
      _atrrsResourceType = Nothing,
      _atrrsResponseStatus = pResponseStatus_
    }

-- | The ID of the ML object that was tagged.
atrrsResourceId :: Lens' AddTagsResponse (Maybe Text)
atrrsResourceId = lens _atrrsResourceId (\s a -> s {_atrrsResourceId = a})

-- | The type of the ML object that was tagged.
atrrsResourceType :: Lens' AddTagsResponse (Maybe TaggableResourceType)
atrrsResourceType = lens _atrrsResourceType (\s a -> s {_atrrsResourceType = a})

-- | -- | The response status code.
atrrsResponseStatus :: Lens' AddTagsResponse Int
atrrsResponseStatus = lens _atrrsResponseStatus (\s a -> s {_atrrsResponseStatus = a})

instance NFData AddTagsResponse
