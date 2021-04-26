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
-- Module      : Network.AWS.Athena.Types.QueryExecutionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Athena.Types.QueryExecutionState
  ( QueryExecutionState
      ( ..,
        QueryExecutionStateCANCELLED,
        QueryExecutionStateFAILED,
        QueryExecutionStateQUEUED,
        QueryExecutionStateRUNNING,
        QueryExecutionStateSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QueryExecutionState = QueryExecutionState'
  { fromQueryExecutionState ::
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

pattern QueryExecutionStateCANCELLED :: QueryExecutionState
pattern QueryExecutionStateCANCELLED = QueryExecutionState' "CANCELLED"

pattern QueryExecutionStateFAILED :: QueryExecutionState
pattern QueryExecutionStateFAILED = QueryExecutionState' "FAILED"

pattern QueryExecutionStateQUEUED :: QueryExecutionState
pattern QueryExecutionStateQUEUED = QueryExecutionState' "QUEUED"

pattern QueryExecutionStateRUNNING :: QueryExecutionState
pattern QueryExecutionStateRUNNING = QueryExecutionState' "RUNNING"

pattern QueryExecutionStateSUCCEEDED :: QueryExecutionState
pattern QueryExecutionStateSUCCEEDED = QueryExecutionState' "SUCCEEDED"

{-# COMPLETE
  QueryExecutionStateCANCELLED,
  QueryExecutionStateFAILED,
  QueryExecutionStateQUEUED,
  QueryExecutionStateRUNNING,
  QueryExecutionStateSUCCEEDED,
  QueryExecutionState'
  #-}

instance Prelude.FromText QueryExecutionState where
  parser = QueryExecutionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText QueryExecutionState where
  toText (QueryExecutionState' x) = x

instance Prelude.Hashable QueryExecutionState

instance Prelude.NFData QueryExecutionState

instance Prelude.ToByteString QueryExecutionState

instance Prelude.ToQuery QueryExecutionState

instance Prelude.ToHeader QueryExecutionState

instance Prelude.FromJSON QueryExecutionState where
  parseJSON = Prelude.parseJSONText "QueryExecutionState"
