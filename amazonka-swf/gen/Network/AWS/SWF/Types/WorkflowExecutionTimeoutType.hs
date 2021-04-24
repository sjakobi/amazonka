{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.WorkflowExecutionTimeoutType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.WorkflowExecutionTimeoutType
  ( WorkflowExecutionTimeoutType
      ( ..,
        StartToClose
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WorkflowExecutionTimeoutType
  = WorkflowExecutionTimeoutType'
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

pattern StartToClose :: WorkflowExecutionTimeoutType
pattern StartToClose = WorkflowExecutionTimeoutType' "START_TO_CLOSE"

{-# COMPLETE
  StartToClose,
  WorkflowExecutionTimeoutType'
  #-}

instance FromText WorkflowExecutionTimeoutType where
  parser = (WorkflowExecutionTimeoutType' . mk) <$> takeText

instance ToText WorkflowExecutionTimeoutType where
  toText (WorkflowExecutionTimeoutType' ci) = original ci

instance Hashable WorkflowExecutionTimeoutType

instance NFData WorkflowExecutionTimeoutType

instance ToByteString WorkflowExecutionTimeoutType

instance ToQuery WorkflowExecutionTimeoutType

instance ToHeader WorkflowExecutionTimeoutType

instance FromJSON WorkflowExecutionTimeoutType where
  parseJSON = parseJSONText "WorkflowExecutionTimeoutType"
