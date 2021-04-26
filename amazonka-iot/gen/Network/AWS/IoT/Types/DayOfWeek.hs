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
-- Module      : Network.AWS.IoT.Types.DayOfWeek
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DayOfWeek
  ( DayOfWeek
      ( ..,
        DayOfWeekFRI,
        DayOfWeekMON,
        DayOfWeekSAT,
        DayOfWeekSUN,
        DayOfWeekTHU,
        DayOfWeekTUE,
        DayOfWeekWED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DayOfWeek = DayOfWeek'
  { fromDayOfWeek ::
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

pattern DayOfWeekFRI :: DayOfWeek
pattern DayOfWeekFRI = DayOfWeek' "FRI"

pattern DayOfWeekMON :: DayOfWeek
pattern DayOfWeekMON = DayOfWeek' "MON"

pattern DayOfWeekSAT :: DayOfWeek
pattern DayOfWeekSAT = DayOfWeek' "SAT"

pattern DayOfWeekSUN :: DayOfWeek
pattern DayOfWeekSUN = DayOfWeek' "SUN"

pattern DayOfWeekTHU :: DayOfWeek
pattern DayOfWeekTHU = DayOfWeek' "THU"

pattern DayOfWeekTUE :: DayOfWeek
pattern DayOfWeekTUE = DayOfWeek' "TUE"

pattern DayOfWeekWED :: DayOfWeek
pattern DayOfWeekWED = DayOfWeek' "WED"

{-# COMPLETE
  DayOfWeekFRI,
  DayOfWeekMON,
  DayOfWeekSAT,
  DayOfWeekSUN,
  DayOfWeekTHU,
  DayOfWeekTUE,
  DayOfWeekWED,
  DayOfWeek'
  #-}

instance Prelude.FromText DayOfWeek where
  parser = DayOfWeek' Prelude.<$> Prelude.takeText

instance Prelude.ToText DayOfWeek where
  toText (DayOfWeek' x) = x

instance Prelude.Hashable DayOfWeek

instance Prelude.NFData DayOfWeek

instance Prelude.ToByteString DayOfWeek

instance Prelude.ToQuery DayOfWeek

instance Prelude.ToHeader DayOfWeek

instance Prelude.ToJSON DayOfWeek where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DayOfWeek where
  parseJSON = Prelude.parseJSONText "DayOfWeek"
