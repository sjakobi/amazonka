{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.UsageStatisticType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.UsageStatisticType
  ( UsageStatisticType
      ( ..,
        SumByAccount,
        SumByDataSource,
        SumByResource,
        TopResources
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UsageStatisticType
  = UsageStatisticType'
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

pattern SumByAccount :: UsageStatisticType
pattern SumByAccount = UsageStatisticType' "SUM_BY_ACCOUNT"

pattern SumByDataSource :: UsageStatisticType
pattern SumByDataSource = UsageStatisticType' "SUM_BY_DATA_SOURCE"

pattern SumByResource :: UsageStatisticType
pattern SumByResource = UsageStatisticType' "SUM_BY_RESOURCE"

pattern TopResources :: UsageStatisticType
pattern TopResources = UsageStatisticType' "TOP_RESOURCES"

{-# COMPLETE
  SumByAccount,
  SumByDataSource,
  SumByResource,
  TopResources,
  UsageStatisticType'
  #-}

instance FromText UsageStatisticType where
  parser = (UsageStatisticType' . mk) <$> takeText

instance ToText UsageStatisticType where
  toText (UsageStatisticType' ci) = original ci

instance Hashable UsageStatisticType

instance NFData UsageStatisticType

instance ToByteString UsageStatisticType

instance ToQuery UsageStatisticType

instance ToHeader UsageStatisticType

instance ToJSON UsageStatisticType where
  toJSON = toJSONText
