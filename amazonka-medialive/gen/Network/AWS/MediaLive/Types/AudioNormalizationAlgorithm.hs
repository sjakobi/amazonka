{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Itu17701,
        Itu17702
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Audio Normalization Algorithm
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

pattern Itu17701 :: AudioNormalizationAlgorithm
pattern Itu17701 = AudioNormalizationAlgorithm' "ITU_1770_1"

pattern Itu17702 :: AudioNormalizationAlgorithm
pattern Itu17702 = AudioNormalizationAlgorithm' "ITU_1770_2"

{-# COMPLETE
  Itu17701,
  Itu17702,
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
