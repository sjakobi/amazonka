{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.GroupConfigurationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ResourceGroups.Types.GroupConfigurationStatus
  ( GroupConfigurationStatus
      ( ..,
        UpdateComplete,
        UpdateFailed,
        Updating
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GroupConfigurationStatus
  = GroupConfigurationStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern UpdateComplete :: GroupConfigurationStatus
pattern UpdateComplete = GroupConfigurationStatus' "UPDATE_COMPLETE"

pattern UpdateFailed :: GroupConfigurationStatus
pattern UpdateFailed = GroupConfigurationStatus' "UPDATE_FAILED"

pattern Updating :: GroupConfigurationStatus
pattern Updating = GroupConfigurationStatus' "UPDATING"

{-# COMPLETE
  UpdateComplete,
  UpdateFailed,
  Updating,
  GroupConfigurationStatus'
  #-}

instance FromText GroupConfigurationStatus where
  parser = (GroupConfigurationStatus' . mk) <$> takeText

instance ToText GroupConfigurationStatus where
  toText (GroupConfigurationStatus' ci) = original ci

instance Hashable GroupConfigurationStatus

instance NFData GroupConfigurationStatus

instance ToByteString GroupConfigurationStatus

instance ToQuery GroupConfigurationStatus

instance ToHeader GroupConfigurationStatus

instance FromJSON GroupConfigurationStatus where
  parseJSON = parseJSONText "GroupConfigurationStatus"
