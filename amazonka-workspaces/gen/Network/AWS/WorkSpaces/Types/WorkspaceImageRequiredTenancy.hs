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
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceImageRequiredTenancy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceImageRequiredTenancy
  ( WorkspaceImageRequiredTenancy
      ( ..,
        WorkspaceImageRequiredTenancyDEDICATED,
        WorkspaceImageRequiredTenancyDEFAULT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkspaceImageRequiredTenancy = WorkspaceImageRequiredTenancy'
  { fromWorkspaceImageRequiredTenancy ::
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

pattern WorkspaceImageRequiredTenancyDEDICATED :: WorkspaceImageRequiredTenancy
pattern WorkspaceImageRequiredTenancyDEDICATED = WorkspaceImageRequiredTenancy' "DEDICATED"

pattern WorkspaceImageRequiredTenancyDEFAULT :: WorkspaceImageRequiredTenancy
pattern WorkspaceImageRequiredTenancyDEFAULT = WorkspaceImageRequiredTenancy' "DEFAULT"

{-# COMPLETE
  WorkspaceImageRequiredTenancyDEDICATED,
  WorkspaceImageRequiredTenancyDEFAULT,
  WorkspaceImageRequiredTenancy'
  #-}

instance Prelude.FromText WorkspaceImageRequiredTenancy where
  parser = WorkspaceImageRequiredTenancy' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkspaceImageRequiredTenancy where
  toText (WorkspaceImageRequiredTenancy' x) = x

instance Prelude.Hashable WorkspaceImageRequiredTenancy

instance Prelude.NFData WorkspaceImageRequiredTenancy

instance Prelude.ToByteString WorkspaceImageRequiredTenancy

instance Prelude.ToQuery WorkspaceImageRequiredTenancy

instance Prelude.ToHeader WorkspaceImageRequiredTenancy

instance Prelude.FromJSON WorkspaceImageRequiredTenancy where
  parseJSON = Prelude.parseJSONText "WorkspaceImageRequiredTenancy"
