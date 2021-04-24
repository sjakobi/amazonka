{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265CodecLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265CodecLevel
  ( H265CodecLevel
      ( ..,
        HAuto,
        HLevel1,
        HLevel2,
        HLevel21,
        HLevel3,
        HLevel31,
        HLevel4,
        HLevel41,
        HLevel5,
        HLevel51,
        HLevel52,
        HLevel6,
        HLevel61,
        HLevel62
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | H.265 Level.
data H265CodecLevel = H265CodecLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HAuto :: H265CodecLevel
pattern HAuto = H265CodecLevel' "AUTO"

pattern HLevel1 :: H265CodecLevel
pattern HLevel1 = H265CodecLevel' "LEVEL_1"

pattern HLevel2 :: H265CodecLevel
pattern HLevel2 = H265CodecLevel' "LEVEL_2"

pattern HLevel21 :: H265CodecLevel
pattern HLevel21 = H265CodecLevel' "LEVEL_2_1"

pattern HLevel3 :: H265CodecLevel
pattern HLevel3 = H265CodecLevel' "LEVEL_3"

pattern HLevel31 :: H265CodecLevel
pattern HLevel31 = H265CodecLevel' "LEVEL_3_1"

pattern HLevel4 :: H265CodecLevel
pattern HLevel4 = H265CodecLevel' "LEVEL_4"

pattern HLevel41 :: H265CodecLevel
pattern HLevel41 = H265CodecLevel' "LEVEL_4_1"

pattern HLevel5 :: H265CodecLevel
pattern HLevel5 = H265CodecLevel' "LEVEL_5"

pattern HLevel51 :: H265CodecLevel
pattern HLevel51 = H265CodecLevel' "LEVEL_5_1"

pattern HLevel52 :: H265CodecLevel
pattern HLevel52 = H265CodecLevel' "LEVEL_5_2"

pattern HLevel6 :: H265CodecLevel
pattern HLevel6 = H265CodecLevel' "LEVEL_6"

pattern HLevel61 :: H265CodecLevel
pattern HLevel61 = H265CodecLevel' "LEVEL_6_1"

pattern HLevel62 :: H265CodecLevel
pattern HLevel62 = H265CodecLevel' "LEVEL_6_2"

{-# COMPLETE
  HAuto,
  HLevel1,
  HLevel2,
  HLevel21,
  HLevel3,
  HLevel31,
  HLevel4,
  HLevel41,
  HLevel5,
  HLevel51,
  HLevel52,
  HLevel6,
  HLevel61,
  HLevel62,
  H265CodecLevel'
  #-}

instance FromText H265CodecLevel where
  parser = (H265CodecLevel' . mk) <$> takeText

instance ToText H265CodecLevel where
  toText (H265CodecLevel' ci) = original ci

instance Hashable H265CodecLevel

instance NFData H265CodecLevel

instance ToByteString H265CodecLevel

instance ToQuery H265CodecLevel

instance ToHeader H265CodecLevel

instance ToJSON H265CodecLevel where
  toJSON = toJSONText

instance FromJSON H265CodecLevel where
  parseJSON = parseJSONText "H265CodecLevel"
