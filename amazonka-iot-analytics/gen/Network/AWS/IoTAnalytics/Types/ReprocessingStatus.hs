{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTAnalytics.Types.ReprocessingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.ReprocessingStatus
  ( ReprocessingStatus
      ( ..,
        RSCancelled,
        RSFailed,
        RSRunning,
        RSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReprocessingStatus
  = ReprocessingStatus'
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

pattern RSCancelled :: ReprocessingStatus
pattern RSCancelled = ReprocessingStatus' "CANCELLED"

pattern RSFailed :: ReprocessingStatus
pattern RSFailed = ReprocessingStatus' "FAILED"

pattern RSRunning :: ReprocessingStatus
pattern RSRunning = ReprocessingStatus' "RUNNING"

pattern RSSucceeded :: ReprocessingStatus
pattern RSSucceeded = ReprocessingStatus' "SUCCEEDED"

{-# COMPLETE
  RSCancelled,
  RSFailed,
  RSRunning,
  RSSucceeded,
  ReprocessingStatus'
  #-}

instance FromText ReprocessingStatus where
  parser = (ReprocessingStatus' . mk) <$> takeText

instance ToText ReprocessingStatus where
  toText (ReprocessingStatus' ci) = original ci

instance Hashable ReprocessingStatus

instance NFData ReprocessingStatus

instance ToByteString ReprocessingStatus

instance ToQuery ReprocessingStatus

instance ToHeader ReprocessingStatus

instance FromJSON ReprocessingStatus where
  parseJSON = parseJSONText "ReprocessingStatus"
