{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedCause
  ( RequestCancelExternalWorkflowExecutionFailedCause
      ( ..,
        RCEWEFCOperationNotPermitted,
        RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded,
        RCEWEFCUnknownExternalWorkflowExecution
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RequestCancelExternalWorkflowExecutionFailedCause
  = RequestCancelExternalWorkflowExecutionFailedCause'
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

pattern RCEWEFCOperationNotPermitted :: RequestCancelExternalWorkflowExecutionFailedCause
pattern RCEWEFCOperationNotPermitted = RequestCancelExternalWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded :: RequestCancelExternalWorkflowExecutionFailedCause
pattern RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded = RequestCancelExternalWorkflowExecutionFailedCause' "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED"

pattern RCEWEFCUnknownExternalWorkflowExecution :: RequestCancelExternalWorkflowExecutionFailedCause
pattern RCEWEFCUnknownExternalWorkflowExecution = RequestCancelExternalWorkflowExecutionFailedCause' "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION"

{-# COMPLETE
  RCEWEFCOperationNotPermitted,
  RCEWEFCRequestCancelExternalWorkflowExecutionRateExceeded,
  RCEWEFCUnknownExternalWorkflowExecution,
  RequestCancelExternalWorkflowExecutionFailedCause'
  #-}

instance FromText RequestCancelExternalWorkflowExecutionFailedCause where
  parser = (RequestCancelExternalWorkflowExecutionFailedCause' . mk) <$> takeText

instance ToText RequestCancelExternalWorkflowExecutionFailedCause where
  toText (RequestCancelExternalWorkflowExecutionFailedCause' ci) = original ci

instance Hashable RequestCancelExternalWorkflowExecutionFailedCause

instance NFData RequestCancelExternalWorkflowExecutionFailedCause

instance ToByteString RequestCancelExternalWorkflowExecutionFailedCause

instance ToQuery RequestCancelExternalWorkflowExecutionFailedCause

instance ToHeader RequestCancelExternalWorkflowExecutionFailedCause

instance FromJSON RequestCancelExternalWorkflowExecutionFailedCause where
  parseJSON = parseJSONText "RequestCancelExternalWorkflowExecutionFailedCause"
