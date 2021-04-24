{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M3u8AudioDuration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M3u8AudioDuration
  ( M3u8AudioDuration
      ( ..,
        MADDefaultCodecDuration,
        MADMatchVideoDuration
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify this setting only when your output will be consumed by a downstream repackaging workflow that is sensitive to very small duration differences between video and audio. For this situation, choose Match video duration (MATCH_VIDEO_DURATION). In all other cases, keep the default value, Default codec duration (DEFAULT_CODEC_DURATION). When you choose Match video duration, MediaConvert pads the output audio streams with silence or trims them to ensure that the total duration of each audio stream is at least as long as the total duration of the video stream. After padding or trimming, the audio stream duration is no more than one frame longer than the video stream. MediaConvert applies audio padding or trimming only to the end of the last segment of the output. For unsegmented outputs, MediaConvert adds padding only to the end of the file. When you keep the default value, any minor discrepancies between audio and video duration will depend on your output audio codec.
data M3u8AudioDuration = M3u8AudioDuration' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MADDefaultCodecDuration :: M3u8AudioDuration
pattern MADDefaultCodecDuration = M3u8AudioDuration' "DEFAULT_CODEC_DURATION"

pattern MADMatchVideoDuration :: M3u8AudioDuration
pattern MADMatchVideoDuration = M3u8AudioDuration' "MATCH_VIDEO_DURATION"

{-# COMPLETE
  MADDefaultCodecDuration,
  MADMatchVideoDuration,
  M3u8AudioDuration'
  #-}

instance FromText M3u8AudioDuration where
  parser = (M3u8AudioDuration' . mk) <$> takeText

instance ToText M3u8AudioDuration where
  toText (M3u8AudioDuration' ci) = original ci

instance Hashable M3u8AudioDuration

instance NFData M3u8AudioDuration

instance ToByteString M3u8AudioDuration

instance ToQuery M3u8AudioDuration

instance ToHeader M3u8AudioDuration

instance ToJSON M3u8AudioDuration where
  toJSON = toJSONText

instance FromJSON M3u8AudioDuration where
  parseJSON = parseJSONText "M3u8AudioDuration"
