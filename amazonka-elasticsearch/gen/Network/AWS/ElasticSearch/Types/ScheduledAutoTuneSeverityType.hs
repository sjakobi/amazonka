{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.ScheduledAutoTuneSeverityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ScheduledAutoTuneSeverityType
  ( ScheduledAutoTuneSeverityType
      ( ..,
        High,
        Low,
        Medium
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies Auto-Tune action severity. Valid values are LOW, MEDIUM and HIGH.
data ScheduledAutoTuneSeverityType
  = ScheduledAutoTuneSeverityType'
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

pattern High :: ScheduledAutoTuneSeverityType
pattern High = ScheduledAutoTuneSeverityType' "HIGH"

pattern Low :: ScheduledAutoTuneSeverityType
pattern Low = ScheduledAutoTuneSeverityType' "LOW"

pattern Medium :: ScheduledAutoTuneSeverityType
pattern Medium = ScheduledAutoTuneSeverityType' "MEDIUM"

{-# COMPLETE
  High,
  Low,
  Medium,
  ScheduledAutoTuneSeverityType'
  #-}

instance FromText ScheduledAutoTuneSeverityType where
  parser = (ScheduledAutoTuneSeverityType' . mk) <$> takeText

instance ToText ScheduledAutoTuneSeverityType where
  toText (ScheduledAutoTuneSeverityType' ci) = original ci

instance Hashable ScheduledAutoTuneSeverityType

instance NFData ScheduledAutoTuneSeverityType

instance ToByteString ScheduledAutoTuneSeverityType

instance ToQuery ScheduledAutoTuneSeverityType

instance ToHeader ScheduledAutoTuneSeverityType

instance FromJSON ScheduledAutoTuneSeverityType where
  parseJSON = parseJSONText "ScheduledAutoTuneSeverityType"
