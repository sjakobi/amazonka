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
-- Module      : Network.AWS.OpsWorksCM.Types.ServerStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types.ServerStatus
  ( ServerStatus
      ( ..,
        ServerStatusBACKINGUP,
        ServerStatusCONNECTIONLOST,
        ServerStatusCREATING,
        ServerStatusDELETING,
        ServerStatusFAILED,
        ServerStatusHEALTHY,
        ServerStatusMODIFYING,
        ServerStatusRESTORING,
        ServerStatusRUNNING,
        ServerStatusSETUP,
        ServerStatusTERMINATED,
        ServerStatusUNDERMAINTENANCE,
        ServerStatusUNHEALTHY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServerStatus = ServerStatus'
  { fromServerStatus ::
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

pattern ServerStatusBACKINGUP :: ServerStatus
pattern ServerStatusBACKINGUP = ServerStatus' "BACKING_UP"

pattern ServerStatusCONNECTIONLOST :: ServerStatus
pattern ServerStatusCONNECTIONLOST = ServerStatus' "CONNECTION_LOST"

pattern ServerStatusCREATING :: ServerStatus
pattern ServerStatusCREATING = ServerStatus' "CREATING"

pattern ServerStatusDELETING :: ServerStatus
pattern ServerStatusDELETING = ServerStatus' "DELETING"

pattern ServerStatusFAILED :: ServerStatus
pattern ServerStatusFAILED = ServerStatus' "FAILED"

pattern ServerStatusHEALTHY :: ServerStatus
pattern ServerStatusHEALTHY = ServerStatus' "HEALTHY"

pattern ServerStatusMODIFYING :: ServerStatus
pattern ServerStatusMODIFYING = ServerStatus' "MODIFYING"

pattern ServerStatusRESTORING :: ServerStatus
pattern ServerStatusRESTORING = ServerStatus' "RESTORING"

pattern ServerStatusRUNNING :: ServerStatus
pattern ServerStatusRUNNING = ServerStatus' "RUNNING"

pattern ServerStatusSETUP :: ServerStatus
pattern ServerStatusSETUP = ServerStatus' "SETUP"

pattern ServerStatusTERMINATED :: ServerStatus
pattern ServerStatusTERMINATED = ServerStatus' "TERMINATED"

pattern ServerStatusUNDERMAINTENANCE :: ServerStatus
pattern ServerStatusUNDERMAINTENANCE = ServerStatus' "UNDER_MAINTENANCE"

pattern ServerStatusUNHEALTHY :: ServerStatus
pattern ServerStatusUNHEALTHY = ServerStatus' "UNHEALTHY"

{-# COMPLETE
  ServerStatusBACKINGUP,
  ServerStatusCONNECTIONLOST,
  ServerStatusCREATING,
  ServerStatusDELETING,
  ServerStatusFAILED,
  ServerStatusHEALTHY,
  ServerStatusMODIFYING,
  ServerStatusRESTORING,
  ServerStatusRUNNING,
  ServerStatusSETUP,
  ServerStatusTERMINATED,
  ServerStatusUNDERMAINTENANCE,
  ServerStatusUNHEALTHY,
  ServerStatus'
  #-}

instance Prelude.FromText ServerStatus where
  parser = ServerStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServerStatus where
  toText (ServerStatus' x) = x

instance Prelude.Hashable ServerStatus

instance Prelude.NFData ServerStatus

instance Prelude.ToByteString ServerStatus

instance Prelude.ToQuery ServerStatus

instance Prelude.ToHeader ServerStatus

instance Prelude.FromJSON ServerStatus where
  parseJSON = Prelude.parseJSONText "ServerStatus"
