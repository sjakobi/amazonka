{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.Types.ClusterState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.ClusterState
  ( ClusterState
      ( ..,
        CSAwaitingQuorum,
        CSCancelled,
        CSComplete,
        CSInUse,
        CSPending
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

pattern CSAwaitingQuorum :: ClusterState
pattern CSAwaitingQuorum = ClusterState' "AwaitingQuorum"

pattern CSCancelled :: ClusterState
pattern CSCancelled = ClusterState' "Cancelled"

pattern CSComplete :: ClusterState
pattern CSComplete = ClusterState' "Complete"

pattern CSInUse :: ClusterState
pattern CSInUse = ClusterState' "InUse"

pattern CSPending :: ClusterState
pattern CSPending = ClusterState' "Pending"

{-# COMPLETE
  CSAwaitingQuorum,
  CSCancelled,
  CSComplete,
  CSInUse,
  CSPending,
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
