{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Types.MigrationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Types.MigrationStatus
  ( MigrationStatus
      ( ..,
        Completed,
        Failed,
        InProgress,
        NotStarted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MigrationStatus = MigrationStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Completed :: MigrationStatus
pattern Completed = MigrationStatus' "COMPLETED"

pattern Failed :: MigrationStatus
pattern Failed = MigrationStatus' "FAILED"

pattern InProgress :: MigrationStatus
pattern InProgress = MigrationStatus' "IN_PROGRESS"

pattern NotStarted :: MigrationStatus
pattern NotStarted = MigrationStatus' "NOT_STARTED"

{-# COMPLETE
  Completed,
  Failed,
  InProgress,
  NotStarted,
  MigrationStatus'
  #-}

instance FromText MigrationStatus where
  parser = (MigrationStatus' . mk) <$> takeText

instance ToText MigrationStatus where
  toText (MigrationStatus' ci) = original ci

instance Hashable MigrationStatus

instance NFData MigrationStatus

instance ToByteString MigrationStatus

instance ToQuery MigrationStatus

instance ToHeader MigrationStatus

instance ToJSON MigrationStatus where
  toJSON = toJSONText

instance FromJSON MigrationStatus where
  parseJSON = parseJSONText "MigrationStatus"
