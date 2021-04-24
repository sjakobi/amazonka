{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.MemberAccountRuleStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.MemberAccountRuleStatus
  ( MemberAccountRuleStatus
      ( ..,
        MARSCreateFailed,
        MARSCreateInProgress,
        MARSCreateSuccessful,
        MARSDeleteFailed,
        MARSDeleteInProgress,
        MARSDeleteSuccessful,
        MARSUpdateFailed,
        MARSUpdateInProgress,
        MARSUpdateSuccessful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MemberAccountRuleStatus
  = MemberAccountRuleStatus'
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

pattern MARSCreateFailed :: MemberAccountRuleStatus
pattern MARSCreateFailed = MemberAccountRuleStatus' "CREATE_FAILED"

pattern MARSCreateInProgress :: MemberAccountRuleStatus
pattern MARSCreateInProgress = MemberAccountRuleStatus' "CREATE_IN_PROGRESS"

pattern MARSCreateSuccessful :: MemberAccountRuleStatus
pattern MARSCreateSuccessful = MemberAccountRuleStatus' "CREATE_SUCCESSFUL"

pattern MARSDeleteFailed :: MemberAccountRuleStatus
pattern MARSDeleteFailed = MemberAccountRuleStatus' "DELETE_FAILED"

pattern MARSDeleteInProgress :: MemberAccountRuleStatus
pattern MARSDeleteInProgress = MemberAccountRuleStatus' "DELETE_IN_PROGRESS"

pattern MARSDeleteSuccessful :: MemberAccountRuleStatus
pattern MARSDeleteSuccessful = MemberAccountRuleStatus' "DELETE_SUCCESSFUL"

pattern MARSUpdateFailed :: MemberAccountRuleStatus
pattern MARSUpdateFailed = MemberAccountRuleStatus' "UPDATE_FAILED"

pattern MARSUpdateInProgress :: MemberAccountRuleStatus
pattern MARSUpdateInProgress = MemberAccountRuleStatus' "UPDATE_IN_PROGRESS"

pattern MARSUpdateSuccessful :: MemberAccountRuleStatus
pattern MARSUpdateSuccessful = MemberAccountRuleStatus' "UPDATE_SUCCESSFUL"

{-# COMPLETE
  MARSCreateFailed,
  MARSCreateInProgress,
  MARSCreateSuccessful,
  MARSDeleteFailed,
  MARSDeleteInProgress,
  MARSDeleteSuccessful,
  MARSUpdateFailed,
  MARSUpdateInProgress,
  MARSUpdateSuccessful,
  MemberAccountRuleStatus'
  #-}

instance FromText MemberAccountRuleStatus where
  parser = (MemberAccountRuleStatus' . mk) <$> takeText

instance ToText MemberAccountRuleStatus where
  toText (MemberAccountRuleStatus' ci) = original ci

instance Hashable MemberAccountRuleStatus

instance NFData MemberAccountRuleStatus

instance ToByteString MemberAccountRuleStatus

instance ToQuery MemberAccountRuleStatus

instance ToHeader MemberAccountRuleStatus

instance ToJSON MemberAccountRuleStatus where
  toJSON = toJSONText

instance FromJSON MemberAccountRuleStatus where
  parseJSON = parseJSONText "MemberAccountRuleStatus"
