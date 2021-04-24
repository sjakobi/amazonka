{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.UserProfileStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.UserProfileStatus
  ( UserProfileStatus
      ( ..,
        UPSDeleteFailed,
        UPSDeleting,
        UPSFailed,
        UPSInService,
        UPSPending,
        UPSUpdateFailed,
        UPSUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UserProfileStatus = UserProfileStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern UPSDeleteFailed :: UserProfileStatus
pattern UPSDeleteFailed = UserProfileStatus' "Delete_Failed"

pattern UPSDeleting :: UserProfileStatus
pattern UPSDeleting = UserProfileStatus' "Deleting"

pattern UPSFailed :: UserProfileStatus
pattern UPSFailed = UserProfileStatus' "Failed"

pattern UPSInService :: UserProfileStatus
pattern UPSInService = UserProfileStatus' "InService"

pattern UPSPending :: UserProfileStatus
pattern UPSPending = UserProfileStatus' "Pending"

pattern UPSUpdateFailed :: UserProfileStatus
pattern UPSUpdateFailed = UserProfileStatus' "Update_Failed"

pattern UPSUpdating :: UserProfileStatus
pattern UPSUpdating = UserProfileStatus' "Updating"

{-# COMPLETE
  UPSDeleteFailed,
  UPSDeleting,
  UPSFailed,
  UPSInService,
  UPSPending,
  UPSUpdateFailed,
  UPSUpdating,
  UserProfileStatus'
  #-}

instance FromText UserProfileStatus where
  parser = (UserProfileStatus' . mk) <$> takeText

instance ToText UserProfileStatus where
  toText (UserProfileStatus' ci) = original ci

instance Hashable UserProfileStatus

instance NFData UserProfileStatus

instance ToByteString UserProfileStatus

instance ToQuery UserProfileStatus

instance ToHeader UserProfileStatus

instance FromJSON UserProfileStatus where
  parseJSON = parseJSONText "UserProfileStatus"
