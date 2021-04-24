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
-- Module      : Network.AWS.MediaLive.ListOfferings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List offerings available for purchase.
--
-- This operation returns paginated results.
module Network.AWS.MediaLive.ListOfferings
  ( -- * Creating a Request
    listOfferings,
    ListOfferings,

    -- * Request Lenses
    loMaximumFramerate,
    loNextToken,
    loVideoQuality,
    loDuration,
    loMaxResults,
    loCodec,
    loChannelConfiguration,
    loMaximumBitrate,
    loSpecialFeature,
    loChannelClass,
    loResourceType,
    loResolution,

    -- * Destructuring the Response
    listOfferingsResponse,
    ListOfferingsResponse,

    -- * Response Lenses
    lorrsNextToken,
    lorrsOfferings,
    lorrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for ListOfferingsRequest
--
-- /See:/ 'listOfferings' smart constructor.
data ListOfferings = ListOfferings'
  { _loMaximumFramerate ::
      !(Maybe Text),
    _loNextToken :: !(Maybe Text),
    _loVideoQuality :: !(Maybe Text),
    _loDuration :: !(Maybe Text),
    _loMaxResults :: !(Maybe Nat),
    _loCodec :: !(Maybe Text),
    _loChannelConfiguration :: !(Maybe Text),
    _loMaximumBitrate :: !(Maybe Text),
    _loSpecialFeature :: !(Maybe Text),
    _loChannelClass :: !(Maybe Text),
    _loResourceType :: !(Maybe Text),
    _loResolution :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListOfferings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'loMaximumFramerate' - Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
--
-- * 'loNextToken' - Undocumented member.
--
-- * 'loVideoQuality' - Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
--
-- * 'loDuration' - Filter by offering duration, e.g. '12'
--
-- * 'loMaxResults' - Undocumented member.
--
-- * 'loCodec' - Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'
--
-- * 'loChannelConfiguration' - Filter to offerings that match the configuration of an existing channel, e.g. '2345678' (a channel ID)
--
-- * 'loMaximumBitrate' - Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
--
-- * 'loSpecialFeature' - Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
--
-- * 'loChannelClass' - Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'
--
-- * 'loResourceType' - Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
--
-- * 'loResolution' - Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
listOfferings ::
  ListOfferings
listOfferings =
  ListOfferings'
    { _loMaximumFramerate = Nothing,
      _loNextToken = Nothing,
      _loVideoQuality = Nothing,
      _loDuration = Nothing,
      _loMaxResults = Nothing,
      _loCodec = Nothing,
      _loChannelConfiguration = Nothing,
      _loMaximumBitrate = Nothing,
      _loSpecialFeature = Nothing,
      _loChannelClass = Nothing,
      _loResourceType = Nothing,
      _loResolution = Nothing
    }

-- | Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
loMaximumFramerate :: Lens' ListOfferings (Maybe Text)
loMaximumFramerate = lens _loMaximumFramerate (\s a -> s {_loMaximumFramerate = a})

-- | Undocumented member.
loNextToken :: Lens' ListOfferings (Maybe Text)
loNextToken = lens _loNextToken (\s a -> s {_loNextToken = a})

-- | Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
loVideoQuality :: Lens' ListOfferings (Maybe Text)
loVideoQuality = lens _loVideoQuality (\s a -> s {_loVideoQuality = a})

-- | Filter by offering duration, e.g. '12'
loDuration :: Lens' ListOfferings (Maybe Text)
loDuration = lens _loDuration (\s a -> s {_loDuration = a})

-- | Undocumented member.
loMaxResults :: Lens' ListOfferings (Maybe Natural)
loMaxResults = lens _loMaxResults (\s a -> s {_loMaxResults = a}) . mapping _Nat

-- | Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'
loCodec :: Lens' ListOfferings (Maybe Text)
loCodec = lens _loCodec (\s a -> s {_loCodec = a})

-- | Filter to offerings that match the configuration of an existing channel, e.g. '2345678' (a channel ID)
loChannelConfiguration :: Lens' ListOfferings (Maybe Text)
loChannelConfiguration = lens _loChannelConfiguration (\s a -> s {_loChannelConfiguration = a})

-- | Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
loMaximumBitrate :: Lens' ListOfferings (Maybe Text)
loMaximumBitrate = lens _loMaximumBitrate (\s a -> s {_loMaximumBitrate = a})

-- | Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
loSpecialFeature :: Lens' ListOfferings (Maybe Text)
loSpecialFeature = lens _loSpecialFeature (\s a -> s {_loSpecialFeature = a})

-- | Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'
loChannelClass :: Lens' ListOfferings (Maybe Text)
loChannelClass = lens _loChannelClass (\s a -> s {_loChannelClass = a})

-- | Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
loResourceType :: Lens' ListOfferings (Maybe Text)
loResourceType = lens _loResourceType (\s a -> s {_loResourceType = a})

-- | Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
loResolution :: Lens' ListOfferings (Maybe Text)
loResolution = lens _loResolution (\s a -> s {_loResolution = a})

instance AWSPager ListOfferings where
  page rq rs
    | stop (rs ^. lorrsNextToken) = Nothing
    | stop (rs ^. lorrsOfferings) = Nothing
    | otherwise =
      Just $ rq & loNextToken .~ rs ^. lorrsNextToken

instance AWSRequest ListOfferings where
  type Rs ListOfferings = ListOfferingsResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          ListOfferingsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "offerings" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListOfferings

instance NFData ListOfferings

instance ToHeaders ListOfferings where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListOfferings where
  toPath = const "/prod/offerings"

instance ToQuery ListOfferings where
  toQuery ListOfferings' {..} =
    mconcat
      [ "maximumFramerate" =: _loMaximumFramerate,
        "nextToken" =: _loNextToken,
        "videoQuality" =: _loVideoQuality,
        "duration" =: _loDuration,
        "maxResults" =: _loMaxResults,
        "codec" =: _loCodec,
        "channelConfiguration" =: _loChannelConfiguration,
        "maximumBitrate" =: _loMaximumBitrate,
        "specialFeature" =: _loSpecialFeature,
        "channelClass" =: _loChannelClass,
        "resourceType" =: _loResourceType,
        "resolution" =: _loResolution
      ]

-- | Placeholder documentation for ListOfferingsResponse
--
-- /See:/ 'listOfferingsResponse' smart constructor.
data ListOfferingsResponse = ListOfferingsResponse'
  { _lorrsNextToken ::
      !(Maybe Text),
    _lorrsOfferings ::
      !(Maybe [Offering]),
    _lorrsResponseStatus ::
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

-- | Creates a value of 'ListOfferingsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorrsNextToken' - Token to retrieve the next page of results
--
-- * 'lorrsOfferings' - List of offerings
--
-- * 'lorrsResponseStatus' - -- | The response status code.
listOfferingsResponse ::
  -- | 'lorrsResponseStatus'
  Int ->
  ListOfferingsResponse
listOfferingsResponse pResponseStatus_ =
  ListOfferingsResponse'
    { _lorrsNextToken = Nothing,
      _lorrsOfferings = Nothing,
      _lorrsResponseStatus = pResponseStatus_
    }

-- | Token to retrieve the next page of results
lorrsNextToken :: Lens' ListOfferingsResponse (Maybe Text)
lorrsNextToken = lens _lorrsNextToken (\s a -> s {_lorrsNextToken = a})

-- | List of offerings
lorrsOfferings :: Lens' ListOfferingsResponse [Offering]
lorrsOfferings = lens _lorrsOfferings (\s a -> s {_lorrsOfferings = a}) . _Default . _Coerce

-- | -- | The response status code.
lorrsResponseStatus :: Lens' ListOfferingsResponse Int
lorrsResponseStatus = lens _lorrsResponseStatus (\s a -> s {_lorrsResponseStatus = a})

instance NFData ListOfferingsResponse
