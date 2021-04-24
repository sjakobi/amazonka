{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedCause
  ( WorkflowExecutionCancelRequestedCause
      ( ..,
        WECRCChildPolicyApplied
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkflowExecutionCancelRequestedCause
  = WorkflowExecutionCancelRequestedCause'
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

pattern WECRCChildPolicyApplied :: WorkflowExecutionCancelRequestedCause
pattern WECRCChildPolicyApplied = WorkflowExecutionCancelRequestedCause' "CHILD_POLICY_APPLIED"

{-# COMPLETE
  WECRCChildPolicyApplied,
  WorkflowExecutionCancelRequestedCause'
  #-}

instance FromText WorkflowExecutionCancelRequestedCause where
  parser = (WorkflowExecutionCancelRequestedCause' . mk) <$> takeText

instance ToText WorkflowExecutionCancelRequestedCause where
  toText (WorkflowExecutionCancelRequestedCause' ci) = original ci

instance Hashable WorkflowExecutionCancelRequestedCause

instance NFData WorkflowExecutionCancelRequestedCause

instance ToByteString WorkflowExecutionCancelRequestedCause

instance ToQuery WorkflowExecutionCancelRequestedCause

instance ToHeader WorkflowExecutionCancelRequestedCause

instance FromJSON WorkflowExecutionCancelRequestedCause where
  parseJSON = parseJSONText "WorkflowExecutionCancelRequestedCause"
