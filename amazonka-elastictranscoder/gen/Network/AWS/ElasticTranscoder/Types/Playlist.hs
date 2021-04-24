{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticTranscoder.Types.Playlist
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticTranscoder.Types.Playlist where

import Network.AWS.ElasticTranscoder.Types.HlsContentProtection
import Network.AWS.ElasticTranscoder.Types.PlayReadyDrm
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Use Only for Fragmented MP4 or MPEG-TS Outputs. If you specify a preset for which the value of Container is @fmp4@ (Fragmented MP4) or @ts@ (MPEG-TS), Playlists contains information about the master playlists that you want Elastic Transcoder to create. We recommend that you create only one master playlist per output format. The maximum number of master playlists in a job is 30.
--
--
--
-- /See:/ 'playlist' smart constructor.
data Playlist = Playlist'
  { _plaStatus ::
      !(Maybe Text),
    _plaPlayReadyDrm :: !(Maybe PlayReadyDrm),
    _plaOutputKeys :: !(Maybe [Text]),
    _plaFormat :: !(Maybe Text),
    _plaHlsContentProtection ::
      !(Maybe HlsContentProtection),
    _plaStatusDetail :: !(Maybe Text),
    _plaName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Playlist' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plaStatus' - The status of the job with which the playlist is associated.
--
-- * 'plaPlayReadyDrm' - The DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.
--
-- * 'plaOutputKeys' - For each output in this job that you want to include in a master playlist, the value of the Outputs:Key object.     * If your output is not @HLS@ or does not have a segment duration set, the name of the output file is a concatenation of @OutputKeyPrefix@ and @Outputs:Key@ : OutputKeyPrefix@Outputs:Key@      * If your output is @HLSv3@ and has a segment duration set, or is not included in a playlist, Elastic Transcoder creates an output playlist file with a file extension of @.m3u8@ , and a series of @.ts@ files that include a five-digit sequential counter beginning with 00000: OutputKeyPrefix@Outputs:Key@ .m3u8 OutputKeyPrefix@Outputs:Key@ 00000.ts     * If your output is @HLSv4@ , has a segment duration set, and is included in an @HLSv4@ playlist, Elastic Transcoder creates an output playlist file with a file extension of @_v4.m3u8@ . If the output is video, Elastic Transcoder also creates an output file with an extension of @_iframe.m3u8@ : OutputKeyPrefix@Outputs:Key@ _v4.m3u8 OutputKeyPrefix@Outputs:Key@ _iframe.m3u8 OutputKeyPrefix@Outputs:Key@ .ts Elastic Transcoder automatically appends the relevant file extension to the file name. If you include a file extension in Output Key, the file name will have two extensions. If you include more than one output in a playlist, any segment duration settings, clip settings, or caption settings must be the same for all outputs in the playlist. For @Smooth@ playlists, the @Audio:Profile@ , @Video:Profile@ , and @Video:FrameRate@ to @Video:KeyframesMaxDist@ ratio must be the same for all outputs.
--
-- * 'plaFormat' - The format of the output playlist. Valid formats include @HLSv3@ , @HLSv4@ , and @Smooth@ .
--
-- * 'plaHlsContentProtection' - The HLS content protection settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.
--
-- * 'plaStatusDetail' - Information that further explains the status.
--
-- * 'plaName' - The name that you want Elastic Transcoder to assign to the master playlist, for example, nyc-vacation.m3u8. If the name includes a @/@ character, the section of the name before the last @/@ must be identical for all @Name@ objects. If you create more than one master playlist, the values of all @Name@ objects must be unique.
playlist ::
  Playlist
playlist =
  Playlist'
    { _plaStatus = Nothing,
      _plaPlayReadyDrm = Nothing,
      _plaOutputKeys = Nothing,
      _plaFormat = Nothing,
      _plaHlsContentProtection = Nothing,
      _plaStatusDetail = Nothing,
      _plaName = Nothing
    }

-- | The status of the job with which the playlist is associated.
plaStatus :: Lens' Playlist (Maybe Text)
plaStatus = lens _plaStatus (\s a -> s {_plaStatus = a})

-- | The DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.
plaPlayReadyDrm :: Lens' Playlist (Maybe PlayReadyDrm)
plaPlayReadyDrm = lens _plaPlayReadyDrm (\s a -> s {_plaPlayReadyDrm = a})

-- | For each output in this job that you want to include in a master playlist, the value of the Outputs:Key object.     * If your output is not @HLS@ or does not have a segment duration set, the name of the output file is a concatenation of @OutputKeyPrefix@ and @Outputs:Key@ : OutputKeyPrefix@Outputs:Key@      * If your output is @HLSv3@ and has a segment duration set, or is not included in a playlist, Elastic Transcoder creates an output playlist file with a file extension of @.m3u8@ , and a series of @.ts@ files that include a five-digit sequential counter beginning with 00000: OutputKeyPrefix@Outputs:Key@ .m3u8 OutputKeyPrefix@Outputs:Key@ 00000.ts     * If your output is @HLSv4@ , has a segment duration set, and is included in an @HLSv4@ playlist, Elastic Transcoder creates an output playlist file with a file extension of @_v4.m3u8@ . If the output is video, Elastic Transcoder also creates an output file with an extension of @_iframe.m3u8@ : OutputKeyPrefix@Outputs:Key@ _v4.m3u8 OutputKeyPrefix@Outputs:Key@ _iframe.m3u8 OutputKeyPrefix@Outputs:Key@ .ts Elastic Transcoder automatically appends the relevant file extension to the file name. If you include a file extension in Output Key, the file name will have two extensions. If you include more than one output in a playlist, any segment duration settings, clip settings, or caption settings must be the same for all outputs in the playlist. For @Smooth@ playlists, the @Audio:Profile@ , @Video:Profile@ , and @Video:FrameRate@ to @Video:KeyframesMaxDist@ ratio must be the same for all outputs.
plaOutputKeys :: Lens' Playlist [Text]
plaOutputKeys = lens _plaOutputKeys (\s a -> s {_plaOutputKeys = a}) . _Default . _Coerce

-- | The format of the output playlist. Valid formats include @HLSv3@ , @HLSv4@ , and @Smooth@ .
plaFormat :: Lens' Playlist (Maybe Text)
plaFormat = lens _plaFormat (\s a -> s {_plaFormat = a})

-- | The HLS content protection settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.
plaHlsContentProtection :: Lens' Playlist (Maybe HlsContentProtection)
plaHlsContentProtection = lens _plaHlsContentProtection (\s a -> s {_plaHlsContentProtection = a})

-- | Information that further explains the status.
plaStatusDetail :: Lens' Playlist (Maybe Text)
plaStatusDetail = lens _plaStatusDetail (\s a -> s {_plaStatusDetail = a})

-- | The name that you want Elastic Transcoder to assign to the master playlist, for example, nyc-vacation.m3u8. If the name includes a @/@ character, the section of the name before the last @/@ must be identical for all @Name@ objects. If you create more than one master playlist, the values of all @Name@ objects must be unique.
plaName :: Lens' Playlist (Maybe Text)
plaName = lens _plaName (\s a -> s {_plaName = a})

instance FromJSON Playlist where
  parseJSON =
    withObject
      "Playlist"
      ( \x ->
          Playlist'
            <$> (x .:? "Status")
            <*> (x .:? "PlayReadyDrm")
            <*> (x .:? "OutputKeys" .!= mempty)
            <*> (x .:? "Format")
            <*> (x .:? "HlsContentProtection")
            <*> (x .:? "StatusDetail")
            <*> (x .:? "Name")
      )

instance Hashable Playlist

instance NFData Playlist
