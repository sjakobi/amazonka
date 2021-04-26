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
-- Module      : Network.AWS.EMR.Types.StepState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.StepState
  ( StepState
      ( ..,
        StepStateCANCELLED,
        StepStateCANCELPENDING,
        StepStateCOMPLETED,
        StepStateFAILED,
        StepStateINTERRUPTED,
        StepStatePENDING,
        StepStateRUNNING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StepState = StepState'
  { fromStepState ::
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

pattern StepStateCANCELLED :: StepState
pattern StepStateCANCELLED = StepState' "CANCELLED"

pattern StepStateCANCELPENDING :: StepState
pattern StepStateCANCELPENDING = StepState' "CANCEL_PENDING"

pattern StepStateCOMPLETED :: StepState
pattern StepStateCOMPLETED = StepState' "COMPLETED"

pattern StepStateFAILED :: StepState
pattern StepStateFAILED = StepState' "FAILED"

pattern StepStateINTERRUPTED :: StepState
pattern StepStateINTERRUPTED = StepState' "INTERRUPTED"

pattern StepStatePENDING :: StepState
pattern StepStatePENDING = StepState' "PENDING"

pattern StepStateRUNNING :: StepState
pattern StepStateRUNNING = StepState' "RUNNING"

{-# COMPLETE
  StepStateCANCELLED,
  StepStateCANCELPENDING,
  StepStateCOMPLETED,
  StepStateFAILED,
  StepStateINTERRUPTED,
  StepStatePENDING,
  StepStateRUNNING,
  StepState'
  #-}

instance Prelude.FromText StepState where
  parser = StepState' Prelude.<$> Prelude.takeText

instance Prelude.ToText StepState where
  toText (StepState' x) = x

instance Prelude.Hashable StepState

instance Prelude.NFData StepState

instance Prelude.ToByteString StepState

instance Prelude.ToQuery StepState

instance Prelude.ToHeader StepState

instance Prelude.ToJSON StepState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StepState where
  parseJSON = Prelude.parseJSONText "StepState"
