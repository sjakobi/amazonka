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
-- Module      : Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AudioNormalizationAlgorithm
  ( AudioNormalizationAlgorithm
      ( ..,
        AudioNormalizationAlgorithmITUBS17701,
        AudioNormalizationAlgorithmITUBS17702,
        AudioNormalizationAlgorithmITUBS17703,
        AudioNormalizationAlgorithmITUBS17704
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose one of the following audio normalization algorithms: ITU-R
-- BS.1770-1: Ungated loudness. A measurement of ungated average loudness
-- for an entire piece of content, suitable for measurement of short-form
-- content under ATSC recommendation A\/85. Supports up to 5.1 audio
-- channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated
-- average loudness compliant with the requirements of EBU-R128. Supports
-- up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same
-- loudness measurement algorithm as 1770-2, with an updated true peak
-- measurement. ITU-R BS.1770-4: Higher channel count. Allows for more
-- audio channels than the other algorithms, including configurations such
-- as 7.1.
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

pattern AudioNormalizationAlgorithmITUBS17701 :: AudioNormalizationAlgorithm
pattern AudioNormalizationAlgorithmITUBS17701 = AudioNormalizationAlgorithm' "ITU_BS_1770_1"

pattern AudioNormalizationAlgorithmITUBS17702 :: AudioNormalizationAlgorithm
pattern AudioNormalizationAlgorithmITUBS17702 = AudioNormalizationAlgorithm' "ITU_BS_1770_2"

pattern AudioNormalizationAlgorithmITUBS17703 :: AudioNormalizationAlgorithm
pattern AudioNormalizationAlgorithmITUBS17703 = AudioNormalizationAlgorithm' "ITU_BS_1770_3"

pattern AudioNormalizationAlgorithmITUBS17704 :: AudioNormalizationAlgorithm
pattern AudioNormalizationAlgorithmITUBS17704 = AudioNormalizationAlgorithm' "ITU_BS_1770_4"

{-# COMPLETE
  AudioNormalizationAlgorithmITUBS17701,
  AudioNormalizationAlgorithmITUBS17702,
  AudioNormalizationAlgorithmITUBS17703,
  AudioNormalizationAlgorithmITUBS17704,
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
