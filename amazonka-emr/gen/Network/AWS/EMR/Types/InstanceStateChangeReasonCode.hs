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
-- Module      : Network.AWS.EMR.Types.InstanceStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.InstanceStateChangeReasonCode
  ( InstanceStateChangeReasonCode
      ( ..,
        InstanceStateChangeReasonCodeBOOTSTRAPFAILURE,
        InstanceStateChangeReasonCodeCLUSTERTERMINATED,
        InstanceStateChangeReasonCodeINSTANCEFAILURE,
        InstanceStateChangeReasonCodeINTERNALERROR,
        InstanceStateChangeReasonCodeVALIDATIONERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceStateChangeReasonCode = InstanceStateChangeReasonCode'
  { fromInstanceStateChangeReasonCode ::
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

pattern InstanceStateChangeReasonCodeBOOTSTRAPFAILURE :: InstanceStateChangeReasonCode
pattern InstanceStateChangeReasonCodeBOOTSTRAPFAILURE = InstanceStateChangeReasonCode' "BOOTSTRAP_FAILURE"

pattern InstanceStateChangeReasonCodeCLUSTERTERMINATED :: InstanceStateChangeReasonCode
pattern InstanceStateChangeReasonCodeCLUSTERTERMINATED = InstanceStateChangeReasonCode' "CLUSTER_TERMINATED"

pattern InstanceStateChangeReasonCodeINSTANCEFAILURE :: InstanceStateChangeReasonCode
pattern InstanceStateChangeReasonCodeINSTANCEFAILURE = InstanceStateChangeReasonCode' "INSTANCE_FAILURE"

pattern InstanceStateChangeReasonCodeINTERNALERROR :: InstanceStateChangeReasonCode
pattern InstanceStateChangeReasonCodeINTERNALERROR = InstanceStateChangeReasonCode' "INTERNAL_ERROR"

pattern InstanceStateChangeReasonCodeVALIDATIONERROR :: InstanceStateChangeReasonCode
pattern InstanceStateChangeReasonCodeVALIDATIONERROR = InstanceStateChangeReasonCode' "VALIDATION_ERROR"

{-# COMPLETE
  InstanceStateChangeReasonCodeBOOTSTRAPFAILURE,
  InstanceStateChangeReasonCodeCLUSTERTERMINATED,
  InstanceStateChangeReasonCodeINSTANCEFAILURE,
  InstanceStateChangeReasonCodeINTERNALERROR,
  InstanceStateChangeReasonCodeVALIDATIONERROR,
  InstanceStateChangeReasonCode'
  #-}

instance Prelude.FromText InstanceStateChangeReasonCode where
  parser = InstanceStateChangeReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstanceStateChangeReasonCode where
  toText (InstanceStateChangeReasonCode' x) = x

instance Prelude.Hashable InstanceStateChangeReasonCode

instance Prelude.NFData InstanceStateChangeReasonCode

instance Prelude.ToByteString InstanceStateChangeReasonCode

instance Prelude.ToQuery InstanceStateChangeReasonCode

instance Prelude.ToHeader InstanceStateChangeReasonCode

instance Prelude.FromJSON InstanceStateChangeReasonCode where
  parseJSON = Prelude.parseJSONText "InstanceStateChangeReasonCode"
