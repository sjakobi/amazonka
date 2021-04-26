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
-- Module      : Network.AWS.Config.Types.RemediationExecutionStepState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RemediationExecutionStepState
  ( RemediationExecutionStepState
      ( ..,
        RemediationExecutionStepStateFAILED,
        RemediationExecutionStepStatePENDING,
        RemediationExecutionStepStateSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RemediationExecutionStepState = RemediationExecutionStepState'
  { fromRemediationExecutionStepState ::
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

pattern RemediationExecutionStepStateFAILED :: RemediationExecutionStepState
pattern RemediationExecutionStepStateFAILED = RemediationExecutionStepState' "FAILED"

pattern RemediationExecutionStepStatePENDING :: RemediationExecutionStepState
pattern RemediationExecutionStepStatePENDING = RemediationExecutionStepState' "PENDING"

pattern RemediationExecutionStepStateSUCCEEDED :: RemediationExecutionStepState
pattern RemediationExecutionStepStateSUCCEEDED = RemediationExecutionStepState' "SUCCEEDED"

{-# COMPLETE
  RemediationExecutionStepStateFAILED,
  RemediationExecutionStepStatePENDING,
  RemediationExecutionStepStateSUCCEEDED,
  RemediationExecutionStepState'
  #-}

instance Prelude.FromText RemediationExecutionStepState where
  parser = RemediationExecutionStepState' Prelude.<$> Prelude.takeText

instance Prelude.ToText RemediationExecutionStepState where
  toText (RemediationExecutionStepState' x) = x

instance Prelude.Hashable RemediationExecutionStepState

instance Prelude.NFData RemediationExecutionStepState

instance Prelude.ToByteString RemediationExecutionStepState

instance Prelude.ToQuery RemediationExecutionStepState

instance Prelude.ToHeader RemediationExecutionStepState

instance Prelude.FromJSON RemediationExecutionStepState where
  parseJSON = Prelude.parseJSONText "RemediationExecutionStepState"
