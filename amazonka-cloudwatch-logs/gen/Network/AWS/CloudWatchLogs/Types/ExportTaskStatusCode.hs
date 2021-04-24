{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.ExportTaskStatusCode
  ( ExportTaskStatusCode
      ( ..,
        Cancelled,
        Completed,
        Failed,
        Pending,
        PendingCancel,
        Running
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExportTaskStatusCode
  = ExportTaskStatusCode'
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

pattern Cancelled :: ExportTaskStatusCode
pattern Cancelled = ExportTaskStatusCode' "CANCELLED"

pattern Completed :: ExportTaskStatusCode
pattern Completed = ExportTaskStatusCode' "COMPLETED"

pattern Failed :: ExportTaskStatusCode
pattern Failed = ExportTaskStatusCode' "FAILED"

pattern Pending :: ExportTaskStatusCode
pattern Pending = ExportTaskStatusCode' "PENDING"

pattern PendingCancel :: ExportTaskStatusCode
pattern PendingCancel = ExportTaskStatusCode' "PENDING_CANCEL"

pattern Running :: ExportTaskStatusCode
pattern Running = ExportTaskStatusCode' "RUNNING"

{-# COMPLETE
  Cancelled,
  Completed,
  Failed,
  Pending,
  PendingCancel,
  Running,
  ExportTaskStatusCode'
  #-}

instance FromText ExportTaskStatusCode where
  parser = (ExportTaskStatusCode' . mk) <$> takeText

instance ToText ExportTaskStatusCode where
  toText (ExportTaskStatusCode' ci) = original ci

instance Hashable ExportTaskStatusCode

instance NFData ExportTaskStatusCode

instance ToByteString ExportTaskStatusCode

instance ToQuery ExportTaskStatusCode

instance ToHeader ExportTaskStatusCode

instance ToJSON ExportTaskStatusCode where
  toJSON = toJSONText

instance FromJSON ExportTaskStatusCode where
  parseJSON = parseJSONText "ExportTaskStatusCode"
