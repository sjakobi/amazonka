{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.OrganizationRuleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationRuleStatus
  ( OrganizationRuleStatus
      ( ..,
        CreateFailed,
        CreateInProgress,
        CreateSuccessful,
        DeleteFailed,
        DeleteInProgress,
        DeleteSuccessful,
        UpdateFailed,
        UpdateInProgress,
        UpdateSuccessful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OrganizationRuleStatus
  = OrganizationRuleStatus'
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

pattern CreateFailed :: OrganizationRuleStatus
pattern CreateFailed = OrganizationRuleStatus' "CREATE_FAILED"

pattern CreateInProgress :: OrganizationRuleStatus
pattern CreateInProgress = OrganizationRuleStatus' "CREATE_IN_PROGRESS"

pattern CreateSuccessful :: OrganizationRuleStatus
pattern CreateSuccessful = OrganizationRuleStatus' "CREATE_SUCCESSFUL"

pattern DeleteFailed :: OrganizationRuleStatus
pattern DeleteFailed = OrganizationRuleStatus' "DELETE_FAILED"

pattern DeleteInProgress :: OrganizationRuleStatus
pattern DeleteInProgress = OrganizationRuleStatus' "DELETE_IN_PROGRESS"

pattern DeleteSuccessful :: OrganizationRuleStatus
pattern DeleteSuccessful = OrganizationRuleStatus' "DELETE_SUCCESSFUL"

pattern UpdateFailed :: OrganizationRuleStatus
pattern UpdateFailed = OrganizationRuleStatus' "UPDATE_FAILED"

pattern UpdateInProgress :: OrganizationRuleStatus
pattern UpdateInProgress = OrganizationRuleStatus' "UPDATE_IN_PROGRESS"

pattern UpdateSuccessful :: OrganizationRuleStatus
pattern UpdateSuccessful = OrganizationRuleStatus' "UPDATE_SUCCESSFUL"

{-# COMPLETE
  CreateFailed,
  CreateInProgress,
  CreateSuccessful,
  DeleteFailed,
  DeleteInProgress,
  DeleteSuccessful,
  UpdateFailed,
  UpdateInProgress,
  UpdateSuccessful,
  OrganizationRuleStatus'
  #-}

instance FromText OrganizationRuleStatus where
  parser = (OrganizationRuleStatus' . mk) <$> takeText

instance ToText OrganizationRuleStatus where
  toText (OrganizationRuleStatus' ci) = original ci

instance Hashable OrganizationRuleStatus

instance NFData OrganizationRuleStatus

instance ToByteString OrganizationRuleStatus

instance ToQuery OrganizationRuleStatus

instance ToHeader OrganizationRuleStatus

instance FromJSON OrganizationRuleStatus where
  parseJSON = parseJSONText "OrganizationRuleStatus"
