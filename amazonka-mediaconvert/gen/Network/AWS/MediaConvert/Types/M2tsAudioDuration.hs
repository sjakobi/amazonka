{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.M2tsAudioDuration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsAudioDuration
  ( M2tsAudioDuration
      ( ..,
        M2tsAudioDurationDEFAULTCODECDURATION,
        M2tsAudioDurationMATCHVIDEODURATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify this setting only when your output will be consumed by a
-- downstream repackaging workflow that is sensitive to very small duration
-- differences between video and audio. For this situation, choose Match
-- video duration (MATCH_VIDEO_DURATION). In all other cases, keep the
-- default value, Default codec duration (DEFAULT_CODEC_DURATION). When you
-- choose Match video duration, MediaConvert pads the output audio streams
-- with silence or trims them to ensure that the total duration of each
-- audio stream is at least as long as the total duration of the video
-- stream. After padding or trimming, the audio stream duration is no more
-- than one frame longer than the video stream. MediaConvert applies audio
-- padding or trimming only to the end of the last segment of the output.
-- For unsegmented outputs, MediaConvert adds padding only to the end of
-- the file. When you keep the default value, any minor discrepancies
-- between audio and video duration will depend on your output audio codec.
newtype M2tsAudioDuration = M2tsAudioDuration'
  { fromM2tsAudioDuration ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern M2tsAudioDurationDEFAULTCODECDURATION :: M2tsAudioDuration
pattern M2tsAudioDurationDEFAULTCODECDURATION = M2tsAudioDuration' "DEFAULT_CODEC_DURATION"

pattern M2tsAudioDurationMATCHVIDEODURATION :: M2tsAudioDuration
pattern M2tsAudioDurationMATCHVIDEODURATION = M2tsAudioDuration' "MATCH_VIDEO_DURATION"

{-# COMPLETE
  M2tsAudioDurationDEFAULTCODECDURATION,
  M2tsAudioDurationMATCHVIDEODURATION,
  M2tsAudioDuration'
  #-}

instance Prelude.FromText M2tsAudioDuration where
  parser = M2tsAudioDuration' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsAudioDuration where
  toText (M2tsAudioDuration' x) = x

instance Prelude.Hashable M2tsAudioDuration

instance Prelude.NFData M2tsAudioDuration

instance Prelude.ToByteString M2tsAudioDuration

instance Prelude.ToQuery M2tsAudioDuration

instance Prelude.ToHeader M2tsAudioDuration

instance Prelude.ToJSON M2tsAudioDuration where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsAudioDuration where
  parseJSON = Prelude.parseJSONText "M2tsAudioDuration"
