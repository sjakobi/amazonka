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
-- Module      : Network.AWS.EMR.Types.ClusterState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ClusterState
  ( ClusterState
      ( ..,
        ClusterStateBOOTSTRAPPING,
        ClusterStateRUNNING,
        ClusterStateSTARTING,
        ClusterStateTERMINATED,
        ClusterStateTERMINATEDWITHERRORS,
        ClusterStateTERMINATING,
        ClusterStateWAITING
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

pattern ClusterStateBOOTSTRAPPING :: ClusterState
pattern ClusterStateBOOTSTRAPPING = ClusterState' "BOOTSTRAPPING"

pattern ClusterStateRUNNING :: ClusterState
pattern ClusterStateRUNNING = ClusterState' "RUNNING"

pattern ClusterStateSTARTING :: ClusterState
pattern ClusterStateSTARTING = ClusterState' "STARTING"

pattern ClusterStateTERMINATED :: ClusterState
pattern ClusterStateTERMINATED = ClusterState' "TERMINATED"

pattern ClusterStateTERMINATEDWITHERRORS :: ClusterState
pattern ClusterStateTERMINATEDWITHERRORS = ClusterState' "TERMINATED_WITH_ERRORS"

pattern ClusterStateTERMINATING :: ClusterState
pattern ClusterStateTERMINATING = ClusterState' "TERMINATING"

pattern ClusterStateWAITING :: ClusterState
pattern ClusterStateWAITING = ClusterState' "WAITING"

{-# COMPLETE
  ClusterStateBOOTSTRAPPING,
  ClusterStateRUNNING,
  ClusterStateSTARTING,
  ClusterStateTERMINATED,
  ClusterStateTERMINATEDWITHERRORS,
  ClusterStateTERMINATING,
  ClusterStateWAITING,
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

instance Prelude.ToJSON ClusterState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ClusterState where
  parseJSON = Prelude.parseJSONText "ClusterState"
