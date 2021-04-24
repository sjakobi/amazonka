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
-- Module      : Network.AWS.ElasticTranscoder.ListPresets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.ElasticTranscoder.ListPresets
  ( -- * Creating a Request
    listPresets,
    ListPresets,

    -- * Request Lenses
    lpAscending,
    lpPageToken,

    -- * Destructuring the Response
    listPresetsResponse,
    ListPresetsResponse,

    -- * Response Lenses
    lprrsPresets,
    lprrsNextPageToken,
    lprrsResponseStatus,
  )
where

import Network.AWS.ElasticTranscoder.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The @ListPresetsRequest@ structure.
--
--
--
-- /See:/ 'listPresets' smart constructor.
data ListPresets = ListPresets'
  { _lpAscending ::
      !(Maybe Text),
    _lpPageToken :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPresets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpAscending' - To list presets in chronological order by the date and time that they were created, enter @true@ . To list presets in reverse chronological order, enter @false@ .
--
-- * 'lpPageToken' - When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
listPresets ::
  ListPresets
listPresets =
  ListPresets'
    { _lpAscending = Nothing,
      _lpPageToken = Nothing
    }

-- | To list presets in chronological order by the date and time that they were created, enter @true@ . To list presets in reverse chronological order, enter @false@ .
lpAscending :: Lens' ListPresets (Maybe Text)
lpAscending = lens _lpAscending (\s a -> s {_lpAscending = a})

-- | When Elastic Transcoder returns more than one page of results, use @pageToken@ in subsequent @GET@ requests to get each successive page of results.
lpPageToken :: Lens' ListPresets (Maybe Text)
lpPageToken = lens _lpPageToken (\s a -> s {_lpPageToken = a})

instance AWSPager ListPresets where
  page rq rs
    | stop (rs ^. lprrsNextPageToken) = Nothing
    | stop (rs ^. lprrsPresets) = Nothing
    | otherwise =
      Just $ rq & lpPageToken .~ rs ^. lprrsNextPageToken

instance AWSRequest ListPresets where
  type Rs ListPresets = ListPresetsResponse
  request = get elasticTranscoder
  response =
    receiveJSON
      ( \s h x ->
          ListPresetsResponse'
            <$> (x .?> "Presets" .!@ mempty)
            <*> (x .?> "NextPageToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListPresets

instance NFData ListPresets

instance ToHeaders ListPresets where
  toHeaders = const mempty

instance ToPath ListPresets where
  toPath = const "/2012-09-25/presets"

instance ToQuery ListPresets where
  toQuery ListPresets' {..} =
    mconcat
      [ "Ascending" =: _lpAscending,
        "PageToken" =: _lpPageToken
      ]

-- | The @ListPresetsResponse@ structure.
--
--
--
-- /See:/ 'listPresetsResponse' smart constructor.
data ListPresetsResponse = ListPresetsResponse'
  { _lprrsPresets ::
      !(Maybe [Preset]),
    _lprrsNextPageToken ::
      !(Maybe Text),
    _lprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPresetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsPresets' - An array of @Preset@ objects.
--
-- * 'lprrsNextPageToken' - A value that you use to access the second and subsequent pages of results, if any. When the presets fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPresetsResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPresetsResponse
listPresetsResponse pResponseStatus_ =
  ListPresetsResponse'
    { _lprrsPresets = Nothing,
      _lprrsNextPageToken = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | An array of @Preset@ objects.
lprrsPresets :: Lens' ListPresetsResponse [Preset]
lprrsPresets = lens _lprrsPresets (\s a -> s {_lprrsPresets = a}) . _Default . _Coerce

-- | A value that you use to access the second and subsequent pages of results, if any. When the presets fit on one page or when you've reached the last page of results, the value of @NextPageToken@ is @null@ .
lprrsNextPageToken :: Lens' ListPresetsResponse (Maybe Text)
lprrsNextPageToken = lens _lprrsNextPageToken (\s a -> s {_lprrsNextPageToken = a})

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPresetsResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPresetsResponse
