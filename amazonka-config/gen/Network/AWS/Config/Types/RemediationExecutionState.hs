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
-- Module      : Network.AWS.Config.Types.RemediationExecutionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RemediationExecutionState
  ( RemediationExecutionState
      ( ..,
        RemediationExecutionStateFAILED,
        RemediationExecutionStateINPROGRESS,
        RemediationExecutionStateQUEUED,
        RemediationExecutionStateSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RemediationExecutionState = RemediationExecutionState'
  { fromRemediationExecutionState ::
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

pattern RemediationExecutionStateFAILED :: RemediationExecutionState
pattern RemediationExecutionStateFAILED = RemediationExecutionState' "FAILED"

pattern RemediationExecutionStateINPROGRESS :: RemediationExecutionState
pattern RemediationExecutionStateINPROGRESS = RemediationExecutionState' "IN_PROGRESS"

pattern RemediationExecutionStateQUEUED :: RemediationExecutionState
pattern RemediationExecutionStateQUEUED = RemediationExecutionState' "QUEUED"

pattern RemediationExecutionStateSUCCEEDED :: RemediationExecutionState
pattern RemediationExecutionStateSUCCEEDED = RemediationExecutionState' "SUCCEEDED"

{-# COMPLETE
  RemediationExecutionStateFAILED,
  RemediationExecutionStateINPROGRESS,
  RemediationExecutionStateQUEUED,
  RemediationExecutionStateSUCCEEDED,
  RemediationExecutionState'
  #-}

instance Prelude.FromText RemediationExecutionState where
  parser = RemediationExecutionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText RemediationExecutionState where
  toText (RemediationExecutionState' x) = x

instance Prelude.Hashable RemediationExecutionState

instance Prelude.NFData RemediationExecutionState

instance Prelude.ToByteString RemediationExecutionState

instance Prelude.ToQuery RemediationExecutionState

instance Prelude.ToHeader RemediationExecutionState

instance Prelude.FromJSON RemediationExecutionState where
  parseJSON = Prelude.parseJSONText "RemediationExecutionState"
