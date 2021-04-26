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
-- Module      : Network.AWS.WorkSpaces.Types.WorkspaceImageIngestionProcess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.WorkspaceImageIngestionProcess
  ( WorkspaceImageIngestionProcess
      ( ..,
        WorkspaceImageIngestionProcessBYOLGRAPHICS,
        WorkspaceImageIngestionProcessBYOLGRAPHICSPRO,
        WorkspaceImageIngestionProcessBYOLREGULAR,
        WorkspaceImageIngestionProcessBYOLREGULARWSP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkspaceImageIngestionProcess = WorkspaceImageIngestionProcess'
  { fromWorkspaceImageIngestionProcess ::
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

pattern WorkspaceImageIngestionProcessBYOLGRAPHICS :: WorkspaceImageIngestionProcess
pattern WorkspaceImageIngestionProcessBYOLGRAPHICS = WorkspaceImageIngestionProcess' "BYOL_GRAPHICS"

pattern WorkspaceImageIngestionProcessBYOLGRAPHICSPRO :: WorkspaceImageIngestionProcess
pattern WorkspaceImageIngestionProcessBYOLGRAPHICSPRO = WorkspaceImageIngestionProcess' "BYOL_GRAPHICSPRO"

pattern WorkspaceImageIngestionProcessBYOLREGULAR :: WorkspaceImageIngestionProcess
pattern WorkspaceImageIngestionProcessBYOLREGULAR = WorkspaceImageIngestionProcess' "BYOL_REGULAR"

pattern WorkspaceImageIngestionProcessBYOLREGULARWSP :: WorkspaceImageIngestionProcess
pattern WorkspaceImageIngestionProcessBYOLREGULARWSP = WorkspaceImageIngestionProcess' "BYOL_REGULAR_WSP"

{-# COMPLETE
  WorkspaceImageIngestionProcessBYOLGRAPHICS,
  WorkspaceImageIngestionProcessBYOLGRAPHICSPRO,
  WorkspaceImageIngestionProcessBYOLREGULAR,
  WorkspaceImageIngestionProcessBYOLREGULARWSP,
  WorkspaceImageIngestionProcess'
  #-}

instance Prelude.FromText WorkspaceImageIngestionProcess where
  parser = WorkspaceImageIngestionProcess' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkspaceImageIngestionProcess where
  toText (WorkspaceImageIngestionProcess' x) = x

instance Prelude.Hashable WorkspaceImageIngestionProcess

instance Prelude.NFData WorkspaceImageIngestionProcess

instance Prelude.ToByteString WorkspaceImageIngestionProcess

instance Prelude.ToQuery WorkspaceImageIngestionProcess

instance Prelude.ToHeader WorkspaceImageIngestionProcess

instance Prelude.ToJSON WorkspaceImageIngestionProcess where
  toJSON = Prelude.toJSONText
