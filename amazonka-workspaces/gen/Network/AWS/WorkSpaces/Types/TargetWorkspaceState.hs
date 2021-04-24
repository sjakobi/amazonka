{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.TargetWorkspaceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.TargetWorkspaceState
  ( TargetWorkspaceState
      ( ..,
        AdminMaintenance,
        Available
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetWorkspaceState
  = TargetWorkspaceState'
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

pattern AdminMaintenance :: TargetWorkspaceState
pattern AdminMaintenance = TargetWorkspaceState' "ADMIN_MAINTENANCE"

pattern Available :: TargetWorkspaceState
pattern Available = TargetWorkspaceState' "AVAILABLE"

{-# COMPLETE
  AdminMaintenance,
  Available,
  TargetWorkspaceState'
  #-}

instance FromText TargetWorkspaceState where
  parser = (TargetWorkspaceState' . mk) <$> takeText

instance ToText TargetWorkspaceState where
  toText (TargetWorkspaceState' ci) = original ci

instance Hashable TargetWorkspaceState

instance NFData TargetWorkspaceState

instance ToByteString TargetWorkspaceState

instance ToQuery TargetWorkspaceState

instance ToHeader TargetWorkspaceState

instance ToJSON TargetWorkspaceState where
  toJSON = toJSONText
