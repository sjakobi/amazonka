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
-- Module      : Network.AWS.Inspector.Types.AssessmentRunState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssessmentRunState
  ( AssessmentRunState
      ( ..,
        AssessmentRunStateCANCELED,
        AssessmentRunStateCOLLECTINGDATA,
        AssessmentRunStateCOMPLETED,
        AssessmentRunStateCOMPLETEDWITHERRORS,
        AssessmentRunStateCREATED,
        AssessmentRunStateDATACOLLECTED,
        AssessmentRunStateERROR,
        AssessmentRunStateEVALUATINGRULES,
        AssessmentRunStateFAILED,
        AssessmentRunStateSTARTDATACOLLECTIONINPROGRESS,
        AssessmentRunStateSTARTDATACOLLECTIONPENDING,
        AssessmentRunStateSTARTEVALUATINGRULESPENDING,
        AssessmentRunStateSTOPDATACOLLECTIONPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssessmentRunState = AssessmentRunState'
  { fromAssessmentRunState ::
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

pattern AssessmentRunStateCANCELED :: AssessmentRunState
pattern AssessmentRunStateCANCELED = AssessmentRunState' "CANCELED"

pattern AssessmentRunStateCOLLECTINGDATA :: AssessmentRunState
pattern AssessmentRunStateCOLLECTINGDATA = AssessmentRunState' "COLLECTING_DATA"

pattern AssessmentRunStateCOMPLETED :: AssessmentRunState
pattern AssessmentRunStateCOMPLETED = AssessmentRunState' "COMPLETED"

pattern AssessmentRunStateCOMPLETEDWITHERRORS :: AssessmentRunState
pattern AssessmentRunStateCOMPLETEDWITHERRORS = AssessmentRunState' "COMPLETED_WITH_ERRORS"

pattern AssessmentRunStateCREATED :: AssessmentRunState
pattern AssessmentRunStateCREATED = AssessmentRunState' "CREATED"

pattern AssessmentRunStateDATACOLLECTED :: AssessmentRunState
pattern AssessmentRunStateDATACOLLECTED = AssessmentRunState' "DATA_COLLECTED"

pattern AssessmentRunStateERROR :: AssessmentRunState
pattern AssessmentRunStateERROR = AssessmentRunState' "ERROR"

pattern AssessmentRunStateEVALUATINGRULES :: AssessmentRunState
pattern AssessmentRunStateEVALUATINGRULES = AssessmentRunState' "EVALUATING_RULES"

pattern AssessmentRunStateFAILED :: AssessmentRunState
pattern AssessmentRunStateFAILED = AssessmentRunState' "FAILED"

pattern AssessmentRunStateSTARTDATACOLLECTIONINPROGRESS :: AssessmentRunState
pattern AssessmentRunStateSTARTDATACOLLECTIONINPROGRESS = AssessmentRunState' "START_DATA_COLLECTION_IN_PROGRESS"

pattern AssessmentRunStateSTARTDATACOLLECTIONPENDING :: AssessmentRunState
pattern AssessmentRunStateSTARTDATACOLLECTIONPENDING = AssessmentRunState' "START_DATA_COLLECTION_PENDING"

pattern AssessmentRunStateSTARTEVALUATINGRULESPENDING :: AssessmentRunState
pattern AssessmentRunStateSTARTEVALUATINGRULESPENDING = AssessmentRunState' "START_EVALUATING_RULES_PENDING"

pattern AssessmentRunStateSTOPDATACOLLECTIONPENDING :: AssessmentRunState
pattern AssessmentRunStateSTOPDATACOLLECTIONPENDING = AssessmentRunState' "STOP_DATA_COLLECTION_PENDING"

{-# COMPLETE
  AssessmentRunStateCANCELED,
  AssessmentRunStateCOLLECTINGDATA,
  AssessmentRunStateCOMPLETED,
  AssessmentRunStateCOMPLETEDWITHERRORS,
  AssessmentRunStateCREATED,
  AssessmentRunStateDATACOLLECTED,
  AssessmentRunStateERROR,
  AssessmentRunStateEVALUATINGRULES,
  AssessmentRunStateFAILED,
  AssessmentRunStateSTARTDATACOLLECTIONINPROGRESS,
  AssessmentRunStateSTARTDATACOLLECTIONPENDING,
  AssessmentRunStateSTARTEVALUATINGRULESPENDING,
  AssessmentRunStateSTOPDATACOLLECTIONPENDING,
  AssessmentRunState'
  #-}

instance Prelude.FromText AssessmentRunState where
  parser = AssessmentRunState' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssessmentRunState where
  toText (AssessmentRunState' x) = x

instance Prelude.Hashable AssessmentRunState

instance Prelude.NFData AssessmentRunState

instance Prelude.ToByteString AssessmentRunState

instance Prelude.ToQuery AssessmentRunState

instance Prelude.ToHeader AssessmentRunState

instance Prelude.ToJSON AssessmentRunState where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AssessmentRunState where
  parseJSON = Prelude.parseJSONText "AssessmentRunState"
