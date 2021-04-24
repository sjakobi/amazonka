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
-- Module      : Network.AWS.Lambda.ListLayers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists <https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html AWS Lambda layers> and shows information about the latest version of each. Specify a <https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html runtime identifier> to list only layers that indicate that they're compatible with that runtime.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Lambda.ListLayers
  ( -- * Creating a Request
    listLayers,
    ListLayers,

    -- * Request Lenses
    llMaxItems,
    llCompatibleRuntime,
    llMarker,

    -- * Destructuring the Response
    listLayersResponse,
    ListLayersResponse,

    -- * Response Lenses
    llrrsNextMarker,
    llrrsLayers,
    llrrsResponseStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listLayers' smart constructor.
data ListLayers = ListLayers'
  { _llMaxItems ::
      !(Maybe Nat),
    _llCompatibleRuntime :: !(Maybe Runtime),
    _llMarker :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLayers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llMaxItems' - The maximum number of layers to return.
--
-- * 'llCompatibleRuntime' - A runtime identifier. For example, @go1.x@ .
--
-- * 'llMarker' - A pagination token returned by a previous call.
listLayers ::
  ListLayers
listLayers =
  ListLayers'
    { _llMaxItems = Nothing,
      _llCompatibleRuntime = Nothing,
      _llMarker = Nothing
    }

-- | The maximum number of layers to return.
llMaxItems :: Lens' ListLayers (Maybe Natural)
llMaxItems = lens _llMaxItems (\s a -> s {_llMaxItems = a}) . mapping _Nat

-- | A runtime identifier. For example, @go1.x@ .
llCompatibleRuntime :: Lens' ListLayers (Maybe Runtime)
llCompatibleRuntime = lens _llCompatibleRuntime (\s a -> s {_llCompatibleRuntime = a})

-- | A pagination token returned by a previous call.
llMarker :: Lens' ListLayers (Maybe Text)
llMarker = lens _llMarker (\s a -> s {_llMarker = a})

instance AWSPager ListLayers where
  page rq rs
    | stop (rs ^. llrrsNextMarker) = Nothing
    | stop (rs ^. llrrsLayers) = Nothing
    | otherwise =
      Just $ rq & llMarker .~ rs ^. llrrsNextMarker

instance AWSRequest ListLayers where
  type Rs ListLayers = ListLayersResponse
  request = get lambda
  response =
    receiveJSON
      ( \s h x ->
          ListLayersResponse'
            <$> (x .?> "NextMarker")
            <*> (x .?> "Layers" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListLayers

instance NFData ListLayers

instance ToHeaders ListLayers where
  toHeaders = const mempty

instance ToPath ListLayers where
  toPath = const "/2018-10-31/layers"

instance ToQuery ListLayers where
  toQuery ListLayers' {..} =
    mconcat
      [ "MaxItems" =: _llMaxItems,
        "CompatibleRuntime" =: _llCompatibleRuntime,
        "Marker" =: _llMarker
      ]

-- | /See:/ 'listLayersResponse' smart constructor.
data ListLayersResponse = ListLayersResponse'
  { _llrrsNextMarker ::
      !(Maybe Text),
    _llrrsLayers ::
      !(Maybe [LayersListItem]),
    _llrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListLayersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrrsNextMarker' - A pagination token returned when the response doesn't contain all layers.
--
-- * 'llrrsLayers' - A list of function layers.
--
-- * 'llrrsResponseStatus' - -- | The response status code.
listLayersResponse ::
  -- | 'llrrsResponseStatus'
  Int ->
  ListLayersResponse
listLayersResponse pResponseStatus_ =
  ListLayersResponse'
    { _llrrsNextMarker = Nothing,
      _llrrsLayers = Nothing,
      _llrrsResponseStatus = pResponseStatus_
    }

-- | A pagination token returned when the response doesn't contain all layers.
llrrsNextMarker :: Lens' ListLayersResponse (Maybe Text)
llrrsNextMarker = lens _llrrsNextMarker (\s a -> s {_llrrsNextMarker = a})

-- | A list of function layers.
llrrsLayers :: Lens' ListLayersResponse [LayersListItem]
llrrsLayers = lens _llrrsLayers (\s a -> s {_llrrsLayers = a}) . _Default . _Coerce

-- | -- | The response status code.
llrrsResponseStatus :: Lens' ListLayersResponse Int
llrrsResponseStatus = lens _llrrsResponseStatus (\s a -> s {_llrrsResponseStatus = a})

instance NFData ListLayersResponse
