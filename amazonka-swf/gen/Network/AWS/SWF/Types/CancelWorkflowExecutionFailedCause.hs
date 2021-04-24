{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        COperationNotPermitted,
        CUnhandledDecision
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CancelWorkflowExecutionFailedCause
  = CancelWorkflowExecutionFailedCause'
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

pattern COperationNotPermitted :: CancelWorkflowExecutionFailedCause
pattern COperationNotPermitted = CancelWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern CUnhandledDecision :: CancelWorkflowExecutionFailedCause
pattern CUnhandledDecision = CancelWorkflowExecutionFailedCause' "UNHANDLED_DECISION"

{-# COMPLETE
  COperationNotPermitted,
  CUnhandledDecision,
  CancelWorkflowExecutionFailedCause'
  #-}

instance FromText CancelWorkflowExecutionFailedCause where
  parser = (CancelWorkflowExecutionFailedCause' . mk) <$> takeText

instance ToText CancelWorkflowExecutionFailedCause where
  toText (CancelWorkflowExecutionFailedCause' ci) = original ci

instance Hashable CancelWorkflowExecutionFailedCause

instance NFData CancelWorkflowExecutionFailedCause

instance ToByteString CancelWorkflowExecutionFailedCause

instance ToQuery CancelWorkflowExecutionFailedCause

instance ToHeader CancelWorkflowExecutionFailedCause

instance FromJSON CancelWorkflowExecutionFailedCause where
  parseJSON = parseJSONText "CancelWorkflowExecutionFailedCause"
