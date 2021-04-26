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
-- Module      : Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceFleetStateChangeReasonCode
  ( InstanceFleetStateChangeReasonCode
      ( ..,
        InstanceFleetStateChangeReasonCodeCLUSTERTERMINATED,
        InstanceFleetStateChangeReasonCodeINSTANCEFAILURE,
        InstanceFleetStateChangeReasonCodeINTERNALERROR,
        InstanceFleetStateChangeReasonCodeVALIDATIONERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceFleetStateChangeReasonCode = InstanceFleetStateChangeReasonCode'
  { fromInstanceFleetStateChangeReasonCode ::
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

pattern InstanceFleetStateChangeReasonCodeCLUSTERTERMINATED :: InstanceFleetStateChangeReasonCode
pattern InstanceFleetStateChangeReasonCodeCLUSTERTERMINATED = InstanceFleetStateChangeReasonCode' "CLUSTER_TERMINATED"

pattern InstanceFleetStateChangeReasonCodeINSTANCEFAILURE :: InstanceFleetStateChangeReasonCode
pattern InstanceFleetStateChangeReasonCodeINSTANCEFAILURE = InstanceFleetStateChangeReasonCode' "INSTANCE_FAILURE"

pattern InstanceFleetStateChangeReasonCodeINTERNALERROR :: InstanceFleetStateChangeReasonCode
pattern InstanceFleetStateChangeReasonCodeINTERNALERROR = InstanceFleetStateChangeReasonCode' "INTERNAL_ERROR"

pattern InstanceFleetStateChangeReasonCodeVALIDATIONERROR :: InstanceFleetStateChangeReasonCode
pattern InstanceFleetStateChangeReasonCodeVALIDATIONERROR = InstanceFleetStateChangeReasonCode' "VALIDATION_ERROR"

{-# COMPLETE
  InstanceFleetStateChangeReasonCodeCLUSTERTERMINATED,
  InstanceFleetStateChangeReasonCodeINSTANCEFAILURE,
  InstanceFleetStateChangeReasonCodeINTERNALERROR,
  InstanceFleetStateChangeReasonCodeVALIDATIONERROR,
  InstanceFleetStateChangeReasonCode'
  #-}

instance Prelude.FromText InstanceFleetStateChangeReasonCode where
  parser = InstanceFleetStateChangeReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceFleetStateChangeReasonCode where
  toText (InstanceFleetStateChangeReasonCode' x) = x

instance Prelude.Hashable InstanceFleetStateChangeReasonCode

instance Prelude.NFData InstanceFleetStateChangeReasonCode

instance Prelude.ToByteString InstanceFleetStateChangeReasonCode

instance Prelude.ToQuery InstanceFleetStateChangeReasonCode

instance Prelude.ToHeader InstanceFleetStateChangeReasonCode

instance Prelude.FromJSON InstanceFleetStateChangeReasonCode where
  parseJSON = Prelude.parseJSONText "InstanceFleetStateChangeReasonCode"
