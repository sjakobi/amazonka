{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceDirectoryState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceDirectoryState
  ( WorkspaceDirectoryState
      ( ..,
        Deregistered,
        Deregistering,
        Error',
        Registered,
        Registering
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkspaceDirectoryState
  = WorkspaceDirectoryState'
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

pattern Deregistered :: WorkspaceDirectoryState
pattern Deregistered = WorkspaceDirectoryState' "DEREGISTERED"

pattern Deregistering :: WorkspaceDirectoryState
pattern Deregistering = WorkspaceDirectoryState' "DEREGISTERING"

pattern Error' :: WorkspaceDirectoryState
pattern Error' = WorkspaceDirectoryState' "ERROR"

pattern Registered :: WorkspaceDirectoryState
pattern Registered = WorkspaceDirectoryState' "REGISTERED"

pattern Registering :: WorkspaceDirectoryState
pattern Registering = WorkspaceDirectoryState' "REGISTERING"

{-# COMPLETE
  Deregistered,
  Deregistering,
  Error',
  Registered,
  Registering,
  WorkspaceDirectoryState'
  #-}

instance FromText WorkspaceDirectoryState where
  parser = (WorkspaceDirectoryState' . mk) <$> takeText

instance ToText WorkspaceDirectoryState where
  toText (WorkspaceDirectoryState' ci) = original ci

instance Hashable WorkspaceDirectoryState

instance NFData WorkspaceDirectoryState

instance ToByteString WorkspaceDirectoryState

instance ToQuery WorkspaceDirectoryState

instance ToHeader WorkspaceDirectoryState

instance FromJSON WorkspaceDirectoryState where
  parseJSON = parseJSONText "WorkspaceDirectoryState"
