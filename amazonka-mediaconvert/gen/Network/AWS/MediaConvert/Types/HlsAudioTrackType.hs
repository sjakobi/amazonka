{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsAudioTrackType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsAudioTrackType
  ( HlsAudioTrackType
      ( ..,
        AlternateAudioAutoSelect,
        AlternateAudioAutoSelectDefault,
        AlternateAudioNotAutoSelect,
        AudioOnlyVariantStream
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
data HlsAudioTrackType = HlsAudioTrackType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AlternateAudioAutoSelect :: HlsAudioTrackType
pattern AlternateAudioAutoSelect = HlsAudioTrackType' "ALTERNATE_AUDIO_AUTO_SELECT"

pattern AlternateAudioAutoSelectDefault :: HlsAudioTrackType
pattern AlternateAudioAutoSelectDefault = HlsAudioTrackType' "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT"

pattern AlternateAudioNotAutoSelect :: HlsAudioTrackType
pattern AlternateAudioNotAutoSelect = HlsAudioTrackType' "ALTERNATE_AUDIO_NOT_AUTO_SELECT"

pattern AudioOnlyVariantStream :: HlsAudioTrackType
pattern AudioOnlyVariantStream = HlsAudioTrackType' "AUDIO_ONLY_VARIANT_STREAM"

{-# COMPLETE
  AlternateAudioAutoSelect,
  AlternateAudioAutoSelectDefault,
  AlternateAudioNotAutoSelect,
  AudioOnlyVariantStream,
  HlsAudioTrackType'
  #-}

instance FromText HlsAudioTrackType where
  parser = (HlsAudioTrackType' . mk) <$> takeText

instance ToText HlsAudioTrackType where
  toText (HlsAudioTrackType' ci) = original ci

instance Hashable HlsAudioTrackType

instance NFData HlsAudioTrackType

instance ToByteString HlsAudioTrackType

instance ToQuery HlsAudioTrackType

instance ToHeader HlsAudioTrackType

instance ToJSON HlsAudioTrackType where
  toJSON = toJSONText

instance FromJSON HlsAudioTrackType where
  parseJSON = parseJSONText "HlsAudioTrackType"
