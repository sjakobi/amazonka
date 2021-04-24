{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.DatePartitionSequenceValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DatePartitionSequenceValue
  ( DatePartitionSequenceValue
      ( ..,
        Ddmmyyyy,
        Mmyyyydd,
        Yyyymm,
        Yyyymmdd,
        Yyyymmddhh
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DatePartitionSequenceValue
  = DatePartitionSequenceValue'
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

pattern Ddmmyyyy :: DatePartitionSequenceValue
pattern Ddmmyyyy = DatePartitionSequenceValue' "DDMMYYYY"

pattern Mmyyyydd :: DatePartitionSequenceValue
pattern Mmyyyydd = DatePartitionSequenceValue' "MMYYYYDD"

pattern Yyyymm :: DatePartitionSequenceValue
pattern Yyyymm = DatePartitionSequenceValue' "YYYYMM"

pattern Yyyymmdd :: DatePartitionSequenceValue
pattern Yyyymmdd = DatePartitionSequenceValue' "YYYYMMDD"

pattern Yyyymmddhh :: DatePartitionSequenceValue
pattern Yyyymmddhh = DatePartitionSequenceValue' "YYYYMMDDHH"

{-# COMPLETE
  Ddmmyyyy,
  Mmyyyydd,
  Yyyymm,
  Yyyymmdd,
  Yyyymmddhh,
  DatePartitionSequenceValue'
  #-}

instance FromText DatePartitionSequenceValue where
  parser = (DatePartitionSequenceValue' . mk) <$> takeText

instance ToText DatePartitionSequenceValue where
  toText (DatePartitionSequenceValue' ci) = original ci

instance Hashable DatePartitionSequenceValue

instance NFData DatePartitionSequenceValue

instance ToByteString DatePartitionSequenceValue

instance ToQuery DatePartitionSequenceValue

instance ToHeader DatePartitionSequenceValue

instance ToJSON DatePartitionSequenceValue where
  toJSON = toJSONText

instance FromJSON DatePartitionSequenceValue where
  parseJSON = parseJSONText "DatePartitionSequenceValue"
