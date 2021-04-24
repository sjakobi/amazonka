{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudHSMv2.Types.BackupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.BackupState
  ( BackupState
      ( ..,
        BSCreateInProgress,
        BSDeleted,
        BSPendingDeletion,
        BSReady
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data BackupState = BackupState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern BSCreateInProgress :: BackupState
pattern BSCreateInProgress = BackupState' "CREATE_IN_PROGRESS"

pattern BSDeleted :: BackupState
pattern BSDeleted = BackupState' "DELETED"

pattern BSPendingDeletion :: BackupState
pattern BSPendingDeletion = BackupState' "PENDING_DELETION"

pattern BSReady :: BackupState
pattern BSReady = BackupState' "READY"

{-# COMPLETE
  BSCreateInProgress,
  BSDeleted,
  BSPendingDeletion,
  BSReady,
  BackupState'
  #-}

instance FromText BackupState where
  parser = (BackupState' . mk) <$> takeText

instance ToText BackupState where
  toText (BackupState' ci) = original ci

instance Hashable BackupState

instance NFData BackupState

instance ToByteString BackupState

instance ToQuery BackupState

instance ToHeader BackupState

instance FromJSON BackupState where
  parseJSON = parseJSONText "BackupState"
