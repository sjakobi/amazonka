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
-- Module      : Network.AWS.StorageGateway.ListTagsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that have been added to the specified resource. This operation is supported in storage gateways of all types.
--
--
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.ListTagsForResource
  ( -- * Creating a Request
    listTagsForResource,
    ListTagsForResource,

    -- * Request Lenses
    ltfrLimit,
    ltfrMarker,
    ltfrResourceARN,

    -- * Destructuring the Response
    listTagsForResourceResponse,
    ListTagsForResourceResponse,

    -- * Response Lenses
    ltfrrrsResourceARN,
    ltfrrrsTags,
    ltfrrrsMarker,
    ltfrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | ListTagsForResourceInput
--
--
--
-- /See:/ 'listTagsForResource' smart constructor.
data ListTagsForResource = ListTagsForResource'
  { _ltfrLimit ::
      !(Maybe Nat),
    _ltfrMarker :: !(Maybe Text),
    _ltfrResourceARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListTagsForResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltfrLimit' - Specifies that the list of tags returned be limited to the specified number of items.
--
-- * 'ltfrMarker' - An opaque string that indicates the position at which to begin returning the list of tags.
--
-- * 'ltfrResourceARN' - The Amazon Resource Name (ARN) of the resource for which you want to list tags.
listTagsForResource ::
  -- | 'ltfrResourceARN'
  Text ->
  ListTagsForResource
listTagsForResource pResourceARN_ =
  ListTagsForResource'
    { _ltfrLimit = Nothing,
      _ltfrMarker = Nothing,
      _ltfrResourceARN = pResourceARN_
    }

-- | Specifies that the list of tags returned be limited to the specified number of items.
ltfrLimit :: Lens' ListTagsForResource (Maybe Natural)
ltfrLimit = lens _ltfrLimit (\s a -> s {_ltfrLimit = a}) . mapping _Nat

-- | An opaque string that indicates the position at which to begin returning the list of tags.
ltfrMarker :: Lens' ListTagsForResource (Maybe Text)
ltfrMarker = lens _ltfrMarker (\s a -> s {_ltfrMarker = a})

-- | The Amazon Resource Name (ARN) of the resource for which you want to list tags.
ltfrResourceARN :: Lens' ListTagsForResource Text
ltfrResourceARN = lens _ltfrResourceARN (\s a -> s {_ltfrResourceARN = a})

instance AWSPager ListTagsForResource where
  page rq rs
    | stop (rs ^. ltfrrrsMarker) = Nothing
    | stop (rs ^. ltfrrrsTags) = Nothing
    | otherwise =
      Just $ rq & ltfrMarker .~ rs ^. ltfrrrsMarker

instance AWSRequest ListTagsForResource where
  type
    Rs ListTagsForResource =
      ListTagsForResourceResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          ListTagsForResourceResponse'
            <$> (x .?> "ResourceARN")
            <*> (x .?> "Tags" .!@ mempty)
            <*> (x .?> "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable ListTagsForResource

instance NFData ListTagsForResource

instance ToHeaders ListTagsForResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.ListTagsForResource" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListTagsForResource where
  toJSON ListTagsForResource' {..} =
    object
      ( catMaybes
          [ ("Limit" .=) <$> _ltfrLimit,
            ("Marker" .=) <$> _ltfrMarker,
            Just ("ResourceARN" .= _ltfrResourceARN)
          ]
      )

instance ToPath ListTagsForResource where
  toPath = const "/"

instance ToQuery ListTagsForResource where
  toQuery = const mempty

-- | ListTagsForResourceOutput
--
--
--
-- /See:/ 'listTagsForResourceResponse' smart constructor.
data ListTagsForResourceResponse = ListTagsForResourceResponse'
  { _ltfrrrsResourceARN ::
      !(Maybe Text),
    _ltfrrrsTags ::
      !(Maybe [Tag]),
    _ltfrrrsMarker ::
      !(Maybe Text),
    _ltfrrrsResponseStatus ::
      !Int
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
-- * 'ltfrrrsResourceARN' - The Amazon Resource Name (ARN) of the resource for which you want to list tags.
--
-- * 'ltfrrrsTags' - An array that contains the tags for the specified resource.
--
-- * 'ltfrrrsMarker' - An opaque string that indicates the position at which to stop returning the list of tags.
--
-- * 'ltfrrrsResponseStatus' - -- | The response status code.
listTagsForResourceResponse ::
  -- | 'ltfrrrsResponseStatus'
  Int ->
  ListTagsForResourceResponse
listTagsForResourceResponse pResponseStatus_ =
  ListTagsForResourceResponse'
    { _ltfrrrsResourceARN =
        Nothing,
      _ltfrrrsTags = Nothing,
      _ltfrrrsMarker = Nothing,
      _ltfrrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the resource for which you want to list tags.
ltfrrrsResourceARN :: Lens' ListTagsForResourceResponse (Maybe Text)
ltfrrrsResourceARN = lens _ltfrrrsResourceARN (\s a -> s {_ltfrrrsResourceARN = a})

-- | An array that contains the tags for the specified resource.
ltfrrrsTags :: Lens' ListTagsForResourceResponse [Tag]
ltfrrrsTags = lens _ltfrrrsTags (\s a -> s {_ltfrrrsTags = a}) . _Default . _Coerce

-- | An opaque string that indicates the position at which to stop returning the list of tags.
ltfrrrsMarker :: Lens' ListTagsForResourceResponse (Maybe Text)
ltfrrrsMarker = lens _ltfrrrsMarker (\s a -> s {_ltfrrrsMarker = a})

-- | -- | The response status code.
ltfrrrsResponseStatus :: Lens' ListTagsForResourceResponse Int
ltfrrrsResponseStatus = lens _ltfrrrsResponseStatus (\s a -> s {_ltfrrrsResponseStatus = a})

instance NFData ListTagsForResourceResponse
