{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.TrustState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.TrustState
  ( TrustState
      ( ..,
        TSCreated,
        TSCreating,
        TSDeleted,
        TSDeleting,
        TSFailed,
        TSUpdateFailed,
        TSUpdated,
        TSUpdating,
        TSVerified,
        TSVerifyFailed,
        TSVerifying
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TrustState = TrustState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TSCreated :: TrustState
pattern TSCreated = TrustState' "Created"

pattern TSCreating :: TrustState
pattern TSCreating = TrustState' "Creating"

pattern TSDeleted :: TrustState
pattern TSDeleted = TrustState' "Deleted"

pattern TSDeleting :: TrustState
pattern TSDeleting = TrustState' "Deleting"

pattern TSFailed :: TrustState
pattern TSFailed = TrustState' "Failed"

pattern TSUpdateFailed :: TrustState
pattern TSUpdateFailed = TrustState' "UpdateFailed"

pattern TSUpdated :: TrustState
pattern TSUpdated = TrustState' "Updated"

pattern TSUpdating :: TrustState
pattern TSUpdating = TrustState' "Updating"

pattern TSVerified :: TrustState
pattern TSVerified = TrustState' "Verified"

pattern TSVerifyFailed :: TrustState
pattern TSVerifyFailed = TrustState' "VerifyFailed"

pattern TSVerifying :: TrustState
pattern TSVerifying = TrustState' "Verifying"

{-# COMPLETE
  TSCreated,
  TSCreating,
  TSDeleted,
  TSDeleting,
  TSFailed,
  TSUpdateFailed,
  TSUpdated,
  TSUpdating,
  TSVerified,
  TSVerifyFailed,
  TSVerifying,
  TrustState'
  #-}

instance FromText TrustState where
  parser = (TrustState' . mk) <$> takeText

instance ToText TrustState where
  toText (TrustState' ci) = original ci

instance Hashable TrustState

instance NFData TrustState

instance ToByteString TrustState

instance ToQuery TrustState

instance ToHeader TrustState

instance FromJSON TrustState where
  parseJSON = parseJSONText "TrustState"
