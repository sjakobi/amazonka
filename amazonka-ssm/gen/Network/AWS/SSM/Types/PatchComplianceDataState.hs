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
-- Module      : Network.AWS.SSM.Types.PatchComplianceDataState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.PatchComplianceDataState
  ( PatchComplianceDataState
      ( ..,
        PatchComplianceDataStateFAILED,
        PatchComplianceDataStateINSTALLED,
        PatchComplianceDataStateINSTALLEDOTHER,
        PatchComplianceDataStateINSTALLEDPENDINGREBOOT,
        PatchComplianceDataStateINSTALLEDREJECTED,
        PatchComplianceDataStateMISSING,
        PatchComplianceDataStateNOTAPPLICABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PatchComplianceDataState = PatchComplianceDataState'
  { fromPatchComplianceDataState ::
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

pattern PatchComplianceDataStateFAILED :: PatchComplianceDataState
pattern PatchComplianceDataStateFAILED = PatchComplianceDataState' "FAILED"

pattern PatchComplianceDataStateINSTALLED :: PatchComplianceDataState
pattern PatchComplianceDataStateINSTALLED = PatchComplianceDataState' "INSTALLED"

pattern PatchComplianceDataStateINSTALLEDOTHER :: PatchComplianceDataState
pattern PatchComplianceDataStateINSTALLEDOTHER = PatchComplianceDataState' "INSTALLED_OTHER"

pattern PatchComplianceDataStateINSTALLEDPENDINGREBOOT :: PatchComplianceDataState
pattern PatchComplianceDataStateINSTALLEDPENDINGREBOOT = PatchComplianceDataState' "INSTALLED_PENDING_REBOOT"

pattern PatchComplianceDataStateINSTALLEDREJECTED :: PatchComplianceDataState
pattern PatchComplianceDataStateINSTALLEDREJECTED = PatchComplianceDataState' "INSTALLED_REJECTED"

pattern PatchComplianceDataStateMISSING :: PatchComplianceDataState
pattern PatchComplianceDataStateMISSING = PatchComplianceDataState' "MISSING"

pattern PatchComplianceDataStateNOTAPPLICABLE :: PatchComplianceDataState
pattern PatchComplianceDataStateNOTAPPLICABLE = PatchComplianceDataState' "NOT_APPLICABLE"

{-# COMPLETE
  PatchComplianceDataStateFAILED,
  PatchComplianceDataStateINSTALLED,
  PatchComplianceDataStateINSTALLEDOTHER,
  PatchComplianceDataStateINSTALLEDPENDINGREBOOT,
  PatchComplianceDataStateINSTALLEDREJECTED,
  PatchComplianceDataStateMISSING,
  PatchComplianceDataStateNOTAPPLICABLE,
  PatchComplianceDataState'
  #-}

instance Prelude.FromText PatchComplianceDataState where
  parser = PatchComplianceDataState' Prelude.<$> Prelude.takeText

instance Prelude.ToText PatchComplianceDataState where
  toText (PatchComplianceDataState' x) = x

instance Prelude.Hashable PatchComplianceDataState

instance Prelude.NFData PatchComplianceDataState

instance Prelude.ToByteString PatchComplianceDataState

instance Prelude.ToQuery PatchComplianceDataState

instance Prelude.ToHeader PatchComplianceDataState

instance Prelude.FromJSON PatchComplianceDataState where
  parseJSON = Prelude.parseJSONText "PatchComplianceDataState"
