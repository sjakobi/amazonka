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
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceImageState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceImageState
  ( WorkspaceImageState
      ( ..,
        WorkspaceImageStateAVAILABLE,
        WorkspaceImageStateERROR,
        WorkspaceImageStatePENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkspaceImageState = WorkspaceImageState'
  { fromWorkspaceImageState ::
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

pattern WorkspaceImageStateAVAILABLE :: WorkspaceImageState
pattern WorkspaceImageStateAVAILABLE = WorkspaceImageState' "AVAILABLE"

pattern WorkspaceImageStateERROR :: WorkspaceImageState
pattern WorkspaceImageStateERROR = WorkspaceImageState' "ERROR"

pattern WorkspaceImageStatePENDING :: WorkspaceImageState
pattern WorkspaceImageStatePENDING = WorkspaceImageState' "PENDING"

{-# COMPLETE
  WorkspaceImageStateAVAILABLE,
  WorkspaceImageStateERROR,
  WorkspaceImageStatePENDING,
  WorkspaceImageState'
  #-}

instance Prelude.FromText WorkspaceImageState where
  parser = WorkspaceImageState' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkspaceImageState where
  toText (WorkspaceImageState' x) = x

instance Prelude.Hashable WorkspaceImageState

instance Prelude.NFData WorkspaceImageState

instance Prelude.ToByteString WorkspaceImageState

instance Prelude.ToQuery WorkspaceImageState

instance Prelude.ToHeader WorkspaceImageState

instance Prelude.FromJSON WorkspaceImageState where
  parseJSON = Prelude.parseJSONText "WorkspaceImageState"
