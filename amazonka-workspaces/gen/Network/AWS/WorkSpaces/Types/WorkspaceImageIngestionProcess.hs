{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ByolGraphics,
        ByolGraphicspro,
        ByolRegular,
        ByolRegularWsp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkspaceImageIngestionProcess
  = WorkspaceImageIngestionProcess'
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

pattern ByolGraphics :: WorkspaceImageIngestionProcess
pattern ByolGraphics = WorkspaceImageIngestionProcess' "BYOL_GRAPHICS"

pattern ByolGraphicspro :: WorkspaceImageIngestionProcess
pattern ByolGraphicspro = WorkspaceImageIngestionProcess' "BYOL_GRAPHICSPRO"

pattern ByolRegular :: WorkspaceImageIngestionProcess
pattern ByolRegular = WorkspaceImageIngestionProcess' "BYOL_REGULAR"

pattern ByolRegularWsp :: WorkspaceImageIngestionProcess
pattern ByolRegularWsp = WorkspaceImageIngestionProcess' "BYOL_REGULAR_WSP"

{-# COMPLETE
  ByolGraphics,
  ByolGraphicspro,
  ByolRegular,
  ByolRegularWsp,
  WorkspaceImageIngestionProcess'
  #-}

instance FromText WorkspaceImageIngestionProcess where
  parser = (WorkspaceImageIngestionProcess' . mk) <$> takeText

instance ToText WorkspaceImageIngestionProcess where
  toText (WorkspaceImageIngestionProcess' ci) = original ci

instance Hashable WorkspaceImageIngestionProcess

instance NFData WorkspaceImageIngestionProcess

instance ToByteString WorkspaceImageIngestionProcess

instance ToQuery WorkspaceImageIngestionProcess

instance ToHeader WorkspaceImageIngestionProcess

instance ToJSON WorkspaceImageIngestionProcess where
  toJSON = toJSONText
