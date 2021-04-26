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
-- Module      : Network.AWS.StepFunctions.Types.StateMachineStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.StateMachineStatus
  ( StateMachineStatus
      ( ..,
        StateMachineStatusACTIVE,
        StateMachineStatusDELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StateMachineStatus = StateMachineStatus'
  { fromStateMachineStatus ::
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

pattern StateMachineStatusACTIVE :: StateMachineStatus
pattern StateMachineStatusACTIVE = StateMachineStatus' "ACTIVE"

pattern StateMachineStatusDELETING :: StateMachineStatus
pattern StateMachineStatusDELETING = StateMachineStatus' "DELETING"

{-# COMPLETE
  StateMachineStatusACTIVE,
  StateMachineStatusDELETING,
  StateMachineStatus'
  #-}

instance Prelude.FromText StateMachineStatus where
  parser = StateMachineStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StateMachineStatus where
  toText (StateMachineStatus' x) = x

instance Prelude.Hashable StateMachineStatus

instance Prelude.NFData StateMachineStatus

instance Prelude.ToByteString StateMachineStatus

instance Prelude.ToQuery StateMachineStatus

instance Prelude.ToHeader StateMachineStatus

instance Prelude.FromJSON StateMachineStatus where
  parseJSON = Prelude.parseJSONText "StateMachineStatus"
