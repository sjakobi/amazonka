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
-- Module      : Network.AWS.SWF.Types.CancelWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.CancelWorkflowExecutionFailedCause
  ( CancelWorkflowExecutionFailedCause
      ( ..,
        CancelWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
        CancelWorkflowExecutionFailedCauseUNHANDLEDDECISION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CancelWorkflowExecutionFailedCause = CancelWorkflowExecutionFailedCause'
  { fromCancelWorkflowExecutionFailedCause ::
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

pattern CancelWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED :: CancelWorkflowExecutionFailedCause
pattern CancelWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED = CancelWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern CancelWorkflowExecutionFailedCauseUNHANDLEDDECISION :: CancelWorkflowExecutionFailedCause
pattern CancelWorkflowExecutionFailedCauseUNHANDLEDDECISION = CancelWorkflowExecutionFailedCause' "UNHANDLED_DECISION"

{-# COMPLETE
  CancelWorkflowExecutionFailedCauseOPERATIONNOTPERMITTED,
  CancelWorkflowExecutionFailedCauseUNHANDLEDDECISION,
  CancelWorkflowExecutionFailedCause'
  #-}

instance Prelude.FromText CancelWorkflowExecutionFailedCause where
  parser = CancelWorkflowExecutionFailedCause' Prelude.<$> Prelude.takeText

instance Prelude.ToText CancelWorkflowExecutionFailedCause where
  toText (CancelWorkflowExecutionFailedCause' x) = x

instance Prelude.Hashable CancelWorkflowExecutionFailedCause

instance Prelude.NFData CancelWorkflowExecutionFailedCause

instance Prelude.ToByteString CancelWorkflowExecutionFailedCause

instance Prelude.ToQuery CancelWorkflowExecutionFailedCause

instance Prelude.ToHeader CancelWorkflowExecutionFailedCause

instance Prelude.FromJSON CancelWorkflowExecutionFailedCause where
  parseJSON = Prelude.parseJSONText "CancelWorkflowExecutionFailedCause"
