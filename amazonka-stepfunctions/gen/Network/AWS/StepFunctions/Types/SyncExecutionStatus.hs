{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.SyncExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.SyncExecutionStatus
  ( SyncExecutionStatus
      ( ..,
        SESFailed,
        SESSucceeded,
        SESTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SyncExecutionStatus
  = SyncExecutionStatus'
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

pattern SESFailed :: SyncExecutionStatus
pattern SESFailed = SyncExecutionStatus' "FAILED"

pattern SESSucceeded :: SyncExecutionStatus
pattern SESSucceeded = SyncExecutionStatus' "SUCCEEDED"

pattern SESTimedOut :: SyncExecutionStatus
pattern SESTimedOut = SyncExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  SESFailed,
  SESSucceeded,
  SESTimedOut,
  SyncExecutionStatus'
  #-}

instance FromText SyncExecutionStatus where
  parser = (SyncExecutionStatus' . mk) <$> takeText

instance ToText SyncExecutionStatus where
  toText (SyncExecutionStatus' ci) = original ci

instance Hashable SyncExecutionStatus

instance NFData SyncExecutionStatus

instance ToByteString SyncExecutionStatus

instance ToQuery SyncExecutionStatus

instance ToHeader SyncExecutionStatus

instance FromJSON SyncExecutionStatus where
  parseJSON = parseJSONText "SyncExecutionStatus"
