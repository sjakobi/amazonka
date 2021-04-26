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
-- Module      : Network.AWS.MediaConvert.Types.AudioCodec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioCodec
  ( AudioCodec
      ( ..,
        AudioCodecAAC,
        AudioCodecAC3,
        AudioCodecAIFF,
        AudioCodecEAC3,
        AudioCodecEAC3ATMOS,
        AudioCodecMP2,
        AudioCodecMP3,
        AudioCodecOPUS,
        AudioCodecPASSTHROUGH,
        AudioCodecVORBIS,
        AudioCodecWAV
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Type of Audio codec.
newtype AudioCodec = AudioCodec'
  { fromAudioCodec ::
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

pattern AudioCodecAAC :: AudioCodec
pattern AudioCodecAAC = AudioCodec' "AAC"

pattern AudioCodecAC3 :: AudioCodec
pattern AudioCodecAC3 = AudioCodec' "AC3"

pattern AudioCodecAIFF :: AudioCodec
pattern AudioCodecAIFF = AudioCodec' "AIFF"

pattern AudioCodecEAC3 :: AudioCodec
pattern AudioCodecEAC3 = AudioCodec' "EAC3"

pattern AudioCodecEAC3ATMOS :: AudioCodec
pattern AudioCodecEAC3ATMOS = AudioCodec' "EAC3_ATMOS"

pattern AudioCodecMP2 :: AudioCodec
pattern AudioCodecMP2 = AudioCodec' "MP2"

pattern AudioCodecMP3 :: AudioCodec
pattern AudioCodecMP3 = AudioCodec' "MP3"

pattern AudioCodecOPUS :: AudioCodec
pattern AudioCodecOPUS = AudioCodec' "OPUS"

pattern AudioCodecPASSTHROUGH :: AudioCodec
pattern AudioCodecPASSTHROUGH = AudioCodec' "PASSTHROUGH"

pattern AudioCodecVORBIS :: AudioCodec
pattern AudioCodecVORBIS = AudioCodec' "VORBIS"

pattern AudioCodecWAV :: AudioCodec
pattern AudioCodecWAV = AudioCodec' "WAV"

{-# COMPLETE
  AudioCodecAAC,
  AudioCodecAC3,
  AudioCodecAIFF,
  AudioCodecEAC3,
  AudioCodecEAC3ATMOS,
  AudioCodecMP2,
  AudioCodecMP3,
  AudioCodecOPUS,
  AudioCodecPASSTHROUGH,
  AudioCodecVORBIS,
  AudioCodecWAV,
  AudioCodec'
  #-}

instance Prelude.FromText AudioCodec where
  parser = AudioCodec' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioCodec where
  toText (AudioCodec' x) = x

instance Prelude.Hashable AudioCodec

instance Prelude.NFData AudioCodec

instance Prelude.ToByteString AudioCodec

instance Prelude.ToQuery AudioCodec

instance Prelude.ToHeader AudioCodec

instance Prelude.ToJSON AudioCodec where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioCodec where
  parseJSON = Prelude.parseJSONText "AudioCodec"
