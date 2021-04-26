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
-- Module      : Network.AWS.MediaLive.Types.AudioNormalizationAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioNormalizationAlgorithm
  ( AudioNormalizationAlgorithm
      ( ..,
        AudioNormalizationAlgorithmITU17701,
        AudioNormalizationAlgorithmITU17702
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Audio Normalization Algorithm
newtype AudioNormalizationAlgorithm = AudioNormalizationAlgorithm'
  { fromAudioNormalizationAlgorithm ::
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

pattern AudioNormalizationAlgorithmITU17701 :: AudioNormalizationAlgorithm
pattern AudioNormalizationAlgorithmITU17701 = AudioNormalizationAlgorithm' "ITU_1770_1"

pattern AudioNormalizationAlgorithmITU17702 :: AudioNormalizationAlgorithm
pattern AudioNormalizationAlgorithmITU17702 = AudioNormalizationAlgorithm' "ITU_1770_2"

{-# COMPLETE
  AudioNormalizationAlgorithmITU17701,
  AudioNormalizationAlgorithmITU17702,
  AudioNormalizationAlgorithm'
  #-}

instance Prelude.FromText AudioNormalizationAlgorithm where
  parser = AudioNormalizationAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText AudioNormalizationAlgorithm where
  toText (AudioNormalizationAlgorithm' x) = x

instance Prelude.Hashable AudioNormalizationAlgorithm

instance Prelude.NFData AudioNormalizationAlgorithm

instance Prelude.ToByteString AudioNormalizationAlgorithm

instance Prelude.ToQuery AudioNormalizationAlgorithm

instance Prelude.ToHeader AudioNormalizationAlgorithm

instance Prelude.ToJSON AudioNormalizationAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AudioNormalizationAlgorithm where
  parseJSON = Prelude.parseJSONText "AudioNormalizationAlgorithm"
