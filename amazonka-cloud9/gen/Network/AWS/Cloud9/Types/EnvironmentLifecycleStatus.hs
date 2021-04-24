{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Cloud9.Types.EnvironmentLifecycleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Cloud9.Types.EnvironmentLifecycleStatus
  ( EnvironmentLifecycleStatus
      ( ..,
        CreateFailed,
        Created,
        Creating,
        DeleteFailed,
        Deleting
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentLifecycleStatus
  = EnvironmentLifecycleStatus'
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

pattern CreateFailed :: EnvironmentLifecycleStatus
pattern CreateFailed = EnvironmentLifecycleStatus' "CREATE_FAILED"

pattern Created :: EnvironmentLifecycleStatus
pattern Created = EnvironmentLifecycleStatus' "CREATED"

pattern Creating :: EnvironmentLifecycleStatus
pattern Creating = EnvironmentLifecycleStatus' "CREATING"

pattern DeleteFailed :: EnvironmentLifecycleStatus
pattern DeleteFailed = EnvironmentLifecycleStatus' "DELETE_FAILED"

pattern Deleting :: EnvironmentLifecycleStatus
pattern Deleting = EnvironmentLifecycleStatus' "DELETING"

{-# COMPLETE
  CreateFailed,
  Created,
  Creating,
  DeleteFailed,
  Deleting,
  EnvironmentLifecycleStatus'
  #-}

instance FromText EnvironmentLifecycleStatus where
  parser = (EnvironmentLifecycleStatus' . mk) <$> takeText

instance ToText EnvironmentLifecycleStatus where
  toText (EnvironmentLifecycleStatus' ci) = original ci

instance Hashable EnvironmentLifecycleStatus

instance NFData EnvironmentLifecycleStatus

instance ToByteString EnvironmentLifecycleStatus

instance ToQuery EnvironmentLifecycleStatus

instance ToHeader EnvironmentLifecycleStatus

instance FromJSON EnvironmentLifecycleStatus where
  parseJSON = parseJSONText "EnvironmentLifecycleStatus"
