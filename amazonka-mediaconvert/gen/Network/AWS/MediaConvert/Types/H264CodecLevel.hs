{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264CodecLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264CodecLevel
  ( H264CodecLevel
      ( ..,
        HCLAuto,
        HCLLevel1,
        HCLLevel11,
        HCLLevel12,
        HCLLevel13,
        HCLLevel2,
        HCLLevel21,
        HCLLevel22,
        HCLLevel3,
        HCLLevel31,
        HCLLevel32,
        HCLLevel4,
        HCLLevel41,
        HCLLevel42,
        HCLLevel5,
        HCLLevel51,
        HCLLevel52
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specify an H.264 level that is consistent with your output video settings. If you aren't sure what level to specify, choose Auto (AUTO).
data H264CodecLevel = H264CodecLevel' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HCLAuto :: H264CodecLevel
pattern HCLAuto = H264CodecLevel' "AUTO"

pattern HCLLevel1 :: H264CodecLevel
pattern HCLLevel1 = H264CodecLevel' "LEVEL_1"

pattern HCLLevel11 :: H264CodecLevel
pattern HCLLevel11 = H264CodecLevel' "LEVEL_1_1"

pattern HCLLevel12 :: H264CodecLevel
pattern HCLLevel12 = H264CodecLevel' "LEVEL_1_2"

pattern HCLLevel13 :: H264CodecLevel
pattern HCLLevel13 = H264CodecLevel' "LEVEL_1_3"

pattern HCLLevel2 :: H264CodecLevel
pattern HCLLevel2 = H264CodecLevel' "LEVEL_2"

pattern HCLLevel21 :: H264CodecLevel
pattern HCLLevel21 = H264CodecLevel' "LEVEL_2_1"

pattern HCLLevel22 :: H264CodecLevel
pattern HCLLevel22 = H264CodecLevel' "LEVEL_2_2"

pattern HCLLevel3 :: H264CodecLevel
pattern HCLLevel3 = H264CodecLevel' "LEVEL_3"

pattern HCLLevel31 :: H264CodecLevel
pattern HCLLevel31 = H264CodecLevel' "LEVEL_3_1"

pattern HCLLevel32 :: H264CodecLevel
pattern HCLLevel32 = H264CodecLevel' "LEVEL_3_2"

pattern HCLLevel4 :: H264CodecLevel
pattern HCLLevel4 = H264CodecLevel' "LEVEL_4"

pattern HCLLevel41 :: H264CodecLevel
pattern HCLLevel41 = H264CodecLevel' "LEVEL_4_1"

pattern HCLLevel42 :: H264CodecLevel
pattern HCLLevel42 = H264CodecLevel' "LEVEL_4_2"

pattern HCLLevel5 :: H264CodecLevel
pattern HCLLevel5 = H264CodecLevel' "LEVEL_5"

pattern HCLLevel51 :: H264CodecLevel
pattern HCLLevel51 = H264CodecLevel' "LEVEL_5_1"

pattern HCLLevel52 :: H264CodecLevel
pattern HCLLevel52 = H264CodecLevel' "LEVEL_5_2"

{-# COMPLETE
  HCLAuto,
  HCLLevel1,
  HCLLevel11,
  HCLLevel12,
  HCLLevel13,
  HCLLevel2,
  HCLLevel21,
  HCLLevel22,
  HCLLevel3,
  HCLLevel31,
  HCLLevel32,
  HCLLevel4,
  HCLLevel41,
  HCLLevel42,
  HCLLevel5,
  HCLLevel51,
  HCLLevel52,
  H264CodecLevel'
  #-}

instance FromText H264CodecLevel where
  parser = (H264CodecLevel' . mk) <$> takeText

instance ToText H264CodecLevel where
  toText (H264CodecLevel' ci) = original ci

instance Hashable H264CodecLevel

instance NFData H264CodecLevel

instance ToByteString H264CodecLevel

instance ToQuery H264CodecLevel

instance ToHeader H264CodecLevel

instance ToJSON H264CodecLevel where
  toJSON = toJSONText

instance FromJSON H264CodecLevel where
  parseJSON = parseJSONText "H264CodecLevel"
