{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        WSAdminMaintenance,
        WSAvailable,
        WSError',
        WSImpaired,
        WSMaintenance,
        WSPending,
        WSRebooting,
        WSRebuilding,
        WSRestoring,
        WSStarting,
        WSStopped,
        WSStopping,
        WSSuspended,
        WSTerminated,
        WSTerminating,
        WSUnhealthy,
        WSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkspaceState = WorkspaceState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern WSAdminMaintenance :: WorkspaceState
pattern WSAdminMaintenance = WorkspaceState' "ADMIN_MAINTENANCE"

pattern WSAvailable :: WorkspaceState
pattern WSAvailable = WorkspaceState' "AVAILABLE"

pattern WSError' :: WorkspaceState
pattern WSError' = WorkspaceState' "ERROR"

pattern WSImpaired :: WorkspaceState
pattern WSImpaired = WorkspaceState' "IMPAIRED"

pattern WSMaintenance :: WorkspaceState
pattern WSMaintenance = WorkspaceState' "MAINTENANCE"

pattern WSPending :: WorkspaceState
pattern WSPending = WorkspaceState' "PENDING"

pattern WSRebooting :: WorkspaceState
pattern WSRebooting = WorkspaceState' "REBOOTING"

pattern WSRebuilding :: WorkspaceState
pattern WSRebuilding = WorkspaceState' "REBUILDING"

pattern WSRestoring :: WorkspaceState
pattern WSRestoring = WorkspaceState' "RESTORING"

pattern WSStarting :: WorkspaceState
pattern WSStarting = WorkspaceState' "STARTING"

pattern WSStopped :: WorkspaceState
pattern WSStopped = WorkspaceState' "STOPPED"

pattern WSStopping :: WorkspaceState
pattern WSStopping = WorkspaceState' "STOPPING"

pattern WSSuspended :: WorkspaceState
pattern WSSuspended = WorkspaceState' "SUSPENDED"

pattern WSTerminated :: WorkspaceState
pattern WSTerminated = WorkspaceState' "TERMINATED"

pattern WSTerminating :: WorkspaceState
pattern WSTerminating = WorkspaceState' "TERMINATING"

pattern WSUnhealthy :: WorkspaceState
pattern WSUnhealthy = WorkspaceState' "UNHEALTHY"

pattern WSUpdating :: WorkspaceState
pattern WSUpdating = WorkspaceState' "UPDATING"

{-# COMPLETE
  WSAdminMaintenance,
  WSAvailable,
  WSError',
  WSImpaired,
  WSMaintenance,
  WSPending,
  WSRebooting,
  WSRebuilding,
  WSRestoring,
  WSStarting,
  WSStopped,
  WSStopping,
  WSSuspended,
  WSTerminated,
  WSTerminating,
  WSUnhealthy,
  WSUpdating,
  WorkspaceState'
  #-}

instance FromText WorkspaceState where
  parser = (WorkspaceState' . mk) <$> takeText

instance ToText WorkspaceState where
  toText (WorkspaceState' ci) = original ci

instance Hashable WorkspaceState

instance NFData WorkspaceState

instance ToByteString WorkspaceState

instance ToQuery WorkspaceState

instance ToHeader WorkspaceState

instance FromJSON WorkspaceState where
  parseJSON = parseJSONText "WorkspaceState"
