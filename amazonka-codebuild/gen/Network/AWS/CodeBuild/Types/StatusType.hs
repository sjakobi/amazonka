{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.StatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.StatusType
  ( StatusType
      ( ..,
        Failed,
        Fault,
        InProgress,
        Stopped,
        Succeeded,
        TimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StatusType = StatusType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Failed :: StatusType
pattern Failed = StatusType' "FAILED"

pattern Fault :: StatusType
pattern Fault = StatusType' "FAULT"

pattern InProgress :: StatusType
pattern InProgress = StatusType' "IN_PROGRESS"

pattern Stopped :: StatusType
pattern Stopped = StatusType' "STOPPED"

pattern Succeeded :: StatusType
pattern Succeeded = StatusType' "SUCCEEDED"

pattern TimedOut :: StatusType
pattern TimedOut = StatusType' "TIMED_OUT"

{-# COMPLETE
  Failed,
  Fault,
  InProgress,
  Stopped,
  Succeeded,
  TimedOut,
  StatusType'
  #-}

instance FromText StatusType where
  parser = (StatusType' . mk) <$> takeText

instance ToText StatusType where
  toText (StatusType' ci) = original ci

instance Hashable StatusType

instance NFData StatusType

instance ToByteString StatusType

instance ToQuery StatusType

instance ToHeader StatusType

instance ToJSON StatusType where
  toJSON = toJSONText

instance FromJSON StatusType where
  parseJSON = parseJSONText "StatusType"
