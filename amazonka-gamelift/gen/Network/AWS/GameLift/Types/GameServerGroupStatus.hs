{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GameLift.Types.GameServerGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.GameServerGroupStatus
  ( GameServerGroupStatus
      ( ..,
        Activating,
        Active,
        DeleteScheduled,
        Deleted,
        Deleting,
        Error',
        New
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GameServerGroupStatus
  = GameServerGroupStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Activating :: GameServerGroupStatus
pattern Activating = GameServerGroupStatus' "ACTIVATING"

pattern Active :: GameServerGroupStatus
pattern Active = GameServerGroupStatus' "ACTIVE"

pattern DeleteScheduled :: GameServerGroupStatus
pattern DeleteScheduled = GameServerGroupStatus' "DELETE_SCHEDULED"

pattern Deleted :: GameServerGroupStatus
pattern Deleted = GameServerGroupStatus' "DELETED"

pattern Deleting :: GameServerGroupStatus
pattern Deleting = GameServerGroupStatus' "DELETING"

pattern Error' :: GameServerGroupStatus
pattern Error' = GameServerGroupStatus' "ERROR"

pattern New :: GameServerGroupStatus
pattern New = GameServerGroupStatus' "NEW"

{-# COMPLETE
  Activating,
  Active,
  DeleteScheduled,
  Deleted,
  Deleting,
  Error',
  New,
  GameServerGroupStatus'
  #-}

instance FromText GameServerGroupStatus where
  parser = (GameServerGroupStatus' . mk) <$> takeText

instance ToText GameServerGroupStatus where
  toText (GameServerGroupStatus' ci) = original ci

instance Hashable GameServerGroupStatus

instance NFData GameServerGroupStatus

instance ToByteString GameServerGroupStatus

instance ToQuery GameServerGroupStatus

instance ToHeader GameServerGroupStatus

instance FromJSON GameServerGroupStatus where
  parseJSON = parseJSONText "GameServerGroupStatus"
