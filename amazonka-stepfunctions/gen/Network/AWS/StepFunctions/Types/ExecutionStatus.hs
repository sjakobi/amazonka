{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        ExecutionStatusABORTED,
        ExecutionStatusFAILED,
        ExecutionStatusRUNNING,
        ExecutionStatusSUCCEEDED,
        ExecutionStatusTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionStatus = ExecutionStatus'
  { fromExecutionStatus ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ExecutionStatusABORTED :: ExecutionStatus
pattern ExecutionStatusABORTED = ExecutionStatus' "ABORTED"

pattern ExecutionStatusFAILED :: ExecutionStatus
pattern ExecutionStatusFAILED = ExecutionStatus' "FAILED"

pattern ExecutionStatusRUNNING :: ExecutionStatus
pattern ExecutionStatusRUNNING = ExecutionStatus' "RUNNING"

pattern ExecutionStatusSUCCEEDED :: ExecutionStatus
pattern ExecutionStatusSUCCEEDED = ExecutionStatus' "SUCCEEDED"

pattern ExecutionStatusTIMEDOUT :: ExecutionStatus
pattern ExecutionStatusTIMEDOUT = ExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  ExecutionStatusABORTED,
  ExecutionStatusFAILED,
  ExecutionStatusRUNNING,
  ExecutionStatusSUCCEEDED,
  ExecutionStatusTIMEDOUT,
  ExecutionStatus'
  #-}

instance Prelude.FromText ExecutionStatus where
  parser = ExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutionStatus where
  toText (ExecutionStatus' x) = x

instance Prelude.Hashable ExecutionStatus

instance Prelude.NFData ExecutionStatus

instance Prelude.ToByteString ExecutionStatus

instance Prelude.ToQuery ExecutionStatus

instance Prelude.ToHeader ExecutionStatus

instance Prelude.ToJSON ExecutionStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExecutionStatus where
  parseJSON = Prelude.parseJSONText "ExecutionStatus"
