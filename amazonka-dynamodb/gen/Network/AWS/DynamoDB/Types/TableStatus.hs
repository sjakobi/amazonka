{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.TableStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.TableStatus
  ( TableStatus
      ( ..,
        TSActive,
        TSArchived,
        TSArchiving,
        TSCreating,
        TSDeleting,
        TSInaccessibleEncryptionCredentials,
        TSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TableStatus = TableStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TSActive :: TableStatus
pattern TSActive = TableStatus' "ACTIVE"

pattern TSArchived :: TableStatus
pattern TSArchived = TableStatus' "ARCHIVED"

pattern TSArchiving :: TableStatus
pattern TSArchiving = TableStatus' "ARCHIVING"

pattern TSCreating :: TableStatus
pattern TSCreating = TableStatus' "CREATING"

pattern TSDeleting :: TableStatus
pattern TSDeleting = TableStatus' "DELETING"

pattern TSInaccessibleEncryptionCredentials :: TableStatus
pattern TSInaccessibleEncryptionCredentials = TableStatus' "INACCESSIBLE_ENCRYPTION_CREDENTIALS"

pattern TSUpdating :: TableStatus
pattern TSUpdating = TableStatus' "UPDATING"

{-# COMPLETE
  TSActive,
  TSArchived,
  TSArchiving,
  TSCreating,
  TSDeleting,
  TSInaccessibleEncryptionCredentials,
  TSUpdating,
  TableStatus'
  #-}

instance FromText TableStatus where
  parser = (TableStatus' . mk) <$> takeText

instance ToText TableStatus where
  toText (TableStatus' ci) = original ci

instance Hashable TableStatus

instance NFData TableStatus

instance ToByteString TableStatus

instance ToQuery TableStatus

instance ToHeader TableStatus

instance FromJSON TableStatus where
  parseJSON = parseJSONText "TableStatus"
