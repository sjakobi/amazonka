{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.CloudWatchLogsTimeZone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.CloudWatchLogsTimeZone
  ( CloudWatchLogsTimeZone
      ( ..,
        Local,
        Utc
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The preferred time zone for logs streamed to CloudWatch Logs. Valid values are @LOCAL@ and @UTC@ , for Coordinated Universal Time.
data CloudWatchLogsTimeZone
  = CloudWatchLogsTimeZone'
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

pattern Local :: CloudWatchLogsTimeZone
pattern Local = CloudWatchLogsTimeZone' "LOCAL"

pattern Utc :: CloudWatchLogsTimeZone
pattern Utc = CloudWatchLogsTimeZone' "UTC"

{-# COMPLETE
  Local,
  Utc,
  CloudWatchLogsTimeZone'
  #-}

instance FromText CloudWatchLogsTimeZone where
  parser = (CloudWatchLogsTimeZone' . mk) <$> takeText

instance ToText CloudWatchLogsTimeZone where
  toText (CloudWatchLogsTimeZone' ci) = original ci

instance Hashable CloudWatchLogsTimeZone

instance NFData CloudWatchLogsTimeZone

instance ToByteString CloudWatchLogsTimeZone

instance ToQuery CloudWatchLogsTimeZone

instance ToHeader CloudWatchLogsTimeZone

instance ToJSON CloudWatchLogsTimeZone where
  toJSON = toJSONText

instance FromJSON CloudWatchLogsTimeZone where
  parseJSON = parseJSONText "CloudWatchLogsTimeZone"
