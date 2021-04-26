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
-- Module      : Network.AWS.SWF.Types.FailWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.FailWorkflowExecutionFailedCause
  ( FailWorkflowExecutionFailedCause
      ( ..,
        FailWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
        FailWorkflowExecutionFailedCauseUNHANDLEDDECISION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FailWorkflowExecutionFailedCause = FailWorkflowExecutionFailedCause'
  { fromFailWorkflowExecutionFailedCause ::
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

pattern FailWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED :: FailWorkflowExecutionFailedCause
pattern FailWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED = FailWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern FailWorkflowExecutionFailedCauseUNHANDLEDDECISION :: FailWorkflowExecutionFailedCause
pattern FailWorkflowExecutionFailedCauseUNHANDLEDDECISION = FailWorkflowExecutionFailedCause' "UNHANDLED_DECISION"

{-# COMPLETE
  FailWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
  FailWorkflowExecutionFailedCauseUNHANDLEDDECISION,
  FailWorkflowExecutionFailedCause'
  #-}

instance Prelude.FromText FailWorkflowExecutionFailedCause where
  parser = FailWorkflowExecutionFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText FailWorkflowExecutionFailedCause where
  toText (FailWorkflowExecutionFailedCause' x) = x

instance Prelude.Hashable FailWorkflowExecutionFailedCause

instance Prelude.NFData FailWorkflowExecutionFailedCause

instance Prelude.ToByteString FailWorkflowExecutionFailedCause

instance Prelude.ToQuery FailWorkflowExecutionFailedCause

instance Prelude.ToHeader FailWorkflowExecutionFailedCause

instance Prelude.FromJSON FailWorkflowExecutionFailedCause where
  parseJSON = Prelude.parseJSONText "FailWorkflowExecutionFailedCause"
