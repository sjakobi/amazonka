{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Dedicated,
        Default
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkspaceImageRequiredTenancy
  = WorkspaceImageRequiredTenancy'
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

pattern Dedicated :: WorkspaceImageRequiredTenancy
pattern Dedicated = WorkspaceImageRequiredTenancy' "DEDICATED"

pattern Default :: WorkspaceImageRequiredTenancy
pattern Default = WorkspaceImageRequiredTenancy' "DEFAULT"

{-# COMPLETE
  Dedicated,
  Default,
  WorkspaceImageRequiredTenancy'
  #-}

instance FromText WorkspaceImageRequiredTenancy where
  parser = (WorkspaceImageRequiredTenancy' . mk) <$> takeText

instance ToText WorkspaceImageRequiredTenancy where
  toText (WorkspaceImageRequiredTenancy' ci) = original ci

instance Hashable WorkspaceImageRequiredTenancy

instance NFData WorkspaceImageRequiredTenancy

instance ToByteString WorkspaceImageRequiredTenancy

instance ToQuery WorkspaceImageRequiredTenancy

instance ToHeader WorkspaceImageRequiredTenancy

instance FromJSON WorkspaceImageRequiredTenancy where
  parseJSON = parseJSONText "WorkspaceImageRequiredTenancy"
