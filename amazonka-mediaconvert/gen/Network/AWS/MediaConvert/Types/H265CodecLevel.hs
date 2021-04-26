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
-- Module      : Network.AWS.MediaConvert.Types.H265CodecLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265CodecLevel
  ( H265CodecLevel
      ( ..,
        H265CodecLevelAUTO,
        H265CodecLevelLEVEL1,
        H265CodecLevelLEVEL2,
        H265CodecLevelLEVEL21,
        H265CodecLevelLEVEL3,
        H265CodecLevelLEVEL31,
        H265CodecLevelLEVEL4,
        H265CodecLevelLEVEL41,
        H265CodecLevelLEVEL5,
        H265CodecLevelLEVEL51,
        H265CodecLevelLEVEL52,
        H265CodecLevelLEVEL6,
        H265CodecLevelLEVEL61,
        H265CodecLevelLEVEL62
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H.265 Level.
newtype H265CodecLevel = H265CodecLevel'
  { fromH265CodecLevel ::
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

pattern H265CodecLevelAUTO :: H265CodecLevel
pattern H265CodecLevelAUTO = H265CodecLevel' "AUTO"

pattern H265CodecLevelLEVEL1 :: H265CodecLevel
pattern H265CodecLevelLEVEL1 = H265CodecLevel' "LEVEL_1"

pattern H265CodecLevelLEVEL2 :: H265CodecLevel
pattern H265CodecLevelLEVEL2 = H265CodecLevel' "LEVEL_2"

pattern H265CodecLevelLEVEL21 :: H265CodecLevel
pattern H265CodecLevelLEVEL21 = H265CodecLevel' "LEVEL_2_1"

pattern H265CodecLevelLEVEL3 :: H265CodecLevel
pattern H265CodecLevelLEVEL3 = H265CodecLevel' "LEVEL_3"

pattern H265CodecLevelLEVEL31 :: H265CodecLevel
pattern H265CodecLevelLEVEL31 = H265CodecLevel' "LEVEL_3_1"

pattern H265CodecLevelLEVEL4 :: H265CodecLevel
pattern H265CodecLevelLEVEL4 = H265CodecLevel' "LEVEL_4"

pattern H265CodecLevelLEVEL41 :: H265CodecLevel
pattern H265CodecLevelLEVEL41 = H265CodecLevel' "LEVEL_4_1"

pattern H265CodecLevelLEVEL5 :: H265CodecLevel
pattern H265CodecLevelLEVEL5 = H265CodecLevel' "LEVEL_5"

pattern H265CodecLevelLEVEL51 :: H265CodecLevel
pattern H265CodecLevelLEVEL51 = H265CodecLevel' "LEVEL_5_1"

pattern H265CodecLevelLEVEL52 :: H265CodecLevel
pattern H265CodecLevelLEVEL52 = H265CodecLevel' "LEVEL_5_2"

pattern H265CodecLevelLEVEL6 :: H265CodecLevel
pattern H265CodecLevelLEVEL6 = H265CodecLevel' "LEVEL_6"

pattern H265CodecLevelLEVEL61 :: H265CodecLevel
pattern H265CodecLevelLEVEL61 = H265CodecLevel' "LEVEL_6_1"

pattern H265CodecLevelLEVEL62 :: H265CodecLevel
pattern H265CodecLevelLEVEL62 = H265CodecLevel' "LEVEL_6_2"

{-# COMPLETE
  H265CodecLevelAUTO,
  H265CodecLevelLEVEL1,
  H265CodecLevelLEVEL2,
  H265CodecLevelLEVEL21,
  H265CodecLevelLEVEL3,
  H265CodecLevelLEVEL31,
  H265CodecLevelLEVEL4,
  H265CodecLevelLEVEL41,
  H265CodecLevelLEVEL5,
  H265CodecLevelLEVEL51,
  H265CodecLevelLEVEL52,
  H265CodecLevelLEVEL6,
  H265CodecLevelLEVEL61,
  H265CodecLevelLEVEL62,
  H265CodecLevel'
  #-}

instance Prelude.FromText H265CodecLevel where
  parser = H265CodecLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265CodecLevel where
  toText (H265CodecLevel' x) = x

instance Prelude.Hashable H265CodecLevel

instance Prelude.NFData H265CodecLevel

instance Prelude.ToByteString H265CodecLevel

instance Prelude.ToQuery H265CodecLevel

instance Prelude.ToHeader H265CodecLevel

instance Prelude.ToJSON H265CodecLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265CodecLevel where
  parseJSON = Prelude.parseJSONText "H265CodecLevel"
