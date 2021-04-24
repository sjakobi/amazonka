{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.CommandInvocationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandInvocationStatus
  ( CommandInvocationStatus
      ( ..,
        CISCancelled,
        CISCancelling,
        CISDelayed,
        CISFailed,
        CISInProgress,
        CISPending,
        CISSuccess,
        CISTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CommandInvocationStatus
  = CommandInvocationStatus'
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

pattern CISCancelled :: CommandInvocationStatus
pattern CISCancelled = CommandInvocationStatus' "Cancelled"

pattern CISCancelling :: CommandInvocationStatus
pattern CISCancelling = CommandInvocationStatus' "Cancelling"

pattern CISDelayed :: CommandInvocationStatus
pattern CISDelayed = CommandInvocationStatus' "Delayed"

pattern CISFailed :: CommandInvocationStatus
pattern CISFailed = CommandInvocationStatus' "Failed"

pattern CISInProgress :: CommandInvocationStatus
pattern CISInProgress = CommandInvocationStatus' "InProgress"

pattern CISPending :: CommandInvocationStatus
pattern CISPending = CommandInvocationStatus' "Pending"

pattern CISSuccess :: CommandInvocationStatus
pattern CISSuccess = CommandInvocationStatus' "Success"

pattern CISTimedOut :: CommandInvocationStatus
pattern CISTimedOut = CommandInvocationStatus' "TimedOut"

{-# COMPLETE
  CISCancelled,
  CISCancelling,
  CISDelayed,
  CISFailed,
  CISInProgress,
  CISPending,
  CISSuccess,
  CISTimedOut,
  CommandInvocationStatus'
  #-}

instance FromText CommandInvocationStatus where
  parser = (CommandInvocationStatus' . mk) <$> takeText

instance ToText CommandInvocationStatus where
  toText (CommandInvocationStatus' ci) = original ci

instance Hashable CommandInvocationStatus

instance NFData CommandInvocationStatus

instance ToByteString CommandInvocationStatus

instance ToQuery CommandInvocationStatus

instance ToHeader CommandInvocationStatus

instance FromJSON CommandInvocationStatus where
  parseJSON = parseJSONText "CommandInvocationStatus"
