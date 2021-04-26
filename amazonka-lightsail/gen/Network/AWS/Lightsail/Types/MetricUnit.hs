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
-- Module      : Network.AWS.Lightsail.Types.MetricUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.MetricUnit
  ( MetricUnit
      ( ..,
        MetricUnitBits,
        MetricUnitBitsSecond,
        MetricUnitBytes,
        MetricUnitBytesSecond,
        MetricUnitCount,
        MetricUnitCountSecond,
        MetricUnitGigabits,
        MetricUnitGigabitsSecond,
        MetricUnitGigabytes,
        MetricUnitGigabytesSecond,
        MetricUnitKilobits,
        MetricUnitKilobitsSecond,
        MetricUnitKilobytes,
        MetricUnitKilobytesSecond,
        MetricUnitMegabits,
        MetricUnitMegabitsSecond,
        MetricUnitMegabytes,
        MetricUnitMegabytesSecond,
        MetricUnitMicroseconds,
        MetricUnitMilliseconds,
        MetricUnitNone,
        MetricUnitPercent,
        MetricUnitSeconds,
        MetricUnitTerabits,
        MetricUnitTerabitsSecond,
        MetricUnitTerabytes,
        MetricUnitTerabytesSecond
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MetricUnit = MetricUnit'
  { fromMetricUnit ::
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

pattern MetricUnitBits :: MetricUnit
pattern MetricUnitBits = MetricUnit' "Bits"

pattern MetricUnitBitsSecond :: MetricUnit
pattern MetricUnitBitsSecond = MetricUnit' "Bits/Second"

pattern MetricUnitBytes :: MetricUnit
pattern MetricUnitBytes = MetricUnit' "Bytes"

pattern MetricUnitBytesSecond :: MetricUnit
pattern MetricUnitBytesSecond = MetricUnit' "Bytes/Second"

pattern MetricUnitCount :: MetricUnit
pattern MetricUnitCount = MetricUnit' "Count"

pattern MetricUnitCountSecond :: MetricUnit
pattern MetricUnitCountSecond = MetricUnit' "Count/Second"

pattern MetricUnitGigabits :: MetricUnit
pattern MetricUnitGigabits = MetricUnit' "Gigabits"

pattern MetricUnitGigabitsSecond :: MetricUnit
pattern MetricUnitGigabitsSecond = MetricUnit' "Gigabits/Second"

pattern MetricUnitGigabytes :: MetricUnit
pattern MetricUnitGigabytes = MetricUnit' "Gigabytes"

pattern MetricUnitGigabytesSecond :: MetricUnit
pattern MetricUnitGigabytesSecond = MetricUnit' "Gigabytes/Second"

pattern MetricUnitKilobits :: MetricUnit
pattern MetricUnitKilobits = MetricUnit' "Kilobits"

pattern MetricUnitKilobitsSecond :: MetricUnit
pattern MetricUnitKilobitsSecond = MetricUnit' "Kilobits/Second"

pattern MetricUnitKilobytes :: MetricUnit
pattern MetricUnitKilobytes = MetricUnit' "Kilobytes"

pattern MetricUnitKilobytesSecond :: MetricUnit
pattern MetricUnitKilobytesSecond = MetricUnit' "Kilobytes/Second"

pattern MetricUnitMegabits :: MetricUnit
pattern MetricUnitMegabits = MetricUnit' "Megabits"

pattern MetricUnitMegabitsSecond :: MetricUnit
pattern MetricUnitMegabitsSecond = MetricUnit' "Megabits/Second"

pattern MetricUnitMegabytes :: MetricUnit
pattern MetricUnitMegabytes = MetricUnit' "Megabytes"

pattern MetricUnitMegabytesSecond :: MetricUnit
pattern MetricUnitMegabytesSecond = MetricUnit' "Megabytes/Second"

pattern MetricUnitMicroseconds :: MetricUnit
pattern MetricUnitMicroseconds = MetricUnit' "Microseconds"

pattern MetricUnitMilliseconds :: MetricUnit
pattern MetricUnitMilliseconds = MetricUnit' "Milliseconds"

pattern MetricUnitNone :: MetricUnit
pattern MetricUnitNone = MetricUnit' "None"

pattern MetricUnitPercent :: MetricUnit
pattern MetricUnitPercent = MetricUnit' "Percent"

pattern MetricUnitSeconds :: MetricUnit
pattern MetricUnitSeconds = MetricUnit' "Seconds"

pattern MetricUnitTerabits :: MetricUnit
pattern MetricUnitTerabits = MetricUnit' "Terabits"

pattern MetricUnitTerabitsSecond :: MetricUnit
pattern MetricUnitTerabitsSecond = MetricUnit' "Terabits/Second"

pattern MetricUnitTerabytes :: MetricUnit
pattern MetricUnitTerabytes = MetricUnit' "Terabytes"

pattern MetricUnitTerabytesSecond :: MetricUnit
pattern MetricUnitTerabytesSecond = MetricUnit' "Terabytes/Second"

{-# COMPLETE
  MetricUnitBits,
  MetricUnitBitsSecond,
  MetricUnitBytes,
  MetricUnitBytesSecond,
  MetricUnitCount,
  MetricUnitCountSecond,
  MetricUnitGigabits,
  MetricUnitGigabitsSecond,
  MetricUnitGigabytes,
  MetricUnitGigabytesSecond,
  MetricUnitKilobits,
  MetricUnitKilobitsSecond,
  MetricUnitKilobytes,
  MetricUnitKilobytesSecond,
  MetricUnitMegabits,
  MetricUnitMegabitsSecond,
  MetricUnitMegabytes,
  MetricUnitMegabytesSecond,
  MetricUnitMicroseconds,
  MetricUnitMilliseconds,
  MetricUnitNone,
  MetricUnitPercent,
  MetricUnitSeconds,
  MetricUnitTerabits,
  MetricUnitTerabitsSecond,
  MetricUnitTerabytes,
  MetricUnitTerabytesSecond,
  MetricUnit'
  #-}

instance Prelude.FromText MetricUnit where
  parser = MetricUnit' Prelude.<$> Prelude.takeText

instance Prelude.ToText MetricUnit where
  toText (MetricUnit' x) = x

instance Prelude.Hashable MetricUnit

instance Prelude.NFData MetricUnit

instance Prelude.ToByteString MetricUnit

instance Prelude.ToQuery MetricUnit

instance Prelude.ToHeader MetricUnit

instance Prelude.ToJSON MetricUnit where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MetricUnit where
  parseJSON = Prelude.parseJSONText "MetricUnit"
