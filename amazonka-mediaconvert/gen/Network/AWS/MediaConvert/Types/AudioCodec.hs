{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AC3,
        Aac,
        Aiff,
        EAC3,
        EAC3Atmos,
        MP2,
        MP3,
        Opus,
        Passthrough,
        Vorbis,
        Wav
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Type of Audio codec.
data AudioCodec = AudioCodec' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AC3 :: AudioCodec
pattern AC3 = AudioCodec' "AC3"

pattern Aac :: AudioCodec
pattern Aac = AudioCodec' "AAC"

pattern Aiff :: AudioCodec
pattern Aiff = AudioCodec' "AIFF"

pattern EAC3 :: AudioCodec
pattern EAC3 = AudioCodec' "EAC3"

pattern EAC3Atmos :: AudioCodec
pattern EAC3Atmos = AudioCodec' "EAC3_ATMOS"

pattern MP2 :: AudioCodec
pattern MP2 = AudioCodec' "MP2"

pattern MP3 :: AudioCodec
pattern MP3 = AudioCodec' "MP3"

pattern Opus :: AudioCodec
pattern Opus = AudioCodec' "OPUS"

pattern Passthrough :: AudioCodec
pattern Passthrough = AudioCodec' "PASSTHROUGH"

pattern Vorbis :: AudioCodec
pattern Vorbis = AudioCodec' "VORBIS"

pattern Wav :: AudioCodec
pattern Wav = AudioCodec' "WAV"

{-# COMPLETE
  AC3,
  Aac,
  Aiff,
  EAC3,
  EAC3Atmos,
  MP2,
  MP3,
  Opus,
  Passthrough,
  Vorbis,
  Wav,
  AudioCodec'
  #-}

instance FromText AudioCodec where
  parser = (AudioCodec' . mk) <$> takeText

instance ToText AudioCodec where
  toText (AudioCodec' ci) = original ci

instance Hashable AudioCodec

instance NFData AudioCodec

instance ToByteString AudioCodec

instance ToQuery AudioCodec

instance ToHeader AudioCodec

instance ToJSON AudioCodec where
  toJSON = toJSONText

instance FromJSON AudioCodec where
  parseJSON = parseJSONText "AudioCodec"
