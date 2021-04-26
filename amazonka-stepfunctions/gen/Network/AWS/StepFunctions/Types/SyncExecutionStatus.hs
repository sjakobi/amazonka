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
-- Module      : Network.AWS.StepFunctions.Types.SyncExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.SyncExecutionStatus
  ( SyncExecutionStatus
      ( ..,
        SyncExecutionStatusFAILED,
        SyncExecutionStatusSUCCEEDED,
        SyncExecutionStatusTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SyncExecutionStatus = SyncExecutionStatus'
  { fromSyncExecutionStatus ::
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

pattern SyncExecutionStatusFAILED :: SyncExecutionStatus
pattern SyncExecutionStatusFAILED = SyncExecutionStatus' "FAILED"

pattern SyncExecutionStatusSUCCEEDED :: SyncExecutionStatus
pattern SyncExecutionStatusSUCCEEDED = SyncExecutionStatus' "SUCCEEDED"

pattern SyncExecutionStatusTIMEDOUT :: SyncExecutionStatus
pattern SyncExecutionStatusTIMEDOUT = SyncExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  SyncExecutionStatusFAILED,
  SyncExecutionStatusSUCCEEDED,
  SyncExecutionStatusTIMEDOUT,
  SyncExecutionStatus'
  #-}

instance Prelude.FromText SyncExecutionStatus where
  parser = SyncExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SyncExecutionStatus where
  toText (SyncExecutionStatus' x) = x

instance Prelude.Hashable SyncExecutionStatus

instance Prelude.NFData SyncExecutionStatus

instance Prelude.ToByteString SyncExecutionStatus

instance Prelude.ToQuery SyncExecutionStatus

instance Prelude.ToHeader SyncExecutionStatus

instance Prelude.FromJSON SyncExecutionStatus where
  parseJSON = Prelude.parseJSONText "SyncExecutionStatus"
