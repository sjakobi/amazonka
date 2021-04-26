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
-- Module      : Network.AWS.EMR.Types.ClusterStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ClusterStateChangeReasonCode
  ( ClusterStateChangeReasonCode
      ( ..,
        ClusterStateChangeReasonCodeALLSTEPSCOMPLETED,
        ClusterStateChangeReasonCodeBOOTSTRAPFAILURE,
        ClusterStateChangeReasonCodeINSTANCEFAILURE,
        ClusterStateChangeReasonCodeINSTANCEFLEETTIMEOUT,
        ClusterStateChangeReasonCodeINTERNALERROR,
        ClusterStateChangeReasonCodeSTEPFAILURE,
        ClusterStateChangeReasonCodeUSERREQUEST,
        ClusterStateChangeReasonCodeVALIDATIONERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ClusterStateChangeReasonCode = ClusterStateChangeReasonCode'
  { fromClusterStateChangeReasonCode ::
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

pattern ClusterStateChangeReasonCodeALLSTEPSCOMPLETED :: ClusterStateChangeReasonCode
pattern ClusterStateChangeReasonCodeALLSTEPSCOMPLETED = ClusterStateChangeReasonCode' "ALL_STEPS_COMPLETED"

pattern ClusterStateChangeReasonCodeBOOTSTRAPFAILURE :: ClusterStateChangeReasonCode
pattern ClusterStateChangeReasonCodeBOOTSTRAPFAILURE = ClusterStateChangeReasonCode' "BOOTSTRAP_FAILURE"

pattern ClusterStateChangeReasonCodeINSTANCEFAILURE :: ClusterStateChangeReasonCode
pattern ClusterStateChangeReasonCodeINSTANCEFAILURE = ClusterStateChangeReasonCode' "INSTANCE_FAILURE"

pattern ClusterStateChangeReasonCodeINSTANCEFLEETTIMEOUT :: ClusterStateChangeReasonCode
pattern ClusterStateChangeReasonCodeINSTANCEFLEETTIMEOUT = ClusterStateChangeReasonCode' "INSTANCE_FLEET_TIMEOUT"

pattern ClusterStateChangeReasonCodeINTERNALERROR :: ClusterStateChangeReasonCode
pattern ClusterStateChangeReasonCodeINTERNALERROR = ClusterStateChangeReasonCode' "INTERNAL_ERROR"

pattern ClusterStateChangeReasonCodeSTEPFAILURE :: ClusterStateChangeReasonCode
pattern ClusterStateChangeReasonCodeSTEPFAILURE = ClusterStateChangeReasonCode' "STEP_FAILURE"

pattern ClusterStateChangeReasonCodeUSERREQUEST :: ClusterStateChangeReasonCode
pattern ClusterStateChangeReasonCodeUSERREQUEST = ClusterStateChangeReasonCode' "USER_REQUEST"

pattern ClusterStateChangeReasonCodeVALIDATIONERROR :: ClusterStateChangeReasonCode
pattern ClusterStateChangeReasonCodeVALIDATIONERROR = ClusterStateChangeReasonCode' "VALIDATION_ERROR"

{-# COMPLETE
  ClusterStateChangeReasonCodeALLSTEPSCOMPLETED,
  ClusterStateChangeReasonCodeBOOTSTRAPFAILURE,
  ClusterStateChangeReasonCodeINSTANCEFAILURE,
  ClusterStateChangeReasonCodeINSTANCEFLEETTIMEOUT,
  ClusterStateChangeReasonCodeINTERNALERROR,
  ClusterStateChangeReasonCodeSTEPFAILURE,
  ClusterStateChangeReasonCodeUSERREQUEST,
  ClusterStateChangeReasonCodeVALIDATIONERROR,
  ClusterStateChangeReasonCode'
  #-}

instance Prelude.FromText ClusterStateChangeReasonCode where
  parser = ClusterStateChangeReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClusterStateChangeReasonCode where
  toText (ClusterStateChangeReasonCode' x) = x

instance Prelude.Hashable ClusterStateChangeReasonCode

instance Prelude.NFData ClusterStateChangeReasonCode

instance Prelude.ToByteString ClusterStateChangeReasonCode

instance Prelude.ToQuery ClusterStateChangeReasonCode

instance Prelude.ToHeader ClusterStateChangeReasonCode

instance Prelude.FromJSON ClusterStateChangeReasonCode where
  parseJSON = Prelude.parseJSONText "ClusterStateChangeReasonCode"
