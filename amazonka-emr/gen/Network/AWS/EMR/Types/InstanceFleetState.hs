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
-- Module      : Network.AWS.EMR.Types.InstanceFleetState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleetState
  ( InstanceFleetState
      ( ..,
        InstanceFleetStateBOOTSTRAPPING,
        InstanceFleetStatePROVISIONING,
        InstanceFleetStateRESIZING,
        InstanceFleetStateRUNNING,
        InstanceFleetStateSUSPENDED,
        InstanceFleetStateTERMINATED,
        InstanceFleetStateTERMINATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceFleetState = InstanceFleetState'
  { fromInstanceFleetState ::
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

pattern InstanceFleetStateBOOTSTRAPPING :: InstanceFleetState
pattern InstanceFleetStateBOOTSTRAPPING = InstanceFleetState' "BOOTSTRAPPING"

pattern InstanceFleetStatePROVISIONING :: InstanceFleetState
pattern InstanceFleetStatePROVISIONING = InstanceFleetState' "PROVISIONING"

pattern InstanceFleetStateRESIZING :: InstanceFleetState
pattern InstanceFleetStateRESIZING = InstanceFleetState' "RESIZING"

pattern InstanceFleetStateRUNNING :: InstanceFleetState
pattern InstanceFleetStateRUNNING = InstanceFleetState' "RUNNING"

pattern InstanceFleetStateSUSPENDED :: InstanceFleetState
pattern InstanceFleetStateSUSPENDED = InstanceFleetState' "SUSPENDED"

pattern InstanceFleetStateTERMINATED :: InstanceFleetState
pattern InstanceFleetStateTERMINATED = InstanceFleetState' "TERMINATED"

pattern InstanceFleetStateTERMINATING :: InstanceFleetState
pattern InstanceFleetStateTERMINATING = InstanceFleetState' "TERMINATING"

{-# COMPLETE
  InstanceFleetStateBOOTSTRAPPING,
  InstanceFleetStatePROVISIONING,
  InstanceFleetStateRESIZING,
  InstanceFleetStateRUNNING,
  InstanceFleetStateSUSPENDED,
  InstanceFleetStateTERMINATED,
  InstanceFleetStateTERMINATING,
  InstanceFleetState'
  #-}

instance Prelude.FromText InstanceFleetState where
  parser = InstanceFleetState' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceFleetState where
  toText (InstanceFleetState' x) = x

instance Prelude.Hashable InstanceFleetState

instance Prelude.NFData InstanceFleetState

instance Prelude.ToByteString InstanceFleetState

instance Prelude.ToQuery InstanceFleetState

instance Prelude.ToHeader InstanceFleetState

instance Prelude.FromJSON InstanceFleetState where
  parseJSON = Prelude.parseJSONText "InstanceFleetState"
