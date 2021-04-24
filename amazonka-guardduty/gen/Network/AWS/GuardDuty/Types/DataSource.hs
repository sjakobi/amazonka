{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.DataSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.DataSource
  ( DataSource
      ( ..,
        CloudTrail,
        DNSLogs,
        FlowLogs,
        S3Logs
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataSource = DataSource' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CloudTrail :: DataSource
pattern CloudTrail = DataSource' "CLOUD_TRAIL"

pattern DNSLogs :: DataSource
pattern DNSLogs = DataSource' "DNS_LOGS"

pattern FlowLogs :: DataSource
pattern FlowLogs = DataSource' "FLOW_LOGS"

pattern S3Logs :: DataSource
pattern S3Logs = DataSource' "S3_LOGS"

{-# COMPLETE
  CloudTrail,
  DNSLogs,
  FlowLogs,
  S3Logs,
  DataSource'
  #-}

instance FromText DataSource where
  parser = (DataSource' . mk) <$> takeText

instance ToText DataSource where
  toText (DataSource' ci) = original ci

instance Hashable DataSource

instance NFData DataSource

instance ToByteString DataSource

instance ToQuery DataSource

instance ToHeader DataSource

instance ToJSON DataSource where
  toJSON = toJSONText

instance FromJSON DataSource where
  parseJSON = parseJSONText "DataSource"
