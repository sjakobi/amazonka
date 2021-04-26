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
-- Module      : Network.AWS.MQ.Types.DayOfWeek
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.DayOfWeek
  ( DayOfWeek
      ( ..,
        DayOfWeekFRIDAY,
        DayOfWeekMONDAY,
        DayOfWeekSATURDAY,
        DayOfWeekSUNDAY,
        DayOfWeekTHURSDAY,
        DayOfWeekTUESDAY,
        DayOfWeekWEDNESDAY
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

pattern DayOfWeekFRIDAY :: DayOfWeek
pattern DayOfWeekFRIDAY = DayOfWeek' "FRIDAY"

pattern DayOfWeekMONDAY :: DayOfWeek
pattern DayOfWeekMONDAY = DayOfWeek' "MONDAY"

pattern DayOfWeekSATURDAY :: DayOfWeek
pattern DayOfWeekSATURDAY = DayOfWeek' "SATURDAY"

pattern DayOfWeekSUNDAY :: DayOfWeek
pattern DayOfWeekSUNDAY = DayOfWeek' "SUNDAY"

pattern DayOfWeekTHURSDAY :: DayOfWeek
pattern DayOfWeekTHURSDAY = DayOfWeek' "THURSDAY"

pattern DayOfWeekTUESDAY :: DayOfWeek
pattern DayOfWeekTUESDAY = DayOfWeek' "TUESDAY"

pattern DayOfWeekWEDNESDAY :: DayOfWeek
pattern DayOfWeekWEDNESDAY = DayOfWeek' "WEDNESDAY"

{-# COMPLETE
  DayOfWeekFRIDAY,
  DayOfWeekMONDAY,
  DayOfWeekSATURDAY,
  DayOfWeekSUNDAY,
  DayOfWeekTHURSDAY,
  DayOfWeekTUESDAY,
  DayOfWeekWEDNESDAY,
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
