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
-- Module      : Network.AWS.MediaConvert.Types.AudioChannelTag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioChannelTag
  ( AudioChannelTag
      ( ..,
        AudioChannelTagC,
        AudioChannelTagCS,
        AudioChannelTagL,
        AudioChannelTagLC,
        AudioChannelTagLFE,
        AudioChannelTagLS,
        AudioChannelTagLSD,
        AudioChannelTagR,
        AudioChannelTagRC,
        AudioChannelTagRS,
        AudioChannelTagRSD,
        AudioChannelTagTCS,
        AudioChannelTagVHC,
        AudioChannelTagVHL,
        AudioChannelTagVHR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | You can add a tag for this mono-channel audio track to mimic its
-- placement in a multi-channel layout. For example, if this track is the
-- left surround channel, choose Left surround (LS).
newtype AudioChannelTag = AudioChannelTag'
  { fromAudioChannelTag ::
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

pattern AudioChannelTagC :: AudioChannelTag
pattern AudioChannelTagC = AudioChannelTag' "C"

pattern AudioChannelTagCS :: AudioChannelTag
pattern AudioChannelTagCS = AudioChannelTag' "CS"

pattern AudioChannelTagL :: AudioChannelTag
pattern AudioChannelTagL = AudioChannelTag' "L"

pattern AudioChannelTagLC :: AudioChannelTag
pattern AudioChannelTagLC = AudioChannelTag' "LC"

pattern AudioChannelTagLFE :: AudioChannelTag
pattern AudioChannelTagLFE = AudioChannelTag' "LFE"

pattern AudioChannelTagLS :: AudioChannelTag
pattern AudioChannelTagLS = AudioChannelTag' "LS"

pattern AudioChannelTagLSD :: AudioChannelTag
pattern AudioChannelTagLSD = AudioChannelTag' "LSD"

pattern AudioChannelTagR :: AudioChannelTag
pattern AudioChannelTagR = AudioChannelTag' "R"

pattern AudioChannelTagRC :: AudioChannelTag
pattern AudioChannelTagRC = AudioChannelTag' "RC"

pattern AudioChannelTagRS :: AudioChannelTag
pattern AudioChannelTagRS = AudioChannelTag' "RS"

pattern AudioChannelTagRSD :: AudioChannelTag
pattern AudioChannelTagRSD = AudioChannelTag' "RSD"

pattern AudioChannelTagTCS :: AudioChannelTag
pattern AudioChannelTagTCS = AudioChannelTag' "TCS"

pattern AudioChannelTagVHC :: AudioChannelTag
pattern AudioChannelTagVHC = AudioChannelTag' "VHC"

pattern AudioChannelTagVHL :: AudioChannelTag
pattern AudioChannelTagVHL = AudioChannelTag' "VHL"

pattern AudioChannelTagVHR :: AudioChannelTag
pattern AudioChannelTagVHR = AudioChannelTag' "VHR"

{-# COMPLETE
  AudioChannelTagC,
  AudioChannelTagCS,
  AudioChannelTagL,
  AudioChannelTagLC,
  AudioChannelTagLFE,
  AudioChannelTagLS,
  AudioChannelTagLSD,
  AudioChannelTagR,
  AudioChannelTagRC,
  AudioChannelTagRS,
  AudioChannelTagRSD,
  AudioChannelTagTCS,
  AudioChannelTagVHC,
  AudioChannelTagVHL,
  AudioChannelTagVHR,
  AudioChannelTag'
  #-}

instance Prelude.FromText AudioChannelTag where
  parser = AudioChannelTag' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioChannelTag where
  toText (AudioChannelTag' x) = x

instance Prelude.Hashable AudioChannelTag

instance Prelude.NFData AudioChannelTag

instance Prelude.ToByteString AudioChannelTag

instance Prelude.ToQuery AudioChannelTag

instance Prelude.ToHeader AudioChannelTag

instance Prelude.ToJSON AudioChannelTag where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioChannelTag where
  parseJSON = Prelude.parseJSONText "AudioChannelTag"
