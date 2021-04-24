{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.BackupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BackupStatus
  ( BackupStatus
      ( ..,
        BSAvailable,
        BSCreating,
        BSDeleted
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BackupStatus = BackupStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BSAvailable :: BackupStatus
pattern BSAvailable = BackupStatus' "AVAILABLE"

pattern BSCreating :: BackupStatus
pattern BSCreating = BackupStatus' "CREATING"

pattern BSDeleted :: BackupStatus
pattern BSDeleted = BackupStatus' "DELETED"

{-# COMPLETE
  BSAvailable,
  BSCreating,
  BSDeleted,
  BackupStatus'
  #-}

instance FromText BackupStatus where
  parser = (BackupStatus' . mk) <$> takeText

instance ToText BackupStatus where
  toText (BackupStatus' ci) = original ci

instance Hashable BackupStatus

instance NFData BackupStatus

instance ToByteString BackupStatus

instance ToQuery BackupStatus

instance ToHeader BackupStatus

instance FromJSON BackupStatus where
  parseJSON = parseJSONText "BackupStatus"
