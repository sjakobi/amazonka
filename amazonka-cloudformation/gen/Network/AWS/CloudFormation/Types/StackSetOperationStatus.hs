{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.StackSetOperationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetOperationStatus
  ( StackSetOperationStatus
      ( ..,
        SSOSFailed,
        SSOSQueued,
        SSOSRunning,
        SSOSStopped,
        SSOSStopping,
        SSOSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StackSetOperationStatus
  = StackSetOperationStatus'
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

pattern SSOSFailed :: StackSetOperationStatus
pattern SSOSFailed = StackSetOperationStatus' "FAILED"

pattern SSOSQueued :: StackSetOperationStatus
pattern SSOSQueued = StackSetOperationStatus' "QUEUED"

pattern SSOSRunning :: StackSetOperationStatus
pattern SSOSRunning = StackSetOperationStatus' "RUNNING"

pattern SSOSStopped :: StackSetOperationStatus
pattern SSOSStopped = StackSetOperationStatus' "STOPPED"

pattern SSOSStopping :: StackSetOperationStatus
pattern SSOSStopping = StackSetOperationStatus' "STOPPING"

pattern SSOSSucceeded :: StackSetOperationStatus
pattern SSOSSucceeded = StackSetOperationStatus' "SUCCEEDED"

{-# COMPLETE
  SSOSFailed,
  SSOSQueued,
  SSOSRunning,
  SSOSStopped,
  SSOSStopping,
  SSOSSucceeded,
  StackSetOperationStatus'
  #-}

instance FromText StackSetOperationStatus where
  parser = (StackSetOperationStatus' . mk) <$> takeText

instance ToText StackSetOperationStatus where
  toText (StackSetOperationStatus' ci) = original ci

instance Hashable StackSetOperationStatus

instance NFData StackSetOperationStatus

instance ToByteString StackSetOperationStatus

instance ToQuery StackSetOperationStatus

instance ToHeader StackSetOperationStatus

instance FromXML StackSetOperationStatus where
  parseXML = parseXMLText "StackSetOperationStatus"
