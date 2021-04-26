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
-- Module      : Network.AWS.WorkSpaces.Types.TargetWorkspaceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.TargetWorkspaceState
  ( TargetWorkspaceState
      ( ..,
        TargetWorkspaceStateADMINMAINTENANCE,
        TargetWorkspaceStateAVAILABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TargetWorkspaceState = TargetWorkspaceState'
  { fromTargetWorkspaceState ::
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

pattern TargetWorkspaceStateADMINMAINTENANCE :: TargetWorkspaceState
pattern TargetWorkspaceStateADMINMAINTENANCE = TargetWorkspaceState' "ADMIN_MAINTENANCE"

pattern TargetWorkspaceStateAVAILABLE :: TargetWorkspaceState
pattern TargetWorkspaceStateAVAILABLE = TargetWorkspaceState' "AVAILABLE"

{-# COMPLETE
  TargetWorkspaceStateADMINMAINTENANCE,
  TargetWorkspaceStateAVAILABLE,
  TargetWorkspaceState'
  #-}

instance Prelude.FromText TargetWorkspaceState where
  parser = TargetWorkspaceState' Prelude.<$> Prelude.takeText

instance Prelude.ToText TargetWorkspaceState where
  toText (TargetWorkspaceState' x) = x

instance Prelude.Hashable TargetWorkspaceState

instance Prelude.NFData TargetWorkspaceState

instance Prelude.ToByteString TargetWorkspaceState

instance Prelude.ToQuery TargetWorkspaceState

instance Prelude.ToHeader TargetWorkspaceState

instance Prelude.ToJSON TargetWorkspaceState where
  toJSON = Prelude.toJSONText
