{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ArchiveState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ArchiveState
  ( ArchiveState
      ( ..,
        ASCreateFailed,
        ASCreating,
        ASDisabled,
        ASEnabled,
        ASUpdateFailed,
        ASUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ArchiveState = ArchiveState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASCreateFailed :: ArchiveState
pattern ASCreateFailed = ArchiveState' "CREATE_FAILED"

pattern ASCreating :: ArchiveState
pattern ASCreating = ArchiveState' "CREATING"

pattern ASDisabled :: ArchiveState
pattern ASDisabled = ArchiveState' "DISABLED"

pattern ASEnabled :: ArchiveState
pattern ASEnabled = ArchiveState' "ENABLED"

pattern ASUpdateFailed :: ArchiveState
pattern ASUpdateFailed = ArchiveState' "UPDATE_FAILED"

pattern ASUpdating :: ArchiveState
pattern ASUpdating = ArchiveState' "UPDATING"

{-# COMPLETE
  ASCreateFailed,
  ASCreating,
  ASDisabled,
  ASEnabled,
  ASUpdateFailed,
  ASUpdating,
  ArchiveState'
  #-}

instance FromText ArchiveState where
  parser = (ArchiveState' . mk) <$> takeText

instance ToText ArchiveState where
  toText (ArchiveState' ci) = original ci

instance Hashable ArchiveState

instance NFData ArchiveState

instance ToByteString ArchiveState

instance ToQuery ArchiveState

instance ToHeader ArchiveState

instance ToJSON ArchiveState where
  toJSON = toJSONText

instance FromJSON ArchiveState where
  parseJSON = parseJSONText "ArchiveState"
