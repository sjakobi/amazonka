{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.OrganizationResourceDetailedStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.OrganizationResourceDetailedStatus
  ( OrganizationResourceDetailedStatus
      ( ..,
        ORDSCreateFailed,
        ORDSCreateInProgress,
        ORDSCreateSuccessful,
        ORDSDeleteFailed,
        ORDSDeleteInProgress,
        ORDSDeleteSuccessful,
        ORDSUpdateFailed,
        ORDSUpdateInProgress,
        ORDSUpdateSuccessful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OrganizationResourceDetailedStatus
  = OrganizationResourceDetailedStatus'
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

pattern ORDSCreateFailed :: OrganizationResourceDetailedStatus
pattern ORDSCreateFailed = OrganizationResourceDetailedStatus' "CREATE_FAILED"

pattern ORDSCreateInProgress :: OrganizationResourceDetailedStatus
pattern ORDSCreateInProgress = OrganizationResourceDetailedStatus' "CREATE_IN_PROGRESS"

pattern ORDSCreateSuccessful :: OrganizationResourceDetailedStatus
pattern ORDSCreateSuccessful = OrganizationResourceDetailedStatus' "CREATE_SUCCESSFUL"

pattern ORDSDeleteFailed :: OrganizationResourceDetailedStatus
pattern ORDSDeleteFailed = OrganizationResourceDetailedStatus' "DELETE_FAILED"

pattern ORDSDeleteInProgress :: OrganizationResourceDetailedStatus
pattern ORDSDeleteInProgress = OrganizationResourceDetailedStatus' "DELETE_IN_PROGRESS"

pattern ORDSDeleteSuccessful :: OrganizationResourceDetailedStatus
pattern ORDSDeleteSuccessful = OrganizationResourceDetailedStatus' "DELETE_SUCCESSFUL"

pattern ORDSUpdateFailed :: OrganizationResourceDetailedStatus
pattern ORDSUpdateFailed = OrganizationResourceDetailedStatus' "UPDATE_FAILED"

pattern ORDSUpdateInProgress :: OrganizationResourceDetailedStatus
pattern ORDSUpdateInProgress = OrganizationResourceDetailedStatus' "UPDATE_IN_PROGRESS"

pattern ORDSUpdateSuccessful :: OrganizationResourceDetailedStatus
pattern ORDSUpdateSuccessful = OrganizationResourceDetailedStatus' "UPDATE_SUCCESSFUL"

{-# COMPLETE
  ORDSCreateFailed,
  ORDSCreateInProgress,
  ORDSCreateSuccessful,
  ORDSDeleteFailed,
  ORDSDeleteInProgress,
  ORDSDeleteSuccessful,
  ORDSUpdateFailed,
  ORDSUpdateInProgress,
  ORDSUpdateSuccessful,
  OrganizationResourceDetailedStatus'
  #-}

instance FromText OrganizationResourceDetailedStatus where
  parser = (OrganizationResourceDetailedStatus' . mk) <$> takeText

instance ToText OrganizationResourceDetailedStatus where
  toText (OrganizationResourceDetailedStatus' ci) = original ci

instance Hashable OrganizationResourceDetailedStatus

instance NFData OrganizationResourceDetailedStatus

instance ToByteString OrganizationResourceDetailedStatus

instance ToQuery OrganizationResourceDetailedStatus

instance ToHeader OrganizationResourceDetailedStatus

instance ToJSON OrganizationResourceDetailedStatus where
  toJSON = toJSONText

instance FromJSON OrganizationResourceDetailedStatus where
  parseJSON = parseJSONText "OrganizationResourceDetailedStatus"
