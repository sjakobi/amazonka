{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.Types.QueryExecutionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.QueryExecutionState
  ( QueryExecutionState
      ( ..,
        Cancelled,
        Failed,
        Queued,
        Running,
        Succeeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data QueryExecutionState
  = QueryExecutionState'
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

pattern Cancelled :: QueryExecutionState
pattern Cancelled = QueryExecutionState' "CANCELLED"

pattern Failed :: QueryExecutionState
pattern Failed = QueryExecutionState' "FAILED"

pattern Queued :: QueryExecutionState
pattern Queued = QueryExecutionState' "QUEUED"

pattern Running :: QueryExecutionState
pattern Running = QueryExecutionState' "RUNNING"

pattern Succeeded :: QueryExecutionState
pattern Succeeded = QueryExecutionState' "SUCCEEDED"

{-# COMPLETE
  Cancelled,
  Failed,
  Queued,
  Running,
  Succeeded,
  QueryExecutionState'
  #-}

instance FromText QueryExecutionState where
  parser = (QueryExecutionState' . mk) <$> takeText

instance ToText QueryExecutionState where
  toText (QueryExecutionState' ci) = original ci

instance Hashable QueryExecutionState

instance NFData QueryExecutionState

instance ToByteString QueryExecutionState

instance ToQuery QueryExecutionState

instance ToHeader QueryExecutionState

instance FromJSON QueryExecutionState where
  parseJSON = parseJSONText "QueryExecutionState"
