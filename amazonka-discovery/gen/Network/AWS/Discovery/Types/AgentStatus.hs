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
-- Module      : Network.AWS.Discovery.Types.AgentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.AgentStatus
  ( AgentStatus
      ( ..,
        AgentStatusBLACKLISTED,
        AgentStatusHEALTHY,
        AgentStatusRUNNING,
        AgentStatusSHUTDOWN,
        AgentStatusUNHEALTHY,
        AgentStatusUNKNOWN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AgentStatus = AgentStatus'
  { fromAgentStatus ::
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

pattern AgentStatusBLACKLISTED :: AgentStatus
pattern AgentStatusBLACKLISTED = AgentStatus' "BLACKLISTED"

pattern AgentStatusHEALTHY :: AgentStatus
pattern AgentStatusHEALTHY = AgentStatus' "HEALTHY"

pattern AgentStatusRUNNING :: AgentStatus
pattern AgentStatusRUNNING = AgentStatus' "RUNNING"

pattern AgentStatusSHUTDOWN :: AgentStatus
pattern AgentStatusSHUTDOWN = AgentStatus' "SHUTDOWN"

pattern AgentStatusUNHEALTHY :: AgentStatus
pattern AgentStatusUNHEALTHY = AgentStatus' "UNHEALTHY"

pattern AgentStatusUNKNOWN :: AgentStatus
pattern AgentStatusUNKNOWN = AgentStatus' "UNKNOWN"

{-# COMPLETE
  AgentStatusBLACKLISTED,
  AgentStatusHEALTHY,
  AgentStatusRUNNING,
  AgentStatusSHUTDOWN,
  AgentStatusUNHEALTHY,
  AgentStatusUNKNOWN,
  AgentStatus'
  #-}

instance Prelude.FromText AgentStatus where
  parser = AgentStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AgentStatus where
  toText (AgentStatus' x) = x

instance Prelude.Hashable AgentStatus

instance Prelude.NFData AgentStatus

instance Prelude.ToByteString AgentStatus

instance Prelude.ToQuery AgentStatus

instance Prelude.ToHeader AgentStatus

instance Prelude.FromJSON AgentStatus where
  parseJSON = Prelude.parseJSONText "AgentStatus"
