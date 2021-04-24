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
-- Module      : Network.AWS.DataPipeline.AddTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or modifies tags for the specified pipeline.
module Network.AWS.DataPipeline.AddTags
  ( -- * Creating a Request
    addTags,
    AddTags,

    -- * Request Lenses
    atPipelineId,
    atTags,

    -- * Destructuring the Response
    addTagsResponse,
    AddTagsResponse,

    -- * Response Lenses
    atrrsResponseStatus,
  )
where

import Network.AWS.DataPipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for AddTags.
--
--
--
-- /See:/ 'addTags' smart constructor.
data AddTags = AddTags'
  { _atPipelineId :: !Text,
    _atTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atPipelineId' - The ID of the pipeline.
--
-- * 'atTags' - The tags to add, as key/value pairs.
addTags ::
  -- | 'atPipelineId'
  Text ->
  AddTags
addTags pPipelineId_ =
  AddTags'
    { _atPipelineId = pPipelineId_,
      _atTags = mempty
    }

-- | The ID of the pipeline.
atPipelineId :: Lens' AddTags Text
atPipelineId = lens _atPipelineId (\s a -> s {_atPipelineId = a})

-- | The tags to add, as key/value pairs.
atTags :: Lens' AddTags [Tag]
atTags = lens _atTags (\s a -> s {_atTags = a}) . _Coerce

instance AWSRequest AddTags where
  type Rs AddTags = AddTagsResponse
  request = postJSON dataPipeline
  response =
    receiveEmpty
      (\s h x -> AddTagsResponse' <$> (pure (fromEnum s)))

instance Hashable AddTags

instance NFData AddTags

instance ToHeaders AddTags where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("DataPipeline.AddTags" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AddTags where
  toJSON AddTags' {..} =
    object
      ( catMaybes
          [ Just ("pipelineId" .= _atPipelineId),
            Just ("tags" .= _atTags)
          ]
      )

instance ToPath AddTags where
  toPath = const "/"

instance ToQuery AddTags where
  toQuery = const mempty

-- | Contains the output of AddTags.
--
--
--
-- /See:/ 'addTagsResponse' smart constructor.
newtype AddTagsResponse = AddTagsResponse'
  { _atrrsResponseStatus ::
      Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'AddTagsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atrrsResponseStatus' - -- | The response status code.
addTagsResponse ::
  -- | 'atrrsResponseStatus'
  Int ->
  AddTagsResponse
addTagsResponse pResponseStatus_ =
  AddTagsResponse'
    { _atrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
atrrsResponseStatus :: Lens' AddTagsResponse Int
atrrsResponseStatus = lens _atrrsResponseStatus (\s a -> s {_atrrsResponseStatus = a})

instance NFData AddTagsResponse
