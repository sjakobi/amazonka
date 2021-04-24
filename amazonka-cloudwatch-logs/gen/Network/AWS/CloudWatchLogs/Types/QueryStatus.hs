{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.QueryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.QueryStatus
  ( QueryStatus
      ( ..,
        QSCancelled,
        QSComplete,
        QSFailed,
        QSRunning,
        QSScheduled
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QueryStatus = QueryStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern QSCancelled :: QueryStatus
pattern QSCancelled = QueryStatus' "Cancelled"

pattern QSComplete :: QueryStatus
pattern QSComplete = QueryStatus' "Complete"

pattern QSFailed :: QueryStatus
pattern QSFailed = QueryStatus' "Failed"

pattern QSRunning :: QueryStatus
pattern QSRunning = QueryStatus' "Running"

pattern QSScheduled :: QueryStatus
pattern QSScheduled = QueryStatus' "Scheduled"

{-# COMPLETE
  QSCancelled,
  QSComplete,
  QSFailed,
  QSRunning,
  QSScheduled,
  QueryStatus'
  #-}

instance FromText QueryStatus where
  parser = (QueryStatus' . mk) <$> takeText

instance ToText QueryStatus where
  toText (QueryStatus' ci) = original ci

instance Hashable QueryStatus

instance NFData QueryStatus

instance ToByteString QueryStatus

instance ToQuery QueryStatus

instance ToHeader QueryStatus

instance ToJSON QueryStatus where
  toJSON = toJSONText

instance FromJSON QueryStatus where
  parseJSON = parseJSONText "QueryStatus"
