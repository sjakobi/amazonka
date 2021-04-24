{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.ExecutionResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ExecutionResult
  ( ExecutionResult
      ( ..,
        Errored,
        Failed,
        Passed,
        Pending,
        Skipped,
        Stopped,
        Warned
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ExecutionResult = ExecutionResult' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Errored :: ExecutionResult
pattern Errored = ExecutionResult' "ERRORED"

pattern Failed :: ExecutionResult
pattern Failed = ExecutionResult' "FAILED"

pattern Passed :: ExecutionResult
pattern Passed = ExecutionResult' "PASSED"

pattern Pending :: ExecutionResult
pattern Pending = ExecutionResult' "PENDING"

pattern Skipped :: ExecutionResult
pattern Skipped = ExecutionResult' "SKIPPED"

pattern Stopped :: ExecutionResult
pattern Stopped = ExecutionResult' "STOPPED"

pattern Warned :: ExecutionResult
pattern Warned = ExecutionResult' "WARNED"

{-# COMPLETE
  Errored,
  Failed,
  Passed,
  Pending,
  Skipped,
  Stopped,
  Warned,
  ExecutionResult'
  #-}

instance FromText ExecutionResult where
  parser = (ExecutionResult' . mk) <$> takeText

instance ToText ExecutionResult where
  toText (ExecutionResult' ci) = original ci

instance Hashable ExecutionResult

instance NFData ExecutionResult

instance ToByteString ExecutionResult

instance ToQuery ExecutionResult

instance ToHeader ExecutionResult

instance FromJSON ExecutionResult where
  parseJSON = parseJSONText "ExecutionResult"
