{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.DatePartitionDelimiterValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.DatePartitionDelimiterValue
  ( DatePartitionDelimiterValue
      ( ..,
        DPDVDash,
        DPDVNone,
        DPDVSlash,
        DPDVUnderscore
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DatePartitionDelimiterValue
  = DatePartitionDelimiterValue'
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

pattern DPDVDash :: DatePartitionDelimiterValue
pattern DPDVDash = DatePartitionDelimiterValue' "DASH"

pattern DPDVNone :: DatePartitionDelimiterValue
pattern DPDVNone = DatePartitionDelimiterValue' "NONE"

pattern DPDVSlash :: DatePartitionDelimiterValue
pattern DPDVSlash = DatePartitionDelimiterValue' "SLASH"

pattern DPDVUnderscore :: DatePartitionDelimiterValue
pattern DPDVUnderscore = DatePartitionDelimiterValue' "UNDERSCORE"

{-# COMPLETE
  DPDVDash,
  DPDVNone,
  DPDVSlash,
  DPDVUnderscore,
  DatePartitionDelimiterValue'
  #-}

instance FromText DatePartitionDelimiterValue where
  parser = (DatePartitionDelimiterValue' . mk) <$> takeText

instance ToText DatePartitionDelimiterValue where
  toText (DatePartitionDelimiterValue' ci) = original ci

instance Hashable DatePartitionDelimiterValue

instance NFData DatePartitionDelimiterValue

instance ToByteString DatePartitionDelimiterValue

instance ToQuery DatePartitionDelimiterValue

instance ToHeader DatePartitionDelimiterValue

instance ToJSON DatePartitionDelimiterValue where
  toJSON = toJSONText

instance FromJSON DatePartitionDelimiterValue where
  parseJSON = parseJSONText "DatePartitionDelimiterValue"
