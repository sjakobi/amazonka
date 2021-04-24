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
-- Module      : Network.AWS.CloudFront.ListTagsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List tags for a CloudFront resource.
module Network.AWS.CloudFront.ListTagsForResource
  ( -- * Creating a Request
    listTagsForResource,
    ListTagsForResource,

    -- * Request Lenses
    ltfrResource,

    -- * Destructuring the Response
    listTagsForResourceResponse,
    ListTagsForResourceResponse,

    -- * Response Lenses
    ltfrrrsResponseStatus,
    ltfrrrsTags,
  )
where

import Network.AWS.CloudFront.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The request to list tags for a CloudFront resource.
--
--
--
-- /See:/ 'listTagsForResource' smart constructor.
newtype ListTagsForResource = ListTagsForResource'
  { _ltfrResource ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTagsForResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrResource' - An ARN of a CloudFront resource.
listTagsForResource ::
  -- | 'ltfrResource'
  Text ->
  ListTagsForResource
listTagsForResource pResource_ =
  ListTagsForResource' {_ltfrResource = pResource_}

-- | An ARN of a CloudFront resource.
ltfrResource :: Lens' ListTagsForResource Text
ltfrResource = lens _ltfrResource (\s a -> s {_ltfrResource = a})

instance AWSRequest ListTagsForResource where
  type
    Rs ListTagsForResource =
      ListTagsForResourceResponse
  request = get cloudFront
  response =
    receiveXML
      ( \s h x ->
          ListTagsForResourceResponse'
            <$> (pure (fromEnum s)) <*> (parseXML x)
      )

instance Hashable ListTagsForResource

instance NFData ListTagsForResource

instance ToHeaders ListTagsForResource where
  toHeaders = const mempty

instance ToPath ListTagsForResource where
  toPath = const "/2020-05-31/tagging"

instance ToQuery ListTagsForResource where
  toQuery ListTagsForResource' {..} =
    mconcat ["Resource" =: _ltfrResource]

-- | The returned result of the corresponding request.
--
--
--
-- /See:/ 'listTagsForResourceResponse' smart constructor.
data ListTagsForResourceResponse = ListTagsForResourceResponse'
  { _ltfrrrsResponseStatus ::
      !Int,
    _ltfrrrsTags ::
      !Tags
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListTagsForResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrrrsResponseStatus' - -- | The response status code.
--
-- * 'ltfrrrsTags' - A complex type that contains zero or more @Tag@ elements.
listTagsForResourceResponse ::
  -- | 'ltfrrrsResponseStatus'
  Int ->
  -- | 'ltfrrrsTags'
  Tags ->
  ListTagsForResourceResponse
listTagsForResourceResponse pResponseStatus_ pTags_ =
  ListTagsForResourceResponse'
    { _ltfrrrsResponseStatus =
        pResponseStatus_,
      _ltfrrrsTags = pTags_
    }

-- | -- | The response status code.
ltfrrrsResponseStatus :: Lens' ListTagsForResourceResponse Int
ltfrrrsResponseStatus = lens _ltfrrrsResponseStatus (\s a -> s {_ltfrrrsResponseStatus = a})

-- | A complex type that contains zero or more @Tag@ elements.
ltfrrrsTags :: Lens' ListTagsForResourceResponse Tags
ltfrrrsTags = lens _ltfrrrsTags (\s a -> s {_ltfrrrsTags = a})

instance NFData ListTagsForResourceResponse
