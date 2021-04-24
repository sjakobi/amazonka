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
-- Module      : Network.AWS.MediaConvert.ListPresets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
--
-- This operation returns paginated results.
module Network.AWS.MediaConvert.ListPresets
  ( -- * Creating a Request
    listPresets,
    ListPresets,

    -- * Request Lenses
    lpNextToken,
    lpListBy,
    lpMaxResults,
    lpCategory,
    lpOrder,

    -- * Destructuring the Response
    listPresetsResponse,
    ListPresetsResponse,

    -- * Response Lenses
    lprrsNextToken,
    lprrsPresets,
    lprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPresets' smart constructor.
data ListPresets = ListPresets'
  { _lpNextToken ::
      !(Maybe Text),
    _lpListBy :: !(Maybe PresetListBy),
    _lpMaxResults :: !(Maybe Nat),
    _lpCategory :: !(Maybe Text),
    _lpOrder :: !(Maybe Order)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPresets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpNextToken' - Use this string, provided with the response to a previous request, to request the next batch of presets.
--
-- * 'lpListBy' - Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
--
-- * 'lpMaxResults' - Optional. Number of presets, up to twenty, that will be returned at one time
--
-- * 'lpCategory' - Optionally, specify a preset category to limit responses to only presets from that category.
--
-- * 'lpOrder' - Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
listPresets ::
  ListPresets
listPresets =
  ListPresets'
    { _lpNextToken = Nothing,
      _lpListBy = Nothing,
      _lpMaxResults = Nothing,
      _lpCategory = Nothing,
      _lpOrder = Nothing
    }

-- | Use this string, provided with the response to a previous request, to request the next batch of presets.
lpNextToken :: Lens' ListPresets (Maybe Text)
lpNextToken = lens _lpNextToken (\s a -> s {_lpNextToken = a})

-- | Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
lpListBy :: Lens' ListPresets (Maybe PresetListBy)
lpListBy = lens _lpListBy (\s a -> s {_lpListBy = a})

-- | Optional. Number of presets, up to twenty, that will be returned at one time
lpMaxResults :: Lens' ListPresets (Maybe Natural)
lpMaxResults = lens _lpMaxResults (\s a -> s {_lpMaxResults = a}) . mapping _Nat

-- | Optionally, specify a preset category to limit responses to only presets from that category.
lpCategory :: Lens' ListPresets (Maybe Text)
lpCategory = lens _lpCategory (\s a -> s {_lpCategory = a})

-- | Optional. When you request lists of resources, you can specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
lpOrder :: Lens' ListPresets (Maybe Order)
lpOrder = lens _lpOrder (\s a -> s {_lpOrder = a})

instance AWSPager ListPresets where
  page rq rs
    | stop (rs ^. lprrsNextToken) = Nothing
    | stop (rs ^. lprrsPresets) = Nothing
    | otherwise =
      Just $ rq & lpNextToken .~ rs ^. lprrsNextToken

instance AWSRequest ListPresets where
  type Rs ListPresets = ListPresetsResponse
  request = get mediaConvert
  response =
    receiveJSON
      ( \s h x ->
          ListPresetsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "presets" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListPresets

instance NFData ListPresets

instance ToHeaders ListPresets where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListPresets where
  toPath = const "/2017-08-29/presets"

instance ToQuery ListPresets where
  toQuery ListPresets' {..} =
    mconcat
      [ "nextToken" =: _lpNextToken,
        "listBy" =: _lpListBy,
        "maxResults" =: _lpMaxResults,
        "category" =: _lpCategory,
        "order" =: _lpOrder
      ]

-- | /See:/ 'listPresetsResponse' smart constructor.
data ListPresetsResponse = ListPresetsResponse'
  { _lprrsNextToken ::
      !(Maybe Text),
    _lprrsPresets ::
      !(Maybe [Preset]),
    _lprrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPresetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrsNextToken' - Use this string to request the next batch of presets.
--
-- * 'lprrsPresets' - List of presets
--
-- * 'lprrsResponseStatus' - -- | The response status code.
listPresetsResponse ::
  -- | 'lprrsResponseStatus'
  Int ->
  ListPresetsResponse
listPresetsResponse pResponseStatus_ =
  ListPresetsResponse'
    { _lprrsNextToken = Nothing,
      _lprrsPresets = Nothing,
      _lprrsResponseStatus = pResponseStatus_
    }

-- | Use this string to request the next batch of presets.
lprrsNextToken :: Lens' ListPresetsResponse (Maybe Text)
lprrsNextToken = lens _lprrsNextToken (\s a -> s {_lprrsNextToken = a})

-- | List of presets
lprrsPresets :: Lens' ListPresetsResponse [Preset]
lprrsPresets = lens _lprrsPresets (\s a -> s {_lprrsPresets = a}) . _Default . _Coerce

-- | -- | The response status code.
lprrsResponseStatus :: Lens' ListPresetsResponse Int
lprrsResponseStatus = lens _lprrsResponseStatus (\s a -> s {_lprrsResponseStatus = a})

instance NFData ListPresetsResponse
