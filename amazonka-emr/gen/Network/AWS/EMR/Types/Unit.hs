{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.Unit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.Unit
  ( Unit
      ( ..,
        UBits,
        UBitsPerSecond,
        UBytes,
        UBytesPerSecond,
        UCount,
        UCountPerSecond,
        UGigaBits,
        UGigaBitsPerSecond,
        UGigaBytes,
        UGigaBytesPerSecond,
        UKiloBits,
        UKiloBitsPerSecond,
        UKiloBytes,
        UKiloBytesPerSecond,
        UMegaBits,
        UMegaBitsPerSecond,
        UMegaBytes,
        UMegaBytesPerSecond,
        UMicroSeconds,
        UMilliSeconds,
        UNone,
        UPercent,
        USeconds,
        UTeraBits,
        UTeraBitsPerSecond,
        UTeraBytes,
        UTeraBytesPerSecond
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Unit = Unit' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern UBits :: Unit
pattern UBits = Unit' "BITS"

pattern UBitsPerSecond :: Unit
pattern UBitsPerSecond = Unit' "BITS_PER_SECOND"

pattern UBytes :: Unit
pattern UBytes = Unit' "BYTES"

pattern UBytesPerSecond :: Unit
pattern UBytesPerSecond = Unit' "BYTES_PER_SECOND"

pattern UCount :: Unit
pattern UCount = Unit' "COUNT"

pattern UCountPerSecond :: Unit
pattern UCountPerSecond = Unit' "COUNT_PER_SECOND"

pattern UGigaBits :: Unit
pattern UGigaBits = Unit' "GIGA_BITS"

pattern UGigaBitsPerSecond :: Unit
pattern UGigaBitsPerSecond = Unit' "GIGA_BITS_PER_SECOND"

pattern UGigaBytes :: Unit
pattern UGigaBytes = Unit' "GIGA_BYTES"

pattern UGigaBytesPerSecond :: Unit
pattern UGigaBytesPerSecond = Unit' "GIGA_BYTES_PER_SECOND"

pattern UKiloBits :: Unit
pattern UKiloBits = Unit' "KILO_BITS"

pattern UKiloBitsPerSecond :: Unit
pattern UKiloBitsPerSecond = Unit' "KILO_BITS_PER_SECOND"

pattern UKiloBytes :: Unit
pattern UKiloBytes = Unit' "KILO_BYTES"

pattern UKiloBytesPerSecond :: Unit
pattern UKiloBytesPerSecond = Unit' "KILO_BYTES_PER_SECOND"

pattern UMegaBits :: Unit
pattern UMegaBits = Unit' "MEGA_BITS"

pattern UMegaBitsPerSecond :: Unit
pattern UMegaBitsPerSecond = Unit' "MEGA_BITS_PER_SECOND"

pattern UMegaBytes :: Unit
pattern UMegaBytes = Unit' "MEGA_BYTES"

pattern UMegaBytesPerSecond :: Unit
pattern UMegaBytesPerSecond = Unit' "MEGA_BYTES_PER_SECOND"

pattern UMicroSeconds :: Unit
pattern UMicroSeconds = Unit' "MICRO_SECONDS"

pattern UMilliSeconds :: Unit
pattern UMilliSeconds = Unit' "MILLI_SECONDS"

pattern UNone :: Unit
pattern UNone = Unit' "NONE"

pattern UPercent :: Unit
pattern UPercent = Unit' "PERCENT"

pattern USeconds :: Unit
pattern USeconds = Unit' "SECONDS"

pattern UTeraBits :: Unit
pattern UTeraBits = Unit' "TERA_BITS"

pattern UTeraBitsPerSecond :: Unit
pattern UTeraBitsPerSecond = Unit' "TERA_BITS_PER_SECOND"

pattern UTeraBytes :: Unit
pattern UTeraBytes = Unit' "TERA_BYTES"

pattern UTeraBytesPerSecond :: Unit
pattern UTeraBytesPerSecond = Unit' "TERA_BYTES_PER_SECOND"

{-# COMPLETE
  UBits,
  UBitsPerSecond,
  UBytes,
  UBytesPerSecond,
  UCount,
  UCountPerSecond,
  UGigaBits,
  UGigaBitsPerSecond,
  UGigaBytes,
  UGigaBytesPerSecond,
  UKiloBits,
  UKiloBitsPerSecond,
  UKiloBytes,
  UKiloBytesPerSecond,
  UMegaBits,
  UMegaBitsPerSecond,
  UMegaBytes,
  UMegaBytesPerSecond,
  UMicroSeconds,
  UMilliSeconds,
  UNone,
  UPercent,
  USeconds,
  UTeraBits,
  UTeraBitsPerSecond,
  UTeraBytes,
  UTeraBytesPerSecond,
  Unit'
  #-}

instance FromText Unit where
  parser = (Unit' . mk) <$> takeText

instance ToText Unit where
  toText (Unit' ci) = original ci

instance Hashable Unit

instance NFData Unit

instance ToByteString Unit

instance ToQuery Unit

instance ToHeader Unit

instance ToJSON Unit where
  toJSON = toJSONText

instance FromJSON Unit where
  parseJSON = parseJSONText "Unit"
