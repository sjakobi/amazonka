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
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceState
  ( WorkspaceState
      ( ..,
        WorkspaceStateADMINMAINTENANCE,
        WorkspaceStateAVAILABLE,
        WorkspaceStateERROR,
        WorkspaceStateIMPAIRED,
        WorkspaceStateMAINTENANCE,
        WorkspaceStatePENDING,
        WorkspaceStateREBOOTING,
        WorkspaceStateREBUILDING,
        WorkspaceStateRESTORING,
        WorkspaceStateSTARTING,
        WorkspaceStateSTOPPED,
        WorkspaceStateSTOPPING,
        WorkspaceStateSUSPENDED,
        WorkspaceStateTERMINATED,
        WorkspaceStateTERMINATING,
        WorkspaceStateUNHEALTHY,
        WorkspaceStateUPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkspaceState = WorkspaceState'
  { fromWorkspaceState ::
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

pattern WorkspaceStateADMINMAINTENANCE :: WorkspaceState
pattern WorkspaceStateADMINMAINTENANCE = WorkspaceState' "ADMIN_MAINTENANCE"

pattern WorkspaceStateAVAILABLE :: WorkspaceState
pattern WorkspaceStateAVAILABLE = WorkspaceState' "AVAILABLE"

pattern WorkspaceStateERROR :: WorkspaceState
pattern WorkspaceStateERROR = WorkspaceState' "ERROR"

pattern WorkspaceStateIMPAIRED :: WorkspaceState
pattern WorkspaceStateIMPAIRED = WorkspaceState' "IMPAIRED"

pattern WorkspaceStateMAINTENANCE :: WorkspaceState
pattern WorkspaceStateMAINTENANCE = WorkspaceState' "MAINTENANCE"

pattern WorkspaceStatePENDING :: WorkspaceState
pattern WorkspaceStatePENDING = WorkspaceState' "PENDING"

pattern WorkspaceStateREBOOTING :: WorkspaceState
pattern WorkspaceStateREBOOTING = WorkspaceState' "REBOOTING"

pattern WorkspaceStateREBUILDING :: WorkspaceState
pattern WorkspaceStateREBUILDING = WorkspaceState' "REBUILDING"

pattern WorkspaceStateRESTORING :: WorkspaceState
pattern WorkspaceStateRESTORING = WorkspaceState' "RESTORING"

pattern WorkspaceStateSTARTING :: WorkspaceState
pattern WorkspaceStateSTARTING = WorkspaceState' "STARTING"

pattern WorkspaceStateSTOPPED :: WorkspaceState
pattern WorkspaceStateSTOPPED = WorkspaceState' "STOPPED"

pattern WorkspaceStateSTOPPING :: WorkspaceState
pattern WorkspaceStateSTOPPING = WorkspaceState' "STOPPING"

pattern WorkspaceStateSUSPENDED :: WorkspaceState
pattern WorkspaceStateSUSPENDED = WorkspaceState' "SUSPENDED"

pattern WorkspaceStateTERMINATED :: WorkspaceState
pattern WorkspaceStateTERMINATED = WorkspaceState' "TERMINATED"

pattern WorkspaceStateTERMINATING :: WorkspaceState
pattern WorkspaceStateTERMINATING = WorkspaceState' "TERMINATING"

pattern WorkspaceStateUNHEALTHY :: WorkspaceState
pattern WorkspaceStateUNHEALTHY = WorkspaceState' "UNHEALTHY"

pattern WorkspaceStateUPDATING :: WorkspaceState
pattern WorkspaceStateUPDATING = WorkspaceState' "UPDATING"

{-# COMPLETE
  WorkspaceStateADMINMAINTENANCE,
  WorkspaceStateAVAILABLE,
  WorkspaceStateERROR,
  WorkspaceStateIMPAIRED,
  WorkspaceStateMAINTENANCE,
  WorkspaceStatePENDING,
  WorkspaceStateREBOOTING,
  WorkspaceStateREBUILDING,
  WorkspaceStateRESTORING,
  WorkspaceStateSTARTING,
  WorkspaceStateSTOPPED,
  WorkspaceStateSTOPPING,
  WorkspaceStateSUSPENDED,
  WorkspaceStateTERMINATED,
  WorkspaceStateTERMINATING,
  WorkspaceStateUNHEALTHY,
  WorkspaceStateUPDATING,
  WorkspaceState'
  #-}

instance Prelude.FromText WorkspaceState where
  parser = WorkspaceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkspaceState where
  toText (WorkspaceState' x) = x

instance Prelude.Hashable WorkspaceState

instance Prelude.NFData WorkspaceState

instance Prelude.ToByteString WorkspaceState

instance Prelude.ToQuery WorkspaceState

instance Prelude.ToHeader WorkspaceState

instance Prelude.FromJSON WorkspaceState where
  parseJSON = Prelude.parseJSONText "WorkspaceState"
