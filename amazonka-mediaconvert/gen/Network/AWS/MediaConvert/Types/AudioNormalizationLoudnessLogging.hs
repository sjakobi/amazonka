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
-- Module      : Network.AWS.MediaConvert.Types.AudioNormalizationLoudnessLogging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioNormalizationLoudnessLogging
  ( AudioNormalizationLoudnessLogging
      ( ..,
        AudioNormalizationLoudnessLoggingDONTLOG,
        AudioNormalizationLoudnessLoggingLOG
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If set to LOG, log each output\'s audio track loudness to a CSV file.
newtype AudioNormalizationLoudnessLogging = AudioNormalizationLoudnessLogging'
  { fromAudioNormalizationLoudnessLogging ::
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

pattern AudioNormalizationLoudnessLoggingDONTLOG :: AudioNormalizationLoudnessLogging
pattern AudioNormalizationLoudnessLoggingDONTLOG = AudioNormalizationLoudnessLogging' "DONT_LOG"

pattern AudioNormalizationLoudnessLoggingLOG :: AudioNormalizationLoudnessLogging
pattern AudioNormalizationLoudnessLoggingLOG = AudioNormalizationLoudnessLogging' "LOG"

{-# COMPLETE
  AudioNormalizationLoudnessLoggingDONTLOG,
  AudioNormalizationLoudnessLoggingLOG,
  AudioNormalizationLoudnessLogging'
  #-}

instance Prelude.FromText AudioNormalizationLoudnessLogging where
  parser = AudioNormalizationLoudnessLogging' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioNormalizationLoudnessLogging where
  toText (AudioNormalizationLoudnessLogging' x) = x

instance Prelude.Hashable AudioNormalizationLoudnessLogging

instance Prelude.NFData AudioNormalizationLoudnessLogging

instance Prelude.ToByteString AudioNormalizationLoudnessLogging

instance Prelude.ToQuery AudioNormalizationLoudnessLogging

instance Prelude.ToHeader AudioNormalizationLoudnessLogging

instance Prelude.ToJSON AudioNormalizationLoudnessLogging where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioNormalizationLoudnessLogging where
  parseJSON = Prelude.parseJSONText "AudioNormalizationLoudnessLogging"
