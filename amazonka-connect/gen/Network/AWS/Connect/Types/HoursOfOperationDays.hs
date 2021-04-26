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
-- Module      : Network.AWS.Connect.Types.HoursOfOperationDays
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.HoursOfOperationDays
  ( HoursOfOperationDays
      ( ..,
        HoursOfOperationDaysFRIDAY,
        HoursOfOperationDaysMONDAY,
        HoursOfOperationDaysSATURDAY,
        HoursOfOperationDaysSUNDAY,
        HoursOfOperationDaysTHURSDAY,
        HoursOfOperationDaysTUESDAY,
        HoursOfOperationDaysWEDNESDAY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype HoursOfOperationDays = HoursOfOperationDays'
  { fromHoursOfOperationDays ::
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

pattern HoursOfOperationDaysFRIDAY :: HoursOfOperationDays
pattern HoursOfOperationDaysFRIDAY = HoursOfOperationDays' "FRIDAY"

pattern HoursOfOperationDaysMONDAY :: HoursOfOperationDays
pattern HoursOfOperationDaysMONDAY = HoursOfOperationDays' "MONDAY"

pattern HoursOfOperationDaysSATURDAY :: HoursOfOperationDays
pattern HoursOfOperationDaysSATURDAY = HoursOfOperationDays' "SATURDAY"

pattern HoursOfOperationDaysSUNDAY :: HoursOfOperationDays
pattern HoursOfOperationDaysSUNDAY = HoursOfOperationDays' "SUNDAY"

pattern HoursOfOperationDaysTHURSDAY :: HoursOfOperationDays
pattern HoursOfOperationDaysTHURSDAY = HoursOfOperationDays' "THURSDAY"

pattern HoursOfOperationDaysTUESDAY :: HoursOfOperationDays
pattern HoursOfOperationDaysTUESDAY = HoursOfOperationDays' "TUESDAY"

pattern HoursOfOperationDaysWEDNESDAY :: HoursOfOperationDays
pattern HoursOfOperationDaysWEDNESDAY = HoursOfOperationDays' "WEDNESDAY"

{-# COMPLETE
  HoursOfOperationDaysFRIDAY,
  HoursOfOperationDaysMONDAY,
  HoursOfOperationDaysSATURDAY,
  HoursOfOperationDaysSUNDAY,
  HoursOfOperationDaysTHURSDAY,
  HoursOfOperationDaysTUESDAY,
  HoursOfOperationDaysWEDNESDAY,
  HoursOfOperationDays'
  #-}

instance Prelude.FromText HoursOfOperationDays where
  parser = HoursOfOperationDays' Prelude.<$> Prelude.takeText

instance Prelude.ToText HoursOfOperationDays where
  toText (HoursOfOperationDays' x) = x

instance Prelude.Hashable HoursOfOperationDays

instance Prelude.NFData HoursOfOperationDays

instance Prelude.ToByteString HoursOfOperationDays

instance Prelude.ToQuery HoursOfOperationDays

instance Prelude.ToHeader HoursOfOperationDays

instance Prelude.FromJSON HoursOfOperationDays where
  parseJSON = Prelude.parseJSONText "HoursOfOperationDays"
