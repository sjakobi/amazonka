{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.ColumnStatisticsType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.ColumnStatisticsType
  ( ColumnStatisticsType
      ( ..,
        Binary,
        Boolean,
        Date,
        Decimal,
        Double,
        Long,
        String
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ColumnStatisticsType
  = ColumnStatisticsType'
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

pattern Binary :: ColumnStatisticsType
pattern Binary = ColumnStatisticsType' "BINARY"

pattern Boolean :: ColumnStatisticsType
pattern Boolean = ColumnStatisticsType' "BOOLEAN"

pattern Date :: ColumnStatisticsType
pattern Date = ColumnStatisticsType' "DATE"

pattern Decimal :: ColumnStatisticsType
pattern Decimal = ColumnStatisticsType' "DECIMAL"

pattern Double :: ColumnStatisticsType
pattern Double = ColumnStatisticsType' "DOUBLE"

pattern Long :: ColumnStatisticsType
pattern Long = ColumnStatisticsType' "LONG"

pattern String :: ColumnStatisticsType
pattern String = ColumnStatisticsType' "STRING"

{-# COMPLETE
  Binary,
  Boolean,
  Date,
  Decimal,
  Double,
  Long,
  String,
  ColumnStatisticsType'
  #-}

instance FromText ColumnStatisticsType where
  parser = (ColumnStatisticsType' . mk) <$> takeText

instance ToText ColumnStatisticsType where
  toText (ColumnStatisticsType' ci) = original ci

instance Hashable ColumnStatisticsType

instance NFData ColumnStatisticsType

instance ToByteString ColumnStatisticsType

instance ToQuery ColumnStatisticsType

instance ToHeader ColumnStatisticsType

instance ToJSON ColumnStatisticsType where
  toJSON = toJSONText

instance FromJSON ColumnStatisticsType where
  parseJSON = parseJSONText "ColumnStatisticsType"
