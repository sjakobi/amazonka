{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.CapacityProviderUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.CapacityProviderUpdateStatus
  ( CapacityProviderUpdateStatus
      ( ..,
        DeleteComplete,
        DeleteFailed,
        DeleteInProgress,
        UpdateComplete,
        UpdateFailed,
        UpdateInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CapacityProviderUpdateStatus
  = CapacityProviderUpdateStatus'
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

pattern DeleteComplete :: CapacityProviderUpdateStatus
pattern DeleteComplete = CapacityProviderUpdateStatus' "DELETE_COMPLETE"

pattern DeleteFailed :: CapacityProviderUpdateStatus
pattern DeleteFailed = CapacityProviderUpdateStatus' "DELETE_FAILED"

pattern DeleteInProgress :: CapacityProviderUpdateStatus
pattern DeleteInProgress = CapacityProviderUpdateStatus' "DELETE_IN_PROGRESS"

pattern UpdateComplete :: CapacityProviderUpdateStatus
pattern UpdateComplete = CapacityProviderUpdateStatus' "UPDATE_COMPLETE"

pattern UpdateFailed :: CapacityProviderUpdateStatus
pattern UpdateFailed = CapacityProviderUpdateStatus' "UPDATE_FAILED"

pattern UpdateInProgress :: CapacityProviderUpdateStatus
pattern UpdateInProgress = CapacityProviderUpdateStatus' "UPDATE_IN_PROGRESS"

{-# COMPLETE
  DeleteComplete,
  DeleteFailed,
  DeleteInProgress,
  UpdateComplete,
  UpdateFailed,
  UpdateInProgress,
  CapacityProviderUpdateStatus'
  #-}

instance FromText CapacityProviderUpdateStatus where
  parser = (CapacityProviderUpdateStatus' . mk) <$> takeText

instance ToText CapacityProviderUpdateStatus where
  toText (CapacityProviderUpdateStatus' ci) = original ci

instance Hashable CapacityProviderUpdateStatus

instance NFData CapacityProviderUpdateStatus

instance ToByteString CapacityProviderUpdateStatus

instance ToQuery CapacityProviderUpdateStatus

instance ToHeader CapacityProviderUpdateStatus

instance FromJSON CapacityProviderUpdateStatus where
  parseJSON = parseJSONText "CapacityProviderUpdateStatus"
