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
-- Module      : Network.AWS.SMS.Types.ReplicationJobState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ReplicationJobState
  ( ReplicationJobState
      ( ..,
        ReplicationJobStateACTIVE,
        ReplicationJobStateCOMPLETED,
        ReplicationJobStateDELETED,
        ReplicationJobStateDELETING,
        ReplicationJobStateFAILED,
        ReplicationJobStateFAILING,
        ReplicationJobStatePAUSEDONFAILURE,
        ReplicationJobStatePENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplicationJobState = ReplicationJobState'
  { fromReplicationJobState ::
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

pattern ReplicationJobStateACTIVE :: ReplicationJobState
pattern ReplicationJobStateACTIVE = ReplicationJobState' "ACTIVE"

pattern ReplicationJobStateCOMPLETED :: ReplicationJobState
pattern ReplicationJobStateCOMPLETED = ReplicationJobState' "COMPLETED"

pattern ReplicationJobStateDELETED :: ReplicationJobState
pattern ReplicationJobStateDELETED = ReplicationJobState' "DELETED"

pattern ReplicationJobStateDELETING :: ReplicationJobState
pattern ReplicationJobStateDELETING = ReplicationJobState' "DELETING"

pattern ReplicationJobStateFAILED :: ReplicationJobState
pattern ReplicationJobStateFAILED = ReplicationJobState' "FAILED"

pattern ReplicationJobStateFAILING :: ReplicationJobState
pattern ReplicationJobStateFAILING = ReplicationJobState' "FAILING"

pattern ReplicationJobStatePAUSEDONFAILURE :: ReplicationJobState
pattern ReplicationJobStatePAUSEDONFAILURE = ReplicationJobState' "PAUSED_ON_FAILURE"

pattern ReplicationJobStatePENDING :: ReplicationJobState
pattern ReplicationJobStatePENDING = ReplicationJobState' "PENDING"

{-# COMPLETE
  ReplicationJobStateACTIVE,
  ReplicationJobStateCOMPLETED,
  ReplicationJobStateDELETED,
  ReplicationJobStateDELETING,
  ReplicationJobStateFAILED,
  ReplicationJobStateFAILING,
  ReplicationJobStatePAUSEDONFAILURE,
  ReplicationJobStatePENDING,
  ReplicationJobState'
  #-}

instance Prelude.FromText ReplicationJobState where
  parser = ReplicationJobState' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReplicationJobState where
  toText (ReplicationJobState' x) = x

instance Prelude.Hashable ReplicationJobState

instance Prelude.NFData ReplicationJobState

instance Prelude.ToByteString ReplicationJobState

instance Prelude.ToQuery ReplicationJobState

instance Prelude.ToHeader ReplicationJobState

instance Prelude.FromJSON ReplicationJobState where
  parseJSON = Prelude.parseJSONText "ReplicationJobState"
