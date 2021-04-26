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
-- Module      : Network.AWS.SMS.Types.ReplicationRunState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ReplicationRunState
  ( ReplicationRunState
      ( ..,
        ReplicationRunStateACTIVE,
        ReplicationRunStateCOMPLETED,
        ReplicationRunStateDELETED,
        ReplicationRunStateDELETING,
        ReplicationRunStateFAILED,
        ReplicationRunStateMISSED,
        ReplicationRunStatePENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplicationRunState = ReplicationRunState'
  { fromReplicationRunState ::
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

pattern ReplicationRunStateACTIVE :: ReplicationRunState
pattern ReplicationRunStateACTIVE = ReplicationRunState' "ACTIVE"

pattern ReplicationRunStateCOMPLETED :: ReplicationRunState
pattern ReplicationRunStateCOMPLETED = ReplicationRunState' "COMPLETED"

pattern ReplicationRunStateDELETED :: ReplicationRunState
pattern ReplicationRunStateDELETED = ReplicationRunState' "DELETED"

pattern ReplicationRunStateDELETING :: ReplicationRunState
pattern ReplicationRunStateDELETING = ReplicationRunState' "DELETING"

pattern ReplicationRunStateFAILED :: ReplicationRunState
pattern ReplicationRunStateFAILED = ReplicationRunState' "FAILED"

pattern ReplicationRunStateMISSED :: ReplicationRunState
pattern ReplicationRunStateMISSED = ReplicationRunState' "MISSED"

pattern ReplicationRunStatePENDING :: ReplicationRunState
pattern ReplicationRunStatePENDING = ReplicationRunState' "PENDING"

{-# COMPLETE
  ReplicationRunStateACTIVE,
  ReplicationRunStateCOMPLETED,
  ReplicationRunStateDELETED,
  ReplicationRunStateDELETING,
  ReplicationRunStateFAILED,
  ReplicationRunStateMISSED,
  ReplicationRunStatePENDING,
  ReplicationRunState'
  #-}

instance Prelude.FromText ReplicationRunState where
  parser = ReplicationRunState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicationRunState where
  toText (ReplicationRunState' x) = x

instance Prelude.Hashable ReplicationRunState

instance Prelude.NFData ReplicationRunState

instance Prelude.ToByteString ReplicationRunState

instance Prelude.ToQuery ReplicationRunState

instance Prelude.ToHeader ReplicationRunState

instance Prelude.FromJSON ReplicationRunState where
  parseJSON = Prelude.parseJSONText "ReplicationRunState"
