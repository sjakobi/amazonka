{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.StepState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.StepState
  ( StepState
      ( ..,
        CancelPending,
        Cancelled,
        Completed,
        Failed,
        Interrupted,
        Pending,
        Running
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StepState = StepState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CancelPending :: StepState
pattern CancelPending = StepState' "CANCEL_PENDING"

pattern Cancelled :: StepState
pattern Cancelled = StepState' "CANCELLED"

pattern Completed :: StepState
pattern Completed = StepState' "COMPLETED"

pattern Failed :: StepState
pattern Failed = StepState' "FAILED"

pattern Interrupted :: StepState
pattern Interrupted = StepState' "INTERRUPTED"

pattern Pending :: StepState
pattern Pending = StepState' "PENDING"

pattern Running :: StepState
pattern Running = StepState' "RUNNING"

{-# COMPLETE
  CancelPending,
  Cancelled,
  Completed,
  Failed,
  Interrupted,
  Pending,
  Running,
  StepState'
  #-}

instance FromText StepState where
  parser = (StepState' . mk) <$> takeText

instance ToText StepState where
  toText (StepState' ci) = original ci

instance Hashable StepState

instance NFData StepState

instance ToByteString StepState

instance ToQuery StepState

instance ToHeader StepState

instance ToJSON StepState where
  toJSON = toJSONText

instance FromJSON StepState where
  parseJSON = parseJSONText "StepState"
