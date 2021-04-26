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
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceDirectoryState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceDirectoryState
  ( WorkspaceDirectoryState
      ( ..,
        WorkspaceDirectoryStateDEREGISTERED,
        WorkspaceDirectoryStateDEREGISTERING,
        WorkspaceDirectoryStateERROR,
        WorkspaceDirectoryStateREGISTERED,
        WorkspaceDirectoryStateREGISTERING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkspaceDirectoryState = WorkspaceDirectoryState'
  { fromWorkspaceDirectoryState ::
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

pattern WorkspaceDirectoryStateDEREGISTERED :: WorkspaceDirectoryState
pattern WorkspaceDirectoryStateDEREGISTERED = WorkspaceDirectoryState' "DEREGISTERED"

pattern WorkspaceDirectoryStateDEREGISTERING :: WorkspaceDirectoryState
pattern WorkspaceDirectoryStateDEREGISTERING = WorkspaceDirectoryState' "DEREGISTERING"

pattern WorkspaceDirectoryStateERROR :: WorkspaceDirectoryState
pattern WorkspaceDirectoryStateERROR = WorkspaceDirectoryState' "ERROR"

pattern WorkspaceDirectoryStateREGISTERED :: WorkspaceDirectoryState
pattern WorkspaceDirectoryStateREGISTERED = WorkspaceDirectoryState' "REGISTERED"

pattern WorkspaceDirectoryStateREGISTERING :: WorkspaceDirectoryState
pattern WorkspaceDirectoryStateREGISTERING = WorkspaceDirectoryState' "REGISTERING"

{-# COMPLETE
  WorkspaceDirectoryStateDEREGISTERED,
  WorkspaceDirectoryStateDEREGISTERING,
  WorkspaceDirectoryStateERROR,
  WorkspaceDirectoryStateREGISTERED,
  WorkspaceDirectoryStateREGISTERING,
  WorkspaceDirectoryState'
  #-}

instance Prelude.FromText WorkspaceDirectoryState where
  parser = WorkspaceDirectoryState' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkspaceDirectoryState where
  toText (WorkspaceDirectoryState' x) = x

instance Prelude.Hashable WorkspaceDirectoryState

instance Prelude.NFData WorkspaceDirectoryState

instance Prelude.ToByteString WorkspaceDirectoryState

instance Prelude.ToQuery WorkspaceDirectoryState

instance Prelude.ToHeader WorkspaceDirectoryState

instance Prelude.FromJSON WorkspaceDirectoryState where
  parseJSON = Prelude.parseJSONText "WorkspaceDirectoryState"
