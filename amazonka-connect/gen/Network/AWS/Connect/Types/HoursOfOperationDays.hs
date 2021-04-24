{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Friday,
        Monday,
        Saturday,
        Sunday,
        Thursday,
        Tuesday,
        Wednesday
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HoursOfOperationDays
  = HoursOfOperationDays'
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

pattern Friday :: HoursOfOperationDays
pattern Friday = HoursOfOperationDays' "FRIDAY"

pattern Monday :: HoursOfOperationDays
pattern Monday = HoursOfOperationDays' "MONDAY"

pattern Saturday :: HoursOfOperationDays
pattern Saturday = HoursOfOperationDays' "SATURDAY"

pattern Sunday :: HoursOfOperationDays
pattern Sunday = HoursOfOperationDays' "SUNDAY"

pattern Thursday :: HoursOfOperationDays
pattern Thursday = HoursOfOperationDays' "THURSDAY"

pattern Tuesday :: HoursOfOperationDays
pattern Tuesday = HoursOfOperationDays' "TUESDAY"

pattern Wednesday :: HoursOfOperationDays
pattern Wednesday = HoursOfOperationDays' "WEDNESDAY"

{-# COMPLETE
  Friday,
  Monday,
  Saturday,
  Sunday,
  Thursday,
  Tuesday,
  Wednesday,
  HoursOfOperationDays'
  #-}

instance FromText HoursOfOperationDays where
  parser = (HoursOfOperationDays' . mk) <$> takeText

instance ToText HoursOfOperationDays where
  toText (HoursOfOperationDays' ci) = original ci

instance Hashable HoursOfOperationDays

instance NFData HoursOfOperationDays

instance ToByteString HoursOfOperationDays

instance ToQuery HoursOfOperationDays

instance ToHeader HoursOfOperationDays

instance FromJSON HoursOfOperationDays where
  parseJSON = parseJSONText "HoursOfOperationDays"
