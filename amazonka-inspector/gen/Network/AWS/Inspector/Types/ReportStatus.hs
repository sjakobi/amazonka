{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.ReportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.ReportStatus
  ( ReportStatus
      ( ..,
        RSCompleted,
        RSFailed,
        RSWorkInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReportStatus = ReportStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RSCompleted :: ReportStatus
pattern RSCompleted = ReportStatus' "COMPLETED"

pattern RSFailed :: ReportStatus
pattern RSFailed = ReportStatus' "FAILED"

pattern RSWorkInProgress :: ReportStatus
pattern RSWorkInProgress = ReportStatus' "WORK_IN_PROGRESS"

{-# COMPLETE
  RSCompleted,
  RSFailed,
  RSWorkInProgress,
  ReportStatus'
  #-}

instance FromText ReportStatus where
  parser = (ReportStatus' . mk) <$> takeText

instance ToText ReportStatus where
  toText (ReportStatus' ci) = original ci

instance Hashable ReportStatus

instance NFData ReportStatus

instance ToByteString ReportStatus

instance ToQuery ReportStatus

instance ToHeader ReportStatus

instance FromJSON ReportStatus where
  parseJSON = parseJSONText "ReportStatus"
