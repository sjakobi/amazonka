{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.OrganizationResourceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationResourceStatus
  ( OrganizationResourceStatus
      ( ..,
        ORSCreateFailed,
        ORSCreateInProgress,
        ORSCreateSuccessful,
        ORSDeleteFailed,
        ORSDeleteInProgress,
        ORSDeleteSuccessful,
        ORSUpdateFailed,
        ORSUpdateInProgress,
        ORSUpdateSuccessful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OrganizationResourceStatus
  = OrganizationResourceStatus'
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

pattern ORSCreateFailed :: OrganizationResourceStatus
pattern ORSCreateFailed = OrganizationResourceStatus' "CREATE_FAILED"

pattern ORSCreateInProgress :: OrganizationResourceStatus
pattern ORSCreateInProgress = OrganizationResourceStatus' "CREATE_IN_PROGRESS"

pattern ORSCreateSuccessful :: OrganizationResourceStatus
pattern ORSCreateSuccessful = OrganizationResourceStatus' "CREATE_SUCCESSFUL"

pattern ORSDeleteFailed :: OrganizationResourceStatus
pattern ORSDeleteFailed = OrganizationResourceStatus' "DELETE_FAILED"

pattern ORSDeleteInProgress :: OrganizationResourceStatus
pattern ORSDeleteInProgress = OrganizationResourceStatus' "DELETE_IN_PROGRESS"

pattern ORSDeleteSuccessful :: OrganizationResourceStatus
pattern ORSDeleteSuccessful = OrganizationResourceStatus' "DELETE_SUCCESSFUL"

pattern ORSUpdateFailed :: OrganizationResourceStatus
pattern ORSUpdateFailed = OrganizationResourceStatus' "UPDATE_FAILED"

pattern ORSUpdateInProgress :: OrganizationResourceStatus
pattern ORSUpdateInProgress = OrganizationResourceStatus' "UPDATE_IN_PROGRESS"

pattern ORSUpdateSuccessful :: OrganizationResourceStatus
pattern ORSUpdateSuccessful = OrganizationResourceStatus' "UPDATE_SUCCESSFUL"

{-# COMPLETE
  ORSCreateFailed,
  ORSCreateInProgress,
  ORSCreateSuccessful,
  ORSDeleteFailed,
  ORSDeleteInProgress,
  ORSDeleteSuccessful,
  ORSUpdateFailed,
  ORSUpdateInProgress,
  ORSUpdateSuccessful,
  OrganizationResourceStatus'
  #-}

instance FromText OrganizationResourceStatus where
  parser = (OrganizationResourceStatus' . mk) <$> takeText

instance ToText OrganizationResourceStatus where
  toText (OrganizationResourceStatus' ci) = original ci

instance Hashable OrganizationResourceStatus

instance NFData OrganizationResourceStatus

instance ToByteString OrganizationResourceStatus

instance ToQuery OrganizationResourceStatus

instance ToHeader OrganizationResourceStatus

instance FromJSON OrganizationResourceStatus where
  parseJSON = parseJSONText "OrganizationResourceStatus"
