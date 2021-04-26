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
-- Module      : Network.AWS.Glue.Types.JobRunState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.JobRunState
  ( JobRunState
      ( ..,
        JobRunStateFAILED,
        JobRunStateRUNNING,
        JobRunStateSTARTING,
        JobRunStateSTOPPED,
        JobRunStateSTOPPING,
        JobRunStateSUCCEEDED,
        JobRunStateTIMEOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype JobRunState = JobRunState'
  { fromJobRunState ::
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

pattern JobRunStateFAILED :: JobRunState
pattern JobRunStateFAILED = JobRunState' "FAILED"

pattern JobRunStateRUNNING :: JobRunState
pattern JobRunStateRUNNING = JobRunState' "RUNNING"

pattern JobRunStateSTARTING :: JobRunState
pattern JobRunStateSTARTING = JobRunState' "STARTING"

pattern JobRunStateSTOPPED :: JobRunState
pattern JobRunStateSTOPPED = JobRunState' "STOPPED"

pattern JobRunStateSTOPPING :: JobRunState
pattern JobRunStateSTOPPING = JobRunState' "STOPPING"

pattern JobRunStateSUCCEEDED :: JobRunState
pattern JobRunStateSUCCEEDED = JobRunState' "SUCCEEDED"

pattern JobRunStateTIMEOUT :: JobRunState
pattern JobRunStateTIMEOUT = JobRunState' "TIMEOUT"

{-# COMPLETE
  JobRunStateFAILED,
  JobRunStateRUNNING,
  JobRunStateSTARTING,
  JobRunStateSTOPPED,
  JobRunStateSTOPPING,
  JobRunStateSUCCEEDED,
  JobRunStateTIMEOUT,
  JobRunState'
  #-}

instance Prelude.FromText JobRunState where
  parser = JobRunState' Prelude.<$> Prelude.takeText

instance Prelude.ToText JobRunState where
  toText (JobRunState' x) = x

instance Prelude.Hashable JobRunState

instance Prelude.NFData JobRunState

instance Prelude.ToByteString JobRunState

instance Prelude.ToQuery JobRunState

instance Prelude.ToHeader JobRunState

instance Prelude.ToJSON JobRunState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON JobRunState where
  parseJSON = Prelude.parseJSONText "JobRunState"
