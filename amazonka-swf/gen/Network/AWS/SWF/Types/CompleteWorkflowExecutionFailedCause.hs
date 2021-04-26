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
-- Module      : Network.AWS.SWF.Types.CompleteWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.CompleteWorkflowExecutionFailedCause
  ( CompleteWorkflowExecutionFailedCause
      ( ..,
        CompleteWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
        CompleteWorkflowExecutionFailedCauseUNHANDLEDDECISION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CompleteWorkflowExecutionFailedCause = CompleteWorkflowExecutionFailedCause'
  { fromCompleteWorkflowExecutionFailedCause ::
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

pattern CompleteWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED :: CompleteWorkflowExecutionFailedCause
pattern CompleteWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED = CompleteWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern CompleteWorkflowExecutionFailedCauseUNHANDLEDDECISION :: CompleteWorkflowExecutionFailedCause
pattern CompleteWorkflowExecutionFailedCauseUNHANDLEDDECISION = CompleteWorkflowExecutionFailedCause' "UNHANDLED_DECISION"

{-# COMPLETE
  CompleteWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
  CompleteWorkflowExecutionFailedCauseUNHANDLEDDECISION,
  CompleteWorkflowExecutionFailedCause'
  #-}

instance Prelude.FromText CompleteWorkflowExecutionFailedCause where
  parser = CompleteWorkflowExecutionFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText CompleteWorkflowExecutionFailedCause where
  toText (CompleteWorkflowExecutionFailedCause' x) = x

instance Prelude.Hashable CompleteWorkflowExecutionFailedCause

instance Prelude.NFData CompleteWorkflowExecutionFailedCause

instance Prelude.ToByteString CompleteWorkflowExecutionFailedCause

instance Prelude.ToQuery CompleteWorkflowExecutionFailedCause

instance Prelude.ToHeader CompleteWorkflowExecutionFailedCause

instance Prelude.FromJSON CompleteWorkflowExecutionFailedCause where
  parseJSON = Prelude.parseJSONText "CompleteWorkflowExecutionFailedCause"
