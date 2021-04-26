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
-- Module      : Network.AWS.CloudWatch.Types.StandardUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatch.Types.StandardUnit
  ( StandardUnit
      ( ..,
        StandardUnitBits,
        StandardUnitBitsSecond,
        StandardUnitBytes,
        StandardUnitBytesSecond,
        StandardUnitCount,
        StandardUnitCountSecond,
        StandardUnitGigabits,
        StandardUnitGigabitsSecond,
        StandardUnitGigabytes,
        StandardUnitGigabytesSecond,
        StandardUnitKilobits,
        StandardUnitKilobitsSecond,
        StandardUnitKilobytes,
        StandardUnitKilobytesSecond,
        StandardUnitMegabits,
        StandardUnitMegabitsSecond,
        StandardUnitMegabytes,
        StandardUnitMegabytesSecond,
        StandardUnitMicroseconds,
        StandardUnitMilliseconds,
        StandardUnitNone,
        StandardUnitPercent,
        StandardUnitSeconds,
        StandardUnitTerabits,
        StandardUnitTerabitsSecond,
        StandardUnitTerabytes,
        StandardUnitTerabytesSecond
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StandardUnit = StandardUnit'
  { fromStandardUnit ::
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

pattern StandardUnitBits :: StandardUnit
pattern StandardUnitBits = StandardUnit' "Bits"

pattern StandardUnitBitsSecond :: StandardUnit
pattern StandardUnitBitsSecond = StandardUnit' "Bits/Second"

pattern StandardUnitBytes :: StandardUnit
pattern StandardUnitBytes = StandardUnit' "Bytes"

pattern StandardUnitBytesSecond :: StandardUnit
pattern StandardUnitBytesSecond = StandardUnit' "Bytes/Second"

pattern StandardUnitCount :: StandardUnit
pattern StandardUnitCount = StandardUnit' "Count"

pattern StandardUnitCountSecond :: StandardUnit
pattern StandardUnitCountSecond = StandardUnit' "Count/Second"

pattern StandardUnitGigabits :: StandardUnit
pattern StandardUnitGigabits = StandardUnit' "Gigabits"

pattern StandardUnitGigabitsSecond :: StandardUnit
pattern StandardUnitGigabitsSecond = StandardUnit' "Gigabits/Second"

pattern StandardUnitGigabytes :: StandardUnit
pattern StandardUnitGigabytes = StandardUnit' "Gigabytes"

pattern StandardUnitGigabytesSecond :: StandardUnit
pattern StandardUnitGigabytesSecond = StandardUnit' "Gigabytes/Second"

pattern StandardUnitKilobits :: StandardUnit
pattern StandardUnitKilobits = StandardUnit' "Kilobits"

pattern StandardUnitKilobitsSecond :: StandardUnit
pattern StandardUnitKilobitsSecond = StandardUnit' "Kilobits/Second"

pattern StandardUnitKilobytes :: StandardUnit
pattern StandardUnitKilobytes = StandardUnit' "Kilobytes"

pattern StandardUnitKilobytesSecond :: StandardUnit
pattern StandardUnitKilobytesSecond = StandardUnit' "Kilobytes/Second"

pattern StandardUnitMegabits :: StandardUnit
pattern StandardUnitMegabits = StandardUnit' "Megabits"

pattern StandardUnitMegabitsSecond :: StandardUnit
pattern StandardUnitMegabitsSecond = StandardUnit' "Megabits/Second"

pattern StandardUnitMegabytes :: StandardUnit
pattern StandardUnitMegabytes = StandardUnit' "Megabytes"

pattern StandardUnitMegabytesSecond :: StandardUnit
pattern StandardUnitMegabytesSecond = StandardUnit' "Megabytes/Second"

pattern StandardUnitMicroseconds :: StandardUnit
pattern StandardUnitMicroseconds = StandardUnit' "Microseconds"

pattern StandardUnitMilliseconds :: StandardUnit
pattern StandardUnitMilliseconds = StandardUnit' "Milliseconds"

pattern StandardUnitNone :: StandardUnit
pattern StandardUnitNone = StandardUnit' "None"

pattern StandardUnitPercent :: StandardUnit
pattern StandardUnitPercent = StandardUnit' "Percent"

pattern StandardUnitSeconds :: StandardUnit
pattern StandardUnitSeconds = StandardUnit' "Seconds"

pattern StandardUnitTerabits :: StandardUnit
pattern StandardUnitTerabits = StandardUnit' "Terabits"

pattern StandardUnitTerabitsSecond :: StandardUnit
pattern StandardUnitTerabitsSecond = StandardUnit' "Terabits/Second"

pattern StandardUnitTerabytes :: StandardUnit
pattern StandardUnitTerabytes = StandardUnit' "Terabytes"

pattern StandardUnitTerabytesSecond :: StandardUnit
pattern StandardUnitTerabytesSecond = StandardUnit' "Terabytes/Second"

{-# COMPLETE
  StandardUnitBits,
  StandardUnitBitsSecond,
  StandardUnitBytes,
  StandardUnitBytesSecond,
  StandardUnitCount,
  StandardUnitCountSecond,
  StandardUnitGigabits,
  StandardUnitGigabitsSecond,
  StandardUnitGigabytes,
  StandardUnitGigabytesSecond,
  StandardUnitKilobits,
  StandardUnitKilobitsSecond,
  StandardUnitKilobytes,
  StandardUnitKilobytesSecond,
  StandardUnitMegabits,
  StandardUnitMegabitsSecond,
  StandardUnitMegabytes,
  StandardUnitMegabytesSecond,
  StandardUnitMicroseconds,
  StandardUnitMilliseconds,
  StandardUnitNone,
  StandardUnitPercent,
  StandardUnitSeconds,
  StandardUnitTerabits,
  StandardUnitTerabitsSecond,
  StandardUnitTerabytes,
  StandardUnitTerabytesSecond,
  StandardUnit'
  #-}

instance Prelude.FromText StandardUnit where
  parser = StandardUnit' Prelude.<$> Prelude.takeText

instance Prelude.ToText StandardUnit where
  toText (StandardUnit' x) = x

instance Prelude.Hashable StandardUnit

instance Prelude.NFData StandardUnit

instance Prelude.ToByteString StandardUnit

instance Prelude.ToQuery StandardUnit

instance Prelude.ToHeader StandardUnit

instance Prelude.FromXML StandardUnit where
  parseXML = Prelude.parseXMLText "StandardUnit"
