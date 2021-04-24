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
-- Module      : Network.AWS.DAX.TagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a set of tags with a DAX resource. You can call @TagResource@ up to 5 times per second, per account.
module Network.AWS.DAX.TagResource
  ( -- * Creating a Request
    tagResource,
    TagResource,

    -- * Request Lenses
    trResourceName,
    trTags,

    -- * Destructuring the Response
    tagResourceResponse,
    TagResourceResponse,

    -- * Response Lenses
    trrrsTags,
    trrrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'tagResource' smart constructor.
data TagResource = TagResource'
  { _trResourceName ::
      !Text,
    _trTags :: ![Tag]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trResourceName' - The name of the DAX resource to which tags should be added.
--
-- * 'trTags' - The tags to be assigned to the DAX resource.
tagResource ::
  -- | 'trResourceName'
  Text ->
  TagResource
tagResource pResourceName_ =
  TagResource'
    { _trResourceName = pResourceName_,
      _trTags = mempty
    }

-- | The name of the DAX resource to which tags should be added.
trResourceName :: Lens' TagResource Text
trResourceName = lens _trResourceName (\s a -> s {_trResourceName = a})

-- | The tags to be assigned to the DAX resource.
trTags :: Lens' TagResource [Tag]
trTags = lens _trTags (\s a -> s {_trTags = a}) . _Coerce

instance AWSRequest TagResource where
  type Rs TagResource = TagResourceResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          TagResourceResponse'
            <$> (x .?> "Tags" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable TagResource

instance NFData TagResource

instance ToHeaders TagResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDAXV3.TagResource" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON TagResource where
  toJSON TagResource' {..} =
    object
      ( catMaybes
          [ Just ("ResourceName" .= _trResourceName),
            Just ("Tags" .= _trTags)
          ]
      )

instance ToPath TagResource where
  toPath = const "/"

instance ToQuery TagResource where
  toQuery = const mempty

-- | /See:/ 'tagResourceResponse' smart constructor.
data TagResourceResponse = TagResourceResponse'
  { _trrrsTags ::
      !(Maybe [Tag]),
    _trrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'TagResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trrrsTags' - The list of tags that are associated with the DAX resource.
--
-- * 'trrrsResponseStatus' - -- | The response status code.
tagResourceResponse ::
  -- | 'trrrsResponseStatus'
  Int ->
  TagResourceResponse
tagResourceResponse pResponseStatus_ =
  TagResourceResponse'
    { _trrrsTags = Nothing,
      _trrrsResponseStatus = pResponseStatus_
    }

-- | The list of tags that are associated with the DAX resource.
trrrsTags :: Lens' TagResourceResponse [Tag]
trrrsTags = lens _trrrsTags (\s a -> s {_trrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
trrrsResponseStatus :: Lens' TagResourceResponse Int
trrrsResponseStatus = lens _trrrsResponseStatus (\s a -> s {_trrrsResponseStatus = a})

instance NFData TagResourceResponse
