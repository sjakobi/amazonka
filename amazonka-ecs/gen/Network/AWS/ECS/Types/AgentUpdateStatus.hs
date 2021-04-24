{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.AgentUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.AgentUpdateStatus
  ( AgentUpdateStatus
      ( ..,
        Failed,
        Pending,
        Staged,
        Staging,
        Updated,
        Updating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AgentUpdateStatus = AgentUpdateStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: AgentUpdateStatus
pattern Failed = AgentUpdateStatus' "FAILED"

pattern Pending :: AgentUpdateStatus
pattern Pending = AgentUpdateStatus' "PENDING"

pattern Staged :: AgentUpdateStatus
pattern Staged = AgentUpdateStatus' "STAGED"

pattern Staging :: AgentUpdateStatus
pattern Staging = AgentUpdateStatus' "STAGING"

pattern Updated :: AgentUpdateStatus
pattern Updated = AgentUpdateStatus' "UPDATED"

pattern Updating :: AgentUpdateStatus
pattern Updating = AgentUpdateStatus' "UPDATING"

{-# COMPLETE
  Failed,
  Pending,
  Staged,
  Staging,
  Updated,
  Updating,
  AgentUpdateStatus'
  #-}

instance FromText AgentUpdateStatus where
  parser = (AgentUpdateStatus' . mk) <$> takeText

instance ToText AgentUpdateStatus where
  toText (AgentUpdateStatus' ci) = original ci

instance Hashable AgentUpdateStatus

instance NFData AgentUpdateStatus

instance ToByteString AgentUpdateStatus

instance ToQuery AgentUpdateStatus

instance ToHeader AgentUpdateStatus

instance FromJSON AgentUpdateStatus where
  parseJSON = parseJSONText "AgentUpdateStatus"
