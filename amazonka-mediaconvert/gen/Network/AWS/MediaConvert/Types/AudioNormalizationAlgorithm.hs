{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ANAItuBs17701,
        ANAItuBs17702,
        ANAItuBs17703,
        ANAItuBs17704
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose one of the following audio normalization algorithms: ITU-R BS.1770-1: Ungated loudness. A measurement of ungated average loudness for an entire piece of content, suitable for measurement of short-form content under ATSC recommendation A/85. Supports up to 5.1 audio channels. ITU-R BS.1770-2: Gated loudness. A measurement of gated average loudness compliant with the requirements of EBU-R128. Supports up to 5.1 audio channels. ITU-R BS.1770-3: Modified peak. The same loudness measurement algorithm as 1770-2, with an updated true peak measurement. ITU-R BS.1770-4: Higher channel count. Allows for more audio channels than the other algorithms, including configurations such as 7.1.
data AudioNormalizationAlgorithm
  = AudioNormalizationAlgorithm'
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

pattern ANAItuBs17701 :: AudioNormalizationAlgorithm
pattern ANAItuBs17701 = AudioNormalizationAlgorithm' "ITU_BS_1770_1"

pattern ANAItuBs17702 :: AudioNormalizationAlgorithm
pattern ANAItuBs17702 = AudioNormalizationAlgorithm' "ITU_BS_1770_2"

pattern ANAItuBs17703 :: AudioNormalizationAlgorithm
pattern ANAItuBs17703 = AudioNormalizationAlgorithm' "ITU_BS_1770_3"

pattern ANAItuBs17704 :: AudioNormalizationAlgorithm
pattern ANAItuBs17704 = AudioNormalizationAlgorithm' "ITU_BS_1770_4"

{-# COMPLETE
  ANAItuBs17701,
  ANAItuBs17702,
  ANAItuBs17703,
  ANAItuBs17704,
  AudioNormalizationAlgorithm'
  #-}

instance FromText AudioNormalizationAlgorithm where
  parser = (AudioNormalizationAlgorithm' . mk) <$> takeText

instance ToText AudioNormalizationAlgorithm where
  toText (AudioNormalizationAlgorithm' ci) = original ci

instance Hashable AudioNormalizationAlgorithm

instance NFData AudioNormalizationAlgorithm

instance ToByteString AudioNormalizationAlgorithm

instance ToQuery AudioNormalizationAlgorithm

instance ToHeader AudioNormalizationAlgorithm

instance ToJSON AudioNormalizationAlgorithm where
  toJSON = toJSONText

instance FromJSON AudioNormalizationAlgorithm where
  parseJSON = parseJSONText "AudioNormalizationAlgorithm"
