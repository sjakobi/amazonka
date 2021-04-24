{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types.ContinuousExportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ContinuousExportStatus
  ( ContinuousExportStatus
      ( ..,
        Active,
        Error',
        Inactive,
        StartFailed,
        StartInProgress,
        StopFailed,
        StopInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContinuousExportStatus
  = ContinuousExportStatus'
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

pattern Active :: ContinuousExportStatus
pattern Active = ContinuousExportStatus' "ACTIVE"

pattern Error' :: ContinuousExportStatus
pattern Error' = ContinuousExportStatus' "ERROR"

pattern Inactive :: ContinuousExportStatus
pattern Inactive = ContinuousExportStatus' "INACTIVE"

pattern StartFailed :: ContinuousExportStatus
pattern StartFailed = ContinuousExportStatus' "START_FAILED"

pattern StartInProgress :: ContinuousExportStatus
pattern StartInProgress = ContinuousExportStatus' "START_IN_PROGRESS"

pattern StopFailed :: ContinuousExportStatus
pattern StopFailed = ContinuousExportStatus' "STOP_FAILED"

pattern StopInProgress :: ContinuousExportStatus
pattern StopInProgress = ContinuousExportStatus' "STOP_IN_PROGRESS"

{-# COMPLETE
  Active,
  Error',
  Inactive,
  StartFailed,
  StartInProgress,
  StopFailed,
  StopInProgress,
  ContinuousExportStatus'
  #-}

instance FromText ContinuousExportStatus where
  parser = (ContinuousExportStatus' . mk) <$> takeText

instance ToText ContinuousExportStatus where
  toText (ContinuousExportStatus' ci) = original ci

instance Hashable ContinuousExportStatus

instance NFData ContinuousExportStatus

instance ToByteString ContinuousExportStatus

instance ToQuery ContinuousExportStatus

instance ToHeader ContinuousExportStatus

instance FromJSON ContinuousExportStatus where
  parseJSON = parseJSONText "ContinuousExportStatus"
