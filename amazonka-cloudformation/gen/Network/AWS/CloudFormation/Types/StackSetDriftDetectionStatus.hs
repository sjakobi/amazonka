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
-- Module      : Network.AWS.CloudFormation.Types.StackSetDriftDetectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.StackSetDriftDetectionStatus
  ( StackSetDriftDetectionStatus
      ( ..,
        StackSetDriftDetectionStatusCOMPLETED,
        StackSetDriftDetectionStatusFAILED,
        StackSetDriftDetectionStatusINPROGRESS,
        StackSetDriftDetectionStatusPARTIALSUCCESS,
        StackSetDriftDetectionStatusSTOPPED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StackSetDriftDetectionStatus = StackSetDriftDetectionStatus'
  { fromStackSetDriftDetectionStatus ::
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

pattern StackSetDriftDetectionStatusCOMPLETED :: StackSetDriftDetectionStatus
pattern StackSetDriftDetectionStatusCOMPLETED = StackSetDriftDetectionStatus' "COMPLETED"

pattern StackSetDriftDetectionStatusFAILED :: StackSetDriftDetectionStatus
pattern StackSetDriftDetectionStatusFAILED = StackSetDriftDetectionStatus' "FAILED"

pattern StackSetDriftDetectionStatusINPROGRESS :: StackSetDriftDetectionStatus
pattern StackSetDriftDetectionStatusINPROGRESS = StackSetDriftDetectionStatus' "IN_PROGRESS"

pattern StackSetDriftDetectionStatusPARTIALSUCCESS :: StackSetDriftDetectionStatus
pattern StackSetDriftDetectionStatusPARTIALSUCCESS = StackSetDriftDetectionStatus' "PARTIAL_SUCCESS"

pattern StackSetDriftDetectionStatusSTOPPED :: StackSetDriftDetectionStatus
pattern StackSetDriftDetectionStatusSTOPPED = StackSetDriftDetectionStatus' "STOPPED"

{-# COMPLETE
  StackSetDriftDetectionStatusCOMPLETED,
  StackSetDriftDetectionStatusFAILED,
  StackSetDriftDetectionStatusINPROGRESS,
  StackSetDriftDetectionStatusPARTIALSUCCESS,
  StackSetDriftDetectionStatusSTOPPED,
  StackSetDriftDetectionStatus'
  #-}

instance Prelude.FromText StackSetDriftDetectionStatus where
  parser = StackSetDriftDetectionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText StackSetDriftDetectionStatus where
  toText (StackSetDriftDetectionStatus' x) = x

instance Prelude.Hashable StackSetDriftDetectionStatus

instance Prelude.NFData StackSetDriftDetectionStatus

instance Prelude.ToByteString StackSetDriftDetectionStatus

instance Prelude.ToQuery StackSetDriftDetectionStatus

instance Prelude.ToHeader StackSetDriftDetectionStatus

instance Prelude.FromXML StackSetDriftDetectionStatus where
  parseXML = Prelude.parseXMLText "StackSetDriftDetectionStatus"
