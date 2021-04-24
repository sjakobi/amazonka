{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.TemporalFilterStrength
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TemporalFilterStrength
  ( TemporalFilterStrength
      ( ..,
        TFSAuto,
        TFSStrength1,
        TFSStrength10,
        TFSStrength11,
        TFSStrength12,
        TFSStrength13,
        TFSStrength14,
        TFSStrength15,
        TFSStrength16,
        TFSStrength2,
        TFSStrength3,
        TFSStrength4,
        TFSStrength5,
        TFSStrength6,
        TFSStrength7,
        TFSStrength8,
        TFSStrength9
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Temporal Filter Strength
data TemporalFilterStrength
  = TemporalFilterStrength'
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

pattern TFSAuto :: TemporalFilterStrength
pattern TFSAuto = TemporalFilterStrength' "AUTO"

pattern TFSStrength1 :: TemporalFilterStrength
pattern TFSStrength1 = TemporalFilterStrength' "STRENGTH_1"

pattern TFSStrength10 :: TemporalFilterStrength
pattern TFSStrength10 = TemporalFilterStrength' "STRENGTH_10"

pattern TFSStrength11 :: TemporalFilterStrength
pattern TFSStrength11 = TemporalFilterStrength' "STRENGTH_11"

pattern TFSStrength12 :: TemporalFilterStrength
pattern TFSStrength12 = TemporalFilterStrength' "STRENGTH_12"

pattern TFSStrength13 :: TemporalFilterStrength
pattern TFSStrength13 = TemporalFilterStrength' "STRENGTH_13"

pattern TFSStrength14 :: TemporalFilterStrength
pattern TFSStrength14 = TemporalFilterStrength' "STRENGTH_14"

pattern TFSStrength15 :: TemporalFilterStrength
pattern TFSStrength15 = TemporalFilterStrength' "STRENGTH_15"

pattern TFSStrength16 :: TemporalFilterStrength
pattern TFSStrength16 = TemporalFilterStrength' "STRENGTH_16"

pattern TFSStrength2 :: TemporalFilterStrength
pattern TFSStrength2 = TemporalFilterStrength' "STRENGTH_2"

pattern TFSStrength3 :: TemporalFilterStrength
pattern TFSStrength3 = TemporalFilterStrength' "STRENGTH_3"

pattern TFSStrength4 :: TemporalFilterStrength
pattern TFSStrength4 = TemporalFilterStrength' "STRENGTH_4"

pattern TFSStrength5 :: TemporalFilterStrength
pattern TFSStrength5 = TemporalFilterStrength' "STRENGTH_5"

pattern TFSStrength6 :: TemporalFilterStrength
pattern TFSStrength6 = TemporalFilterStrength' "STRENGTH_6"

pattern TFSStrength7 :: TemporalFilterStrength
pattern TFSStrength7 = TemporalFilterStrength' "STRENGTH_7"

pattern TFSStrength8 :: TemporalFilterStrength
pattern TFSStrength8 = TemporalFilterStrength' "STRENGTH_8"

pattern TFSStrength9 :: TemporalFilterStrength
pattern TFSStrength9 = TemporalFilterStrength' "STRENGTH_9"

{-# COMPLETE
  TFSAuto,
  TFSStrength1,
  TFSStrength10,
  TFSStrength11,
  TFSStrength12,
  TFSStrength13,
  TFSStrength14,
  TFSStrength15,
  TFSStrength16,
  TFSStrength2,
  TFSStrength3,
  TFSStrength4,
  TFSStrength5,
  TFSStrength6,
  TFSStrength7,
  TFSStrength8,
  TFSStrength9,
  TemporalFilterStrength'
  #-}

instance FromText TemporalFilterStrength where
  parser = (TemporalFilterStrength' . mk) <$> takeText

instance ToText TemporalFilterStrength where
  toText (TemporalFilterStrength' ci) = original ci

instance Hashable TemporalFilterStrength

instance NFData TemporalFilterStrength

instance ToByteString TemporalFilterStrength

instance ToQuery TemporalFilterStrength

instance ToHeader TemporalFilterStrength

instance ToJSON TemporalFilterStrength where
  toJSON = toJSONText

instance FromJSON TemporalFilterStrength where
  parseJSON = parseJSONText "TemporalFilterStrength"
