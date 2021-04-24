{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceMetering.Types.UsageRecordResultStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MarketplaceMetering.Types.UsageRecordResultStatus
  ( UsageRecordResultStatus
      ( ..,
        CustomerNotSubscribed,
        DuplicateRecord,
        Success
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UsageRecordResultStatus
  = UsageRecordResultStatus'
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

pattern CustomerNotSubscribed :: UsageRecordResultStatus
pattern CustomerNotSubscribed = UsageRecordResultStatus' "CustomerNotSubscribed"

pattern DuplicateRecord :: UsageRecordResultStatus
pattern DuplicateRecord = UsageRecordResultStatus' "DuplicateRecord"

pattern Success :: UsageRecordResultStatus
pattern Success = UsageRecordResultStatus' "Success"

{-# COMPLETE
  CustomerNotSubscribed,
  DuplicateRecord,
  Success,
  UsageRecordResultStatus'
  #-}

instance FromText UsageRecordResultStatus where
  parser = (UsageRecordResultStatus' . mk) <$> takeText

instance ToText UsageRecordResultStatus where
  toText (UsageRecordResultStatus' ci) = original ci

instance Hashable UsageRecordResultStatus

instance NFData UsageRecordResultStatus

instance ToByteString UsageRecordResultStatus

instance ToQuery UsageRecordResultStatus

instance ToHeader UsageRecordResultStatus

instance FromJSON UsageRecordResultStatus where
  parseJSON = parseJSONText "UsageRecordResultStatus"
