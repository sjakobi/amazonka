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
-- Module      : Network.AWS.MediaLive.ListReservations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List purchased reservations.
--
-- This operation returns paginated results.
module Network.AWS.MediaLive.ListReservations
  ( -- * Creating a Request
    listReservations,
    ListReservations,

    -- * Request Lenses
    lrMaximumFramerate,
    lrNextToken,
    lrVideoQuality,
    lrMaxResults,
    lrCodec,
    lrMaximumBitrate,
    lrSpecialFeature,
    lrChannelClass,
    lrResourceType,
    lrResolution,

    -- * Destructuring the Response
    listReservationsResponse,
    ListReservationsResponse,

    -- * Response Lenses
    lrrrsNextToken,
    lrrrsReservations,
    lrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaLive.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Placeholder documentation for ListReservationsRequest
--
-- /See:/ 'listReservations' smart constructor.
data ListReservations = ListReservations'
  { _lrMaximumFramerate ::
      !(Maybe Text),
    _lrNextToken :: !(Maybe Text),
    _lrVideoQuality :: !(Maybe Text),
    _lrMaxResults :: !(Maybe Nat),
    _lrCodec :: !(Maybe Text),
    _lrMaximumBitrate :: !(Maybe Text),
    _lrSpecialFeature :: !(Maybe Text),
    _lrChannelClass :: !(Maybe Text),
    _lrResourceType :: !(Maybe Text),
    _lrResolution :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListReservations' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrMaximumFramerate' - Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
--
-- * 'lrNextToken' - Undocumented member.
--
-- * 'lrVideoQuality' - Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
--
-- * 'lrMaxResults' - Undocumented member.
--
-- * 'lrCodec' - Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'
--
-- * 'lrMaximumBitrate' - Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
--
-- * 'lrSpecialFeature' - Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
--
-- * 'lrChannelClass' - Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'
--
-- * 'lrResourceType' - Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
--
-- * 'lrResolution' - Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
listReservations ::
  ListReservations
listReservations =
  ListReservations'
    { _lrMaximumFramerate = Nothing,
      _lrNextToken = Nothing,
      _lrVideoQuality = Nothing,
      _lrMaxResults = Nothing,
      _lrCodec = Nothing,
      _lrMaximumBitrate = Nothing,
      _lrSpecialFeature = Nothing,
      _lrChannelClass = Nothing,
      _lrResourceType = Nothing,
      _lrResolution = Nothing
    }

-- | Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
lrMaximumFramerate :: Lens' ListReservations (Maybe Text)
lrMaximumFramerate = lens _lrMaximumFramerate (\s a -> s {_lrMaximumFramerate = a})

-- | Undocumented member.
lrNextToken :: Lens' ListReservations (Maybe Text)
lrNextToken = lens _lrNextToken (\s a -> s {_lrNextToken = a})

-- | Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
lrVideoQuality :: Lens' ListReservations (Maybe Text)
lrVideoQuality = lens _lrVideoQuality (\s a -> s {_lrVideoQuality = a})

-- | Undocumented member.
lrMaxResults :: Lens' ListReservations (Maybe Natural)
lrMaxResults = lens _lrMaxResults (\s a -> s {_lrMaxResults = a}) . mapping _Nat

-- | Filter by codec, 'AVC', 'HEVC', 'MPEG2', 'AUDIO', or 'LINK'
lrCodec :: Lens' ListReservations (Maybe Text)
lrCodec = lens _lrCodec (\s a -> s {_lrCodec = a})

-- | Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
lrMaximumBitrate :: Lens' ListReservations (Maybe Text)
lrMaximumBitrate = lens _lrMaximumBitrate (\s a -> s {_lrMaximumBitrate = a})

-- | Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
lrSpecialFeature :: Lens' ListReservations (Maybe Text)
lrSpecialFeature = lens _lrSpecialFeature (\s a -> s {_lrSpecialFeature = a})

-- | Filter by channel class, 'STANDARD' or 'SINGLE_PIPELINE'
lrChannelClass :: Lens' ListReservations (Maybe Text)
lrChannelClass = lens _lrChannelClass (\s a -> s {_lrChannelClass = a})

-- | Filter by resource type, 'INPUT', 'OUTPUT', 'MULTIPLEX', or 'CHANNEL'
lrResourceType :: Lens' ListReservations (Maybe Text)
lrResourceType = lens _lrResourceType (\s a -> s {_lrResourceType = a})

-- | Filter by resolution, 'SD', 'HD', 'FHD', or 'UHD'
lrResolution :: Lens' ListReservations (Maybe Text)
lrResolution = lens _lrResolution (\s a -> s {_lrResolution = a})

instance AWSPager ListReservations where
  page rq rs
    | stop (rs ^. lrrrsNextToken) = Nothing
    | stop (rs ^. lrrrsReservations) = Nothing
    | otherwise =
      Just $ rq & lrNextToken .~ rs ^. lrrrsNextToken

instance AWSRequest ListReservations where
  type Rs ListReservations = ListReservationsResponse
  request = get mediaLive
  response =
    receiveJSON
      ( \s h x ->
          ListReservationsResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "reservations" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListReservations

instance NFData ListReservations

instance ToHeaders ListReservations where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath ListReservations where
  toPath = const "/prod/reservations"

instance ToQuery ListReservations where
  toQuery ListReservations' {..} =
    mconcat
      [ "maximumFramerate" =: _lrMaximumFramerate,
        "nextToken" =: _lrNextToken,
        "videoQuality" =: _lrVideoQuality,
        "maxResults" =: _lrMaxResults,
        "codec" =: _lrCodec,
        "maximumBitrate" =: _lrMaximumBitrate,
        "specialFeature" =: _lrSpecialFeature,
        "channelClass" =: _lrChannelClass,
        "resourceType" =: _lrResourceType,
        "resolution" =: _lrResolution
      ]

-- | Placeholder documentation for ListReservationsResponse
--
-- /See:/ 'listReservationsResponse' smart constructor.
data ListReservationsResponse = ListReservationsResponse'
  { _lrrrsNextToken ::
      !(Maybe Text),
    _lrrrsReservations ::
      !( Maybe
           [Reservation]
       ),
    _lrrrsResponseStatus ::
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

-- | Creates a value of 'ListReservationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrsNextToken' - Token to retrieve the next page of results
--
-- * 'lrrrsReservations' - List of reservations
--
-- * 'lrrrsResponseStatus' - -- | The response status code.
listReservationsResponse ::
  -- | 'lrrrsResponseStatus'
  Int ->
  ListReservationsResponse
listReservationsResponse pResponseStatus_ =
  ListReservationsResponse'
    { _lrrrsNextToken =
        Nothing,
      _lrrrsReservations = Nothing,
      _lrrrsResponseStatus = pResponseStatus_
    }

-- | Token to retrieve the next page of results
lrrrsNextToken :: Lens' ListReservationsResponse (Maybe Text)
lrrrsNextToken = lens _lrrrsNextToken (\s a -> s {_lrrrsNextToken = a})

-- | List of reservations
lrrrsReservations :: Lens' ListReservationsResponse [Reservation]
lrrrsReservations = lens _lrrrsReservations (\s a -> s {_lrrrsReservations = a}) . _Default . _Coerce

-- | -- | The response status code.
lrrrsResponseStatus :: Lens' ListReservationsResponse Int
lrrrsResponseStatus = lens _lrrrsResponseStatus (\s a -> s {_lrrrsResponseStatus = a})

instance NFData ListReservationsResponse
