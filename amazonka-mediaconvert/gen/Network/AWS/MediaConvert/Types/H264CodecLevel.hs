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
-- Module      : Network.AWS.MediaConvert.Types.H264CodecLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264CodecLevel
  ( H264CodecLevel
      ( ..,
        H264CodecLevelAUTO,
        H264CodecLevelLEVEL1,
        H264CodecLevelLEVEL11,
        H264CodecLevelLEVEL12,
        H264CodecLevelLEVEL13,
        H264CodecLevelLEVEL2,
        H264CodecLevelLEVEL21,
        H264CodecLevelLEVEL22,
        H264CodecLevelLEVEL3,
        H264CodecLevelLEVEL31,
        H264CodecLevelLEVEL32,
        H264CodecLevelLEVEL4,
        H264CodecLevelLEVEL41,
        H264CodecLevelLEVEL42,
        H264CodecLevelLEVEL5,
        H264CodecLevelLEVEL51,
        H264CodecLevelLEVEL52
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify an H.264 level that is consistent with your output video
-- settings. If you aren\'t sure what level to specify, choose Auto (AUTO).
newtype H264CodecLevel = H264CodecLevel'
  { fromH264CodecLevel ::
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

pattern H264CodecLevelAUTO :: H264CodecLevel
pattern H264CodecLevelAUTO = H264CodecLevel' "AUTO"

pattern H264CodecLevelLEVEL1 :: H264CodecLevel
pattern H264CodecLevelLEVEL1 = H264CodecLevel' "LEVEL_1"

pattern H264CodecLevelLEVEL11 :: H264CodecLevel
pattern H264CodecLevelLEVEL11 = H264CodecLevel' "LEVEL_1_1"

pattern H264CodecLevelLEVEL12 :: H264CodecLevel
pattern H264CodecLevelLEVEL12 = H264CodecLevel' "LEVEL_1_2"

pattern H264CodecLevelLEVEL13 :: H264CodecLevel
pattern H264CodecLevelLEVEL13 = H264CodecLevel' "LEVEL_1_3"

pattern H264CodecLevelLEVEL2 :: H264CodecLevel
pattern H264CodecLevelLEVEL2 = H264CodecLevel' "LEVEL_2"

pattern H264CodecLevelLEVEL21 :: H264CodecLevel
pattern H264CodecLevelLEVEL21 = H264CodecLevel' "LEVEL_2_1"

pattern H264CodecLevelLEVEL22 :: H264CodecLevel
pattern H264CodecLevelLEVEL22 = H264CodecLevel' "LEVEL_2_2"

pattern H264CodecLevelLEVEL3 :: H264CodecLevel
pattern H264CodecLevelLEVEL3 = H264CodecLevel' "LEVEL_3"

pattern H264CodecLevelLEVEL31 :: H264CodecLevel
pattern H264CodecLevelLEVEL31 = H264CodecLevel' "LEVEL_3_1"

pattern H264CodecLevelLEVEL32 :: H264CodecLevel
pattern H264CodecLevelLEVEL32 = H264CodecLevel' "LEVEL_3_2"

pattern H264CodecLevelLEVEL4 :: H264CodecLevel
pattern H264CodecLevelLEVEL4 = H264CodecLevel' "LEVEL_4"

pattern H264CodecLevelLEVEL41 :: H264CodecLevel
pattern H264CodecLevelLEVEL41 = H264CodecLevel' "LEVEL_4_1"

pattern H264CodecLevelLEVEL42 :: H264CodecLevel
pattern H264CodecLevelLEVEL42 = H264CodecLevel' "LEVEL_4_2"

pattern H264CodecLevelLEVEL5 :: H264CodecLevel
pattern H264CodecLevelLEVEL5 = H264CodecLevel' "LEVEL_5"

pattern H264CodecLevelLEVEL51 :: H264CodecLevel
pattern H264CodecLevelLEVEL51 = H264CodecLevel' "LEVEL_5_1"

pattern H264CodecLevelLEVEL52 :: H264CodecLevel
pattern H264CodecLevelLEVEL52 = H264CodecLevel' "LEVEL_5_2"

{-# COMPLETE
  H264CodecLevelAUTO,
  H264CodecLevelLEVEL1,
  H264CodecLevelLEVEL11,
  H264CodecLevelLEVEL12,
  H264CodecLevelLEVEL13,
  H264CodecLevelLEVEL2,
  H264CodecLevelLEVEL21,
  H264CodecLevelLEVEL22,
  H264CodecLevelLEVEL3,
  H264CodecLevelLEVEL31,
  H264CodecLevelLEVEL32,
  H264CodecLevelLEVEL4,
  H264CodecLevelLEVEL41,
  H264CodecLevelLEVEL42,
  H264CodecLevelLEVEL5,
  H264CodecLevelLEVEL51,
  H264CodecLevelLEVEL52,
  H264CodecLevel'
  #-}

instance Prelude.FromText H264CodecLevel where
  parser = H264CodecLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264CodecLevel where
  toText (H264CodecLevel' x) = x

instance Prelude.Hashable H264CodecLevel

instance Prelude.NFData H264CodecLevel

instance Prelude.ToByteString H264CodecLevel

instance Prelude.ToQuery H264CodecLevel

instance Prelude.ToHeader H264CodecLevel

instance Prelude.ToJSON H264CodecLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264CodecLevel where
  parseJSON = Prelude.parseJSONText "H264CodecLevel"
