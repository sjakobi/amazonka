{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.AutoTuneState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.AutoTuneState
  ( AutoTuneState
      ( ..,
        DisableInProgress,
        Disabled,
        DisabledAndRollbackComplete,
        DisabledAndRollbackError,
        DisabledAndRollbackInProgress,
        DisabledAndRollbackScheduled,
        EnableInProgress,
        Enabled,
        Error'
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the Auto-Tune state for the Elasticsearch domain. For valid states see the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> .
data AutoTuneState = AutoTuneState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DisableInProgress :: AutoTuneState
pattern DisableInProgress = AutoTuneState' "DISABLE_IN_PROGRESS"

pattern Disabled :: AutoTuneState
pattern Disabled = AutoTuneState' "DISABLED"

pattern DisabledAndRollbackComplete :: AutoTuneState
pattern DisabledAndRollbackComplete = AutoTuneState' "DISABLED_AND_ROLLBACK_COMPLETE"

pattern DisabledAndRollbackError :: AutoTuneState
pattern DisabledAndRollbackError = AutoTuneState' "DISABLED_AND_ROLLBACK_ERROR"

pattern DisabledAndRollbackInProgress :: AutoTuneState
pattern DisabledAndRollbackInProgress = AutoTuneState' "DISABLED_AND_ROLLBACK_IN_PROGRESS"

pattern DisabledAndRollbackScheduled :: AutoTuneState
pattern DisabledAndRollbackScheduled = AutoTuneState' "DISABLED_AND_ROLLBACK_SCHEDULED"

pattern EnableInProgress :: AutoTuneState
pattern EnableInProgress = AutoTuneState' "ENABLE_IN_PROGRESS"

pattern Enabled :: AutoTuneState
pattern Enabled = AutoTuneState' "ENABLED"

pattern Error' :: AutoTuneState
pattern Error' = AutoTuneState' "ERROR"

{-# COMPLETE
  DisableInProgress,
  Disabled,
  DisabledAndRollbackComplete,
  DisabledAndRollbackError,
  DisabledAndRollbackInProgress,
  DisabledAndRollbackScheduled,
  EnableInProgress,
  Enabled,
  Error',
  AutoTuneState'
  #-}

instance FromText AutoTuneState where
  parser = (AutoTuneState' . mk) <$> takeText

instance ToText AutoTuneState where
  toText (AutoTuneState' ci) = original ci

instance Hashable AutoTuneState

instance NFData AutoTuneState

instance ToByteString AutoTuneState

instance ToQuery AutoTuneState

instance ToHeader AutoTuneState

instance FromJSON AutoTuneState where
  parseJSON = parseJSONText "AutoTuneState"
