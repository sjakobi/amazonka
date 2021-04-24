{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSMv2.Types.ClusterState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.ClusterState
  ( ClusterState
      ( ..,
        Active,
        CreateInProgress,
        Degraded,
        DeleteInProgress,
        Deleted,
        InitializeInProgress,
        Initialized,
        Uninitialized,
        UpdateInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ClusterState = ClusterState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: ClusterState
pattern Active = ClusterState' "ACTIVE"

pattern CreateInProgress :: ClusterState
pattern CreateInProgress = ClusterState' "CREATE_IN_PROGRESS"

pattern Degraded :: ClusterState
pattern Degraded = ClusterState' "DEGRADED"

pattern DeleteInProgress :: ClusterState
pattern DeleteInProgress = ClusterState' "DELETE_IN_PROGRESS"

pattern Deleted :: ClusterState
pattern Deleted = ClusterState' "DELETED"

pattern InitializeInProgress :: ClusterState
pattern InitializeInProgress = ClusterState' "INITIALIZE_IN_PROGRESS"

pattern Initialized :: ClusterState
pattern Initialized = ClusterState' "INITIALIZED"

pattern Uninitialized :: ClusterState
pattern Uninitialized = ClusterState' "UNINITIALIZED"

pattern UpdateInProgress :: ClusterState
pattern UpdateInProgress = ClusterState' "UPDATE_IN_PROGRESS"

{-# COMPLETE
  Active,
  CreateInProgress,
  Degraded,
  DeleteInProgress,
  Deleted,
  InitializeInProgress,
  Initialized,
  Uninitialized,
  UpdateInProgress,
  ClusterState'
  #-}

instance FromText ClusterState where
  parser = (ClusterState' . mk) <$> takeText

instance ToText ClusterState where
  toText (ClusterState' ci) = original ci

instance Hashable ClusterState

instance NFData ClusterState

instance ToByteString ClusterState

instance ToQuery ClusterState

instance ToHeader ClusterState

instance FromJSON ClusterState where
  parseJSON = parseJSONText "ClusterState"
