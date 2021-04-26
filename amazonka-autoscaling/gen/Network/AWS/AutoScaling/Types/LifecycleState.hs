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
-- Module      : Network.AWS.AutoScaling.Types.LifecycleState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.LifecycleState
  ( LifecycleState
      ( ..,
        LifecycleStateDetached,
        LifecycleStateDetaching,
        LifecycleStateEnteringStandby,
        LifecycleStateInService,
        LifecycleStatePending,
        LifecycleStatePendingProceed,
        LifecycleStatePendingWait,
        LifecycleStateQuarantined,
        LifecycleStateStandby,
        LifecycleStateTerminated,
        LifecycleStateTerminating,
        LifecycleStateTerminatingProceed,
        LifecycleStateTerminatingWait
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LifecycleState = LifecycleState'
  { fromLifecycleState ::
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

pattern LifecycleStateDetached :: LifecycleState
pattern LifecycleStateDetached = LifecycleState' "Detached"

pattern LifecycleStateDetaching :: LifecycleState
pattern LifecycleStateDetaching = LifecycleState' "Detaching"

pattern LifecycleStateEnteringStandby :: LifecycleState
pattern LifecycleStateEnteringStandby = LifecycleState' "EnteringStandby"

pattern LifecycleStateInService :: LifecycleState
pattern LifecycleStateInService = LifecycleState' "InService"

pattern LifecycleStatePending :: LifecycleState
pattern LifecycleStatePending = LifecycleState' "Pending"

pattern LifecycleStatePendingProceed :: LifecycleState
pattern LifecycleStatePendingProceed = LifecycleState' "Pending:Proceed"

pattern LifecycleStatePendingWait :: LifecycleState
pattern LifecycleStatePendingWait = LifecycleState' "Pending:Wait"

pattern LifecycleStateQuarantined :: LifecycleState
pattern LifecycleStateQuarantined = LifecycleState' "Quarantined"

pattern LifecycleStateStandby :: LifecycleState
pattern LifecycleStateStandby = LifecycleState' "Standby"

pattern LifecycleStateTerminated :: LifecycleState
pattern LifecycleStateTerminated = LifecycleState' "Terminated"

pattern LifecycleStateTerminating :: LifecycleState
pattern LifecycleStateTerminating = LifecycleState' "Terminating"

pattern LifecycleStateTerminatingProceed :: LifecycleState
pattern LifecycleStateTerminatingProceed = LifecycleState' "Terminating:Proceed"

pattern LifecycleStateTerminatingWait :: LifecycleState
pattern LifecycleStateTerminatingWait = LifecycleState' "Terminating:Wait"

{-# COMPLETE
  LifecycleStateDetached,
  LifecycleStateDetaching,
  LifecycleStateEnteringStandby,
  LifecycleStateInService,
  LifecycleStatePending,
  LifecycleStatePendingProceed,
  LifecycleStatePendingWait,
  LifecycleStateQuarantined,
  LifecycleStateStandby,
  LifecycleStateTerminated,
  LifecycleStateTerminating,
  LifecycleStateTerminatingProceed,
  LifecycleStateTerminatingWait,
  LifecycleState'
  #-}

instance Prelude.FromText LifecycleState where
  parser = LifecycleState' Prelude.<$> Prelude.takeText

instance Prelude.ToText LifecycleState where
  toText (LifecycleState' x) = x

instance Prelude.Hashable LifecycleState

instance Prelude.NFData LifecycleState

instance Prelude.ToByteString LifecycleState

instance Prelude.ToQuery LifecycleState

instance Prelude.ToHeader LifecycleState

instance Prelude.FromXML LifecycleState where
  parseXML = Prelude.parseXMLText "LifecycleState"
