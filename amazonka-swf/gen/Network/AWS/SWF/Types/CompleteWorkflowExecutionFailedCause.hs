{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CWEFCOperationNotPermitted,
        CWEFCUnhandledDecision
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CompleteWorkflowExecutionFailedCause
  = CompleteWorkflowExecutionFailedCause'
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

pattern CWEFCOperationNotPermitted :: CompleteWorkflowExecutionFailedCause
pattern CWEFCOperationNotPermitted = CompleteWorkflowExecutionFailedCause' "OPERATION_NOT_PERMITTED"

pattern CWEFCUnhandledDecision :: CompleteWorkflowExecutionFailedCause
pattern CWEFCUnhandledDecision = CompleteWorkflowExecutionFailedCause' "UNHANDLED_DECISION"

{-# COMPLETE
  CWEFCOperationNotPermitted,
  CWEFCUnhandledDecision,
  CompleteWorkflowExecutionFailedCause'
  #-}

instance FromText CompleteWorkflowExecutionFailedCause where
  parser = (CompleteWorkflowExecutionFailedCause' . mk) <$> takeText

instance ToText CompleteWorkflowExecutionFailedCause where
  toText (CompleteWorkflowExecutionFailedCause' ci) = original ci

instance Hashable CompleteWorkflowExecutionFailedCause

instance NFData CompleteWorkflowExecutionFailedCause

instance ToByteString CompleteWorkflowExecutionFailedCause

instance ToQuery CompleteWorkflowExecutionFailedCause

instance ToHeader CompleteWorkflowExecutionFailedCause

instance FromJSON CompleteWorkflowExecutionFailedCause where
  parseJSON = parseJSONText "CompleteWorkflowExecutionFailedCause"
