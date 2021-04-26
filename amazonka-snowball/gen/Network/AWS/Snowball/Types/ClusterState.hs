{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        ClusterStateAwaitingQuorum,
        ClusterStateCancelled,
        ClusterStateComplete,
        ClusterStateInUse,
        ClusterStatePending
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ClusterState = ClusterState'
  { fromClusterState ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ClusterStateAwaitingQuorum :: ClusterState
pattern ClusterStateAwaitingQuorum = ClusterState' "AwaitingQuorum"

pattern ClusterStateCancelled :: ClusterState
pattern ClusterStateCancelled = ClusterState' "Cancelled"

pattern ClusterStateComplete :: ClusterState
pattern ClusterStateComplete = ClusterState' "Complete"

pattern ClusterStateInUse :: ClusterState
pattern ClusterStateInUse = ClusterState' "InUse"

pattern ClusterStatePending :: ClusterState
pattern ClusterStatePending = ClusterState' "Pending"

{-# COMPLETE
  ClusterStateAwaitingQuorum,
  ClusterStateCancelled,
  ClusterStateComplete,
  ClusterStateInUse,
  ClusterStatePending,
  ClusterState'
  #-}

instance Prelude.FromText ClusterState where
  parser = ClusterState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClusterState where
  toText (ClusterState' x) = x

instance Prelude.Hashable ClusterState

instance Prelude.NFData ClusterState

instance Prelude.ToByteString ClusterState

instance Prelude.ToQuery ClusterState

instance Prelude.ToHeader ClusterState

instance Prelude.FromJSON ClusterState where
  parseJSON = Prelude.parseJSONText "ClusterState"
