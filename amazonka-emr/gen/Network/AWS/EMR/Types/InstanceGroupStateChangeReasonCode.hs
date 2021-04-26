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
-- Module      : Network.AWS.EMR.Types.InstanceGroupStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceGroupStateChangeReasonCode
  ( InstanceGroupStateChangeReasonCode
      ( ..,
        InstanceGroupStateChangeReasonCodeCLUSTERTERMINATED,
        InstanceGroupStateChangeReasonCodeINSTANCEFAILURE,
        InstanceGroupStateChangeReasonCodeINTERNALERROR,
        InstanceGroupStateChangeReasonCodeVALIDATIONERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceGroupStateChangeReasonCode = InstanceGroupStateChangeReasonCode'
  { fromInstanceGroupStateChangeReasonCode ::
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

pattern InstanceGroupStateChangeReasonCodeCLUSTERTERMINATED :: InstanceGroupStateChangeReasonCode
pattern InstanceGroupStateChangeReasonCodeCLUSTERTERMINATED = InstanceGroupStateChangeReasonCode' "CLUSTER_TERMINATED"

pattern InstanceGroupStateChangeReasonCodeINSTANCEFAILURE :: InstanceGroupStateChangeReasonCode
pattern InstanceGroupStateChangeReasonCodeINSTANCEFAILURE = InstanceGroupStateChangeReasonCode' "INSTANCE_FAILURE"

pattern InstanceGroupStateChangeReasonCodeINTERNALERROR :: InstanceGroupStateChangeReasonCode
pattern InstanceGroupStateChangeReasonCodeINTERNALERROR = InstanceGroupStateChangeReasonCode' "INTERNAL_ERROR"

pattern InstanceGroupStateChangeReasonCodeVALIDATIONERROR :: InstanceGroupStateChangeReasonCode
pattern InstanceGroupStateChangeReasonCodeVALIDATIONERROR = InstanceGroupStateChangeReasonCode' "VALIDATION_ERROR"

{-# COMPLETE
  InstanceGroupStateChangeReasonCodeCLUSTERTERMINATED,
  InstanceGroupStateChangeReasonCodeINSTANCEFAILURE,
  InstanceGroupStateChangeReasonCodeINTERNALERROR,
  InstanceGroupStateChangeReasonCodeVALIDATIONERROR,
  InstanceGroupStateChangeReasonCode'
  #-}

instance Prelude.FromText InstanceGroupStateChangeReasonCode where
  parser = InstanceGroupStateChangeReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceGroupStateChangeReasonCode where
  toText (InstanceGroupStateChangeReasonCode' x) = x

instance Prelude.Hashable InstanceGroupStateChangeReasonCode

instance Prelude.NFData InstanceGroupStateChangeReasonCode

instance Prelude.ToByteString InstanceGroupStateChangeReasonCode

instance Prelude.ToQuery InstanceGroupStateChangeReasonCode

instance Prelude.ToHeader InstanceGroupStateChangeReasonCode

instance Prelude.FromJSON InstanceGroupStateChangeReasonCode where
  parseJSON = Prelude.parseJSONText "InstanceGroupStateChangeReasonCode"
