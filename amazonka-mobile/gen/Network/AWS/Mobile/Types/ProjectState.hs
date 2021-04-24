{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Mobile.Types.ProjectState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Mobile.Types.ProjectState
  ( ProjectState
      ( ..,
        Importing,
        Normal,
        Syncing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Synchronization state for a project.
data ProjectState = ProjectState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Importing :: ProjectState
pattern Importing = ProjectState' "IMPORTING"

pattern Normal :: ProjectState
pattern Normal = ProjectState' "NORMAL"

pattern Syncing :: ProjectState
pattern Syncing = ProjectState' "SYNCING"

{-# COMPLETE
  Importing,
  Normal,
  Syncing,
  ProjectState'
  #-}

instance FromText ProjectState where
  parser = (ProjectState' . mk) <$> takeText

instance ToText ProjectState where
  toText (ProjectState' ci) = original ci

instance Hashable ProjectState

instance NFData ProjectState

instance ToByteString ProjectState

instance ToQuery ProjectState

instance ToHeader ProjectState

instance FromJSON ProjectState where
  parseJSON = parseJSONText "ProjectState"
