{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioOnlyHlsTrackType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioOnlyHlsTrackType
  ( AudioOnlyHlsTrackType
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

-- | Audio Only Hls Track Type
data AudioOnlyHlsTrackType
  = AudioOnlyHlsTrackType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AlternateAudioAutoSelect :: AudioOnlyHlsTrackType
pattern AlternateAudioAutoSelect = AudioOnlyHlsTrackType' "ALTERNATE_AUDIO_AUTO_SELECT"

pattern AlternateAudioAutoSelectDefault :: AudioOnlyHlsTrackType
pattern AlternateAudioAutoSelectDefault = AudioOnlyHlsTrackType' "ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT"

pattern AlternateAudioNotAutoSelect :: AudioOnlyHlsTrackType
pattern AlternateAudioNotAutoSelect = AudioOnlyHlsTrackType' "ALTERNATE_AUDIO_NOT_AUTO_SELECT"

pattern AudioOnlyVariantStream :: AudioOnlyHlsTrackType
pattern AudioOnlyVariantStream = AudioOnlyHlsTrackType' "AUDIO_ONLY_VARIANT_STREAM"

{-# COMPLETE
  AlternateAudioAutoSelect,
  AlternateAudioAutoSelectDefault,
  AlternateAudioNotAutoSelect,
  AudioOnlyVariantStream,
  AudioOnlyHlsTrackType'
  #-}

instance FromText AudioOnlyHlsTrackType where
  parser = (AudioOnlyHlsTrackType' . mk) <$> takeText

instance ToText AudioOnlyHlsTrackType where
  toText (AudioOnlyHlsTrackType' ci) = original ci

instance Hashable AudioOnlyHlsTrackType

instance NFData AudioOnlyHlsTrackType

instance ToByteString AudioOnlyHlsTrackType

instance ToQuery AudioOnlyHlsTrackType

instance ToHeader AudioOnlyHlsTrackType

instance ToJSON AudioOnlyHlsTrackType where
  toJSON = toJSONText

instance FromJSON AudioOnlyHlsTrackType where
  parseJSON = parseJSONText "AudioOnlyHlsTrackType"
