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
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceDirectoryType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceDirectoryType
  ( WorkspaceDirectoryType
      ( ..,
        WorkspaceDirectoryTypeADCONNECTOR,
        WorkspaceDirectoryTypeSIMPLEAD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkspaceDirectoryType = WorkspaceDirectoryType'
  { fromWorkspaceDirectoryType ::
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

pattern WorkspaceDirectoryTypeADCONNECTOR :: WorkspaceDirectoryType
pattern WorkspaceDirectoryTypeADCONNECTOR = WorkspaceDirectoryType' "AD_CONNECTOR"

pattern WorkspaceDirectoryTypeSIMPLEAD :: WorkspaceDirectoryType
pattern WorkspaceDirectoryTypeSIMPLEAD = WorkspaceDirectoryType' "SIMPLE_AD"

{-# COMPLETE
  WorkspaceDirectoryTypeADCONNECTOR,
  WorkspaceDirectoryTypeSIMPLEAD,
  WorkspaceDirectoryType'
  #-}

instance Prelude.FromText WorkspaceDirectoryType where
  parser = WorkspaceDirectoryType' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkspaceDirectoryType where
  toText (WorkspaceDirectoryType' x) = x

instance Prelude.Hashable WorkspaceDirectoryType

instance Prelude.NFData WorkspaceDirectoryType

instance Prelude.ToByteString WorkspaceDirectoryType

instance Prelude.ToQuery WorkspaceDirectoryType

instance Prelude.ToHeader WorkspaceDirectoryType

instance Prelude.FromJSON WorkspaceDirectoryType where
  parseJSON = Prelude.parseJSONText "WorkspaceDirectoryType"
