{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SMS.Types.AppStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.AppStatus
  ( AppStatus
      ( ..,
        ASActive,
        ASCreating,
        ASDeleteFailed,
        ASDeleted,
        ASDeleting,
        ASUpdating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppStatus = AppStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASActive :: AppStatus
pattern ASActive = AppStatus' "ACTIVE"

pattern ASCreating :: AppStatus
pattern ASCreating = AppStatus' "CREATING"

pattern ASDeleteFailed :: AppStatus
pattern ASDeleteFailed = AppStatus' "DELETE_FAILED"

pattern ASDeleted :: AppStatus
pattern ASDeleted = AppStatus' "DELETED"

pattern ASDeleting :: AppStatus
pattern ASDeleting = AppStatus' "DELETING"

pattern ASUpdating :: AppStatus
pattern ASUpdating = AppStatus' "UPDATING"

{-# COMPLETE
  ASActive,
  ASCreating,
  ASDeleteFailed,
  ASDeleted,
  ASDeleting,
  ASUpdating,
  AppStatus'
  #-}

instance FromText AppStatus where
  parser = (AppStatus' . mk) <$> takeText

instance ToText AppStatus where
  toText (AppStatus' ci) = original ci

instance Hashable AppStatus

instance NFData AppStatus

instance ToByteString AppStatus

instance ToQuery AppStatus

instance ToHeader AppStatus

instance FromJSON AppStatus where
  parseJSON = parseJSONText "AppStatus"
