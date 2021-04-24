{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationResultStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetOperationResultStatus
  ( StackSetOperationResultStatus
      ( ..,
        SSORSCancelled,
        SSORSFailed,
        SSORSPending,
        SSORSRunning,
        SSORSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackSetOperationResultStatus
  = StackSetOperationResultStatus'
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

pattern SSORSCancelled :: StackSetOperationResultStatus
pattern SSORSCancelled = StackSetOperationResultStatus' "CANCELLED"

pattern SSORSFailed :: StackSetOperationResultStatus
pattern SSORSFailed = StackSetOperationResultStatus' "FAILED"

pattern SSORSPending :: StackSetOperationResultStatus
pattern SSORSPending = StackSetOperationResultStatus' "PENDING"

pattern SSORSRunning :: StackSetOperationResultStatus
pattern SSORSRunning = StackSetOperationResultStatus' "RUNNING"

pattern SSORSSucceeded :: StackSetOperationResultStatus
pattern SSORSSucceeded = StackSetOperationResultStatus' "SUCCEEDED"

{-# COMPLETE
  SSORSCancelled,
  SSORSFailed,
  SSORSPending,
  SSORSRunning,
  SSORSSucceeded,
  StackSetOperationResultStatus'
  #-}

instance FromText StackSetOperationResultStatus where
  parser = (StackSetOperationResultStatus' . mk) <$> takeText

instance ToText StackSetOperationResultStatus where
  toText (StackSetOperationResultStatus' ci) = original ci

instance Hashable StackSetOperationResultStatus

instance NFData StackSetOperationResultStatus

instance ToByteString StackSetOperationResultStatus

instance ToQuery StackSetOperationResultStatus

instance ToHeader StackSetOperationResultStatus

instance FromXML StackSetOperationResultStatus where
  parseXML = parseXMLText "StackSetOperationResultStatus"
