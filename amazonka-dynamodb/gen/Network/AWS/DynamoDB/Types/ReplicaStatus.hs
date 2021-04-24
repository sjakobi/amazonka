{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.ReplicaStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReplicaStatus
  ( ReplicaStatus
      ( ..,
        Active,
        Creating,
        CreationFailed,
        Deleting,
        InaccessibleEncryptionCredentials,
        RegionDisabled,
        Updating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReplicaStatus = ReplicaStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Active :: ReplicaStatus
pattern Active = ReplicaStatus' "ACTIVE"

pattern Creating :: ReplicaStatus
pattern Creating = ReplicaStatus' "CREATING"

pattern CreationFailed :: ReplicaStatus
pattern CreationFailed = ReplicaStatus' "CREATION_FAILED"

pattern Deleting :: ReplicaStatus
pattern Deleting = ReplicaStatus' "DELETING"

pattern InaccessibleEncryptionCredentials :: ReplicaStatus
pattern InaccessibleEncryptionCredentials = ReplicaStatus' "INACCESSIBLE_ENCRYPTION_CREDENTIALS"

pattern RegionDisabled :: ReplicaStatus
pattern RegionDisabled = ReplicaStatus' "REGION_DISABLED"

pattern Updating :: ReplicaStatus
pattern Updating = ReplicaStatus' "UPDATING"

{-# COMPLETE
  Active,
  Creating,
  CreationFailed,
  Deleting,
  InaccessibleEncryptionCredentials,
  RegionDisabled,
  Updating,
  ReplicaStatus'
  #-}

instance FromText ReplicaStatus where
  parser = (ReplicaStatus' . mk) <$> takeText

instance ToText ReplicaStatus where
  toText (ReplicaStatus' ci) = original ci

instance Hashable ReplicaStatus

instance NFData ReplicaStatus

instance ToByteString ReplicaStatus

instance ToQuery ReplicaStatus

instance ToHeader ReplicaStatus

instance FromJSON ReplicaStatus where
  parseJSON = parseJSONText "ReplicaStatus"
