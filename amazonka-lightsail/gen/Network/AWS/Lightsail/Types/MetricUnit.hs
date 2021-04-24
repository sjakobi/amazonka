{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        MUBits,
        MUBitsSecond,
        MUBytes,
        MUBytesSecond,
        MUCount,
        MUCountSecond,
        MUGigabits,
        MUGigabitsSecond,
        MUGigabytes,
        MUGigabytesSecond,
        MUKilobits,
        MUKilobitsSecond,
        MUKilobytes,
        MUKilobytesSecond,
        MUMegabits,
        MUMegabitsSecond,
        MUMegabytes,
        MUMegabytesSecond,
        MUMicroseconds,
        MUMilliseconds,
        MUNone,
        MUPercent,
        MUSeconds,
        MUTerabits,
        MUTerabitsSecond,
        MUTerabytes,
        MUTerabytesSecond
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MetricUnit = MetricUnit' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern MUBits :: MetricUnit
pattern MUBits = MetricUnit' "Bits"

pattern MUBitsSecond :: MetricUnit
pattern MUBitsSecond = MetricUnit' "Bits/Second"

pattern MUBytes :: MetricUnit
pattern MUBytes = MetricUnit' "Bytes"

pattern MUBytesSecond :: MetricUnit
pattern MUBytesSecond = MetricUnit' "Bytes/Second"

pattern MUCount :: MetricUnit
pattern MUCount = MetricUnit' "Count"

pattern MUCountSecond :: MetricUnit
pattern MUCountSecond = MetricUnit' "Count/Second"

pattern MUGigabits :: MetricUnit
pattern MUGigabits = MetricUnit' "Gigabits"

pattern MUGigabitsSecond :: MetricUnit
pattern MUGigabitsSecond = MetricUnit' "Gigabits/Second"

pattern MUGigabytes :: MetricUnit
pattern MUGigabytes = MetricUnit' "Gigabytes"

pattern MUGigabytesSecond :: MetricUnit
pattern MUGigabytesSecond = MetricUnit' "Gigabytes/Second"

pattern MUKilobits :: MetricUnit
pattern MUKilobits = MetricUnit' "Kilobits"

pattern MUKilobitsSecond :: MetricUnit
pattern MUKilobitsSecond = MetricUnit' "Kilobits/Second"

pattern MUKilobytes :: MetricUnit
pattern MUKilobytes = MetricUnit' "Kilobytes"

pattern MUKilobytesSecond :: MetricUnit
pattern MUKilobytesSecond = MetricUnit' "Kilobytes/Second"

pattern MUMegabits :: MetricUnit
pattern MUMegabits = MetricUnit' "Megabits"

pattern MUMegabitsSecond :: MetricUnit
pattern MUMegabitsSecond = MetricUnit' "Megabits/Second"

pattern MUMegabytes :: MetricUnit
pattern MUMegabytes = MetricUnit' "Megabytes"

pattern MUMegabytesSecond :: MetricUnit
pattern MUMegabytesSecond = MetricUnit' "Megabytes/Second"

pattern MUMicroseconds :: MetricUnit
pattern MUMicroseconds = MetricUnit' "Microseconds"

pattern MUMilliseconds :: MetricUnit
pattern MUMilliseconds = MetricUnit' "Milliseconds"

pattern MUNone :: MetricUnit
pattern MUNone = MetricUnit' "None"

pattern MUPercent :: MetricUnit
pattern MUPercent = MetricUnit' "Percent"

pattern MUSeconds :: MetricUnit
pattern MUSeconds = MetricUnit' "Seconds"

pattern MUTerabits :: MetricUnit
pattern MUTerabits = MetricUnit' "Terabits"

pattern MUTerabitsSecond :: MetricUnit
pattern MUTerabitsSecond = MetricUnit' "Terabits/Second"

pattern MUTerabytes :: MetricUnit
pattern MUTerabytes = MetricUnit' "Terabytes"

pattern MUTerabytesSecond :: MetricUnit
pattern MUTerabytesSecond = MetricUnit' "Terabytes/Second"

{-# COMPLETE
  MUBits,
  MUBitsSecond,
  MUBytes,
  MUBytesSecond,
  MUCount,
  MUCountSecond,
  MUGigabits,
  MUGigabitsSecond,
  MUGigabytes,
  MUGigabytesSecond,
  MUKilobits,
  MUKilobitsSecond,
  MUKilobytes,
  MUKilobytesSecond,
  MUMegabits,
  MUMegabitsSecond,
  MUMegabytes,
  MUMegabytesSecond,
  MUMicroseconds,
  MUMilliseconds,
  MUNone,
  MUPercent,
  MUSeconds,
  MUTerabits,
  MUTerabitsSecond,
  MUTerabytes,
  MUTerabytesSecond,
  MetricUnit'
  #-}

instance FromText MetricUnit where
  parser = (MetricUnit' . mk) <$> takeText

instance ToText MetricUnit where
  toText (MetricUnit' ci) = original ci

instance Hashable MetricUnit

instance NFData MetricUnit

instance ToByteString MetricUnit

instance ToQuery MetricUnit

instance ToHeader MetricUnit

instance ToJSON MetricUnit where
  toJSON = toJSONText

instance FromJSON MetricUnit where
  parseJSON = parseJSONText "MetricUnit"
