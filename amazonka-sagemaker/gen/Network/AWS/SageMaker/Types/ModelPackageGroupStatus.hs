{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackageGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageGroupStatus
  ( ModelPackageGroupStatus
      ( ..,
        MPGSCompleted,
        MPGSDeleteFailed,
        MPGSDeleting,
        MPGSFailed,
        MPGSInProgress,
        MPGSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelPackageGroupStatus
  = ModelPackageGroupStatus'
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

pattern MPGSCompleted :: ModelPackageGroupStatus
pattern MPGSCompleted = ModelPackageGroupStatus' "Completed"

pattern MPGSDeleteFailed :: ModelPackageGroupStatus
pattern MPGSDeleteFailed = ModelPackageGroupStatus' "DeleteFailed"

pattern MPGSDeleting :: ModelPackageGroupStatus
pattern MPGSDeleting = ModelPackageGroupStatus' "Deleting"

pattern MPGSFailed :: ModelPackageGroupStatus
pattern MPGSFailed = ModelPackageGroupStatus' "Failed"

pattern MPGSInProgress :: ModelPackageGroupStatus
pattern MPGSInProgress = ModelPackageGroupStatus' "InProgress"

pattern MPGSPending :: ModelPackageGroupStatus
pattern MPGSPending = ModelPackageGroupStatus' "Pending"

{-# COMPLETE
  MPGSCompleted,
  MPGSDeleteFailed,
  MPGSDeleting,
  MPGSFailed,
  MPGSInProgress,
  MPGSPending,
  ModelPackageGroupStatus'
  #-}

instance FromText ModelPackageGroupStatus where
  parser = (ModelPackageGroupStatus' . mk) <$> takeText

instance ToText ModelPackageGroupStatus where
  toText (ModelPackageGroupStatus' ci) = original ci

instance Hashable ModelPackageGroupStatus

instance NFData ModelPackageGroupStatus

instance ToByteString ModelPackageGroupStatus

instance ToQuery ModelPackageGroupStatus

instance ToHeader ModelPackageGroupStatus

instance FromJSON ModelPackageGroupStatus where
  parseJSON = parseJSONText "ModelPackageGroupStatus"
