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
-- Module      : Network.AWS.MediaLive.Types.TemporalFilterStrength
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TemporalFilterStrength
  ( TemporalFilterStrength
      ( ..,
        TemporalFilterStrengthAUTO,
        TemporalFilterStrengthSTRENGTH1,
        TemporalFilterStrengthSTRENGTH10,
        TemporalFilterStrengthSTRENGTH11,
        TemporalFilterStrengthSTRENGTH12,
        TemporalFilterStrengthSTRENGTH13,
        TemporalFilterStrengthSTRENGTH14,
        TemporalFilterStrengthSTRENGTH15,
        TemporalFilterStrengthSTRENGTH16,
        TemporalFilterStrengthSTRENGTH2,
        TemporalFilterStrengthSTRENGTH3,
        TemporalFilterStrengthSTRENGTH4,
        TemporalFilterStrengthSTRENGTH5,
        TemporalFilterStrengthSTRENGTH6,
        TemporalFilterStrengthSTRENGTH7,
        TemporalFilterStrengthSTRENGTH8,
        TemporalFilterStrengthSTRENGTH9
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Temporal Filter Strength
newtype TemporalFilterStrength = TemporalFilterStrength'
  { fromTemporalFilterStrength ::
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

pattern TemporalFilterStrengthAUTO :: TemporalFilterStrength
pattern TemporalFilterStrengthAUTO = TemporalFilterStrength' "AUTO"

pattern TemporalFilterStrengthSTRENGTH1 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH1 = TemporalFilterStrength' "STRENGTH_1"

pattern TemporalFilterStrengthSTRENGTH10 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH10 = TemporalFilterStrength' "STRENGTH_10"

pattern TemporalFilterStrengthSTRENGTH11 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH11 = TemporalFilterStrength' "STRENGTH_11"

pattern TemporalFilterStrengthSTRENGTH12 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH12 = TemporalFilterStrength' "STRENGTH_12"

pattern TemporalFilterStrengthSTRENGTH13 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH13 = TemporalFilterStrength' "STRENGTH_13"

pattern TemporalFilterStrengthSTRENGTH14 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH14 = TemporalFilterStrength' "STRENGTH_14"

pattern TemporalFilterStrengthSTRENGTH15 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH15 = TemporalFilterStrength' "STRENGTH_15"

pattern TemporalFilterStrengthSTRENGTH16 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH16 = TemporalFilterStrength' "STRENGTH_16"

pattern TemporalFilterStrengthSTRENGTH2 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH2 = TemporalFilterStrength' "STRENGTH_2"

pattern TemporalFilterStrengthSTRENGTH3 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH3 = TemporalFilterStrength' "STRENGTH_3"

pattern TemporalFilterStrengthSTRENGTH4 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH4 = TemporalFilterStrength' "STRENGTH_4"

pattern TemporalFilterStrengthSTRENGTH5 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH5 = TemporalFilterStrength' "STRENGTH_5"

pattern TemporalFilterStrengthSTRENGTH6 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH6 = TemporalFilterStrength' "STRENGTH_6"

pattern TemporalFilterStrengthSTRENGTH7 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH7 = TemporalFilterStrength' "STRENGTH_7"

pattern TemporalFilterStrengthSTRENGTH8 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH8 = TemporalFilterStrength' "STRENGTH_8"

pattern TemporalFilterStrengthSTRENGTH9 :: TemporalFilterStrength
pattern TemporalFilterStrengthSTRENGTH9 = TemporalFilterStrength' "STRENGTH_9"

{-# COMPLETE
  TemporalFilterStrengthAUTO,
  TemporalFilterStrengthSTRENGTH1,
  TemporalFilterStrengthSTRENGTH10,
  TemporalFilterStrengthSTRENGTH11,
  TemporalFilterStrengthSTRENGTH12,
  TemporalFilterStrengthSTRENGTH13,
  TemporalFilterStrengthSTRENGTH14,
  TemporalFilterStrengthSTRENGTH15,
  TemporalFilterStrengthSTRENGTH16,
  TemporalFilterStrengthSTRENGTH2,
  TemporalFilterStrengthSTRENGTH3,
  TemporalFilterStrengthSTRENGTH4,
  TemporalFilterStrengthSTRENGTH5,
  TemporalFilterStrengthSTRENGTH6,
  TemporalFilterStrengthSTRENGTH7,
  TemporalFilterStrengthSTRENGTH8,
  TemporalFilterStrengthSTRENGTH9,
  TemporalFilterStrength'
  #-}

instance Prelude.FromText TemporalFilterStrength where
  parser = TemporalFilterStrength' Prelude.<$> Prelude.takeText

instance Prelude.ToText TemporalFilterStrength where
  toText (TemporalFilterStrength' x) = x

instance Prelude.Hashable TemporalFilterStrength

instance Prelude.NFData TemporalFilterStrength

instance Prelude.ToByteString TemporalFilterStrength

instance Prelude.ToQuery TemporalFilterStrength

instance Prelude.ToHeader TemporalFilterStrength

instance Prelude.ToJSON TemporalFilterStrength where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TemporalFilterStrength where
  parseJSON = Prelude.parseJSONText "TemporalFilterStrength"
