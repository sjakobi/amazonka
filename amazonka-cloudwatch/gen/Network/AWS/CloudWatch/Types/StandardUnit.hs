{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Bits,
        BitsSecond,
        Bytes,
        BytesSecond,
        Count,
        CountSecond,
        Gigabits,
        GigabitsSecond,
        Gigabytes,
        GigabytesSecond,
        Kilobits,
        KilobitsSecond,
        Kilobytes,
        KilobytesSecond,
        Megabits,
        MegabitsSecond,
        Megabytes,
        MegabytesSecond,
        Microseconds,
        Milliseconds,
        None,
        Percent,
        Seconds,
        Terabits,
        TerabitsSecond,
        Terabytes,
        TerabytesSecond
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StandardUnit = StandardUnit' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Bits :: StandardUnit
pattern Bits = StandardUnit' "Bits"

pattern BitsSecond :: StandardUnit
pattern BitsSecond = StandardUnit' "Bits/Second"

pattern Bytes :: StandardUnit
pattern Bytes = StandardUnit' "Bytes"

pattern BytesSecond :: StandardUnit
pattern BytesSecond = StandardUnit' "Bytes/Second"

pattern Count :: StandardUnit
pattern Count = StandardUnit' "Count"

pattern CountSecond :: StandardUnit
pattern CountSecond = StandardUnit' "Count/Second"

pattern Gigabits :: StandardUnit
pattern Gigabits = StandardUnit' "Gigabits"

pattern GigabitsSecond :: StandardUnit
pattern GigabitsSecond = StandardUnit' "Gigabits/Second"

pattern Gigabytes :: StandardUnit
pattern Gigabytes = StandardUnit' "Gigabytes"

pattern GigabytesSecond :: StandardUnit
pattern GigabytesSecond = StandardUnit' "Gigabytes/Second"

pattern Kilobits :: StandardUnit
pattern Kilobits = StandardUnit' "Kilobits"

pattern KilobitsSecond :: StandardUnit
pattern KilobitsSecond = StandardUnit' "Kilobits/Second"

pattern Kilobytes :: StandardUnit
pattern Kilobytes = StandardUnit' "Kilobytes"

pattern KilobytesSecond :: StandardUnit
pattern KilobytesSecond = StandardUnit' "Kilobytes/Second"

pattern Megabits :: StandardUnit
pattern Megabits = StandardUnit' "Megabits"

pattern MegabitsSecond :: StandardUnit
pattern MegabitsSecond = StandardUnit' "Megabits/Second"

pattern Megabytes :: StandardUnit
pattern Megabytes = StandardUnit' "Megabytes"

pattern MegabytesSecond :: StandardUnit
pattern MegabytesSecond = StandardUnit' "Megabytes/Second"

pattern Microseconds :: StandardUnit
pattern Microseconds = StandardUnit' "Microseconds"

pattern Milliseconds :: StandardUnit
pattern Milliseconds = StandardUnit' "Milliseconds"

pattern None :: StandardUnit
pattern None = StandardUnit' "None"

pattern Percent :: StandardUnit
pattern Percent = StandardUnit' "Percent"

pattern Seconds :: StandardUnit
pattern Seconds = StandardUnit' "Seconds"

pattern Terabits :: StandardUnit
pattern Terabits = StandardUnit' "Terabits"

pattern TerabitsSecond :: StandardUnit
pattern TerabitsSecond = StandardUnit' "Terabits/Second"

pattern Terabytes :: StandardUnit
pattern Terabytes = StandardUnit' "Terabytes"

pattern TerabytesSecond :: StandardUnit
pattern TerabytesSecond = StandardUnit' "Terabytes/Second"

{-# COMPLETE
  Bits,
  BitsSecond,
  Bytes,
  BytesSecond,
  Count,
  CountSecond,
  Gigabits,
  GigabitsSecond,
  Gigabytes,
  GigabytesSecond,
  Kilobits,
  KilobitsSecond,
  Kilobytes,
  KilobytesSecond,
  Megabits,
  MegabitsSecond,
  Megabytes,
  MegabytesSecond,
  Microseconds,
  Milliseconds,
  None,
  Percent,
  Seconds,
  Terabits,
  TerabitsSecond,
  Terabytes,
  TerabytesSecond,
  StandardUnit'
  #-}

instance FromText StandardUnit where
  parser = (StandardUnit' . mk) <$> takeText

instance ToText StandardUnit where
  toText (StandardUnit' ci) = original ci

instance Hashable StandardUnit

instance NFData StandardUnit

instance ToByteString StandardUnit

instance ToQuery StandardUnit

instance ToHeader StandardUnit

instance FromXML StandardUnit where
  parseXML = parseXMLText "StandardUnit"
