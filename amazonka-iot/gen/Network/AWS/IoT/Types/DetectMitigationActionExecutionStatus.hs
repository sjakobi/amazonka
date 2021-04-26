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
-- Module      : Network.AWS.IoT.Types.DetectMitigationActionExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DetectMitigationActionExecutionStatus
  ( DetectMitigationActionExecutionStatus
      ( ..,
        DetectMitigationActionExecutionStatusFAILED,
        DetectMitigationActionExecutionStatusINPROGRESS,
        DetectMitigationActionExecutionStatusSKIPPED,
        DetectMitigationActionExecutionStatusSUCCESSFUL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DetectMitigationActionExecutionStatus = DetectMitigationActionExecutionStatus'
  { fromDetectMitigationActionExecutionStatus ::
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

pattern DetectMitigationActionExecutionStatusFAILED :: DetectMitigationActionExecutionStatus
pattern DetectMitigationActionExecutionStatusFAILED = DetectMitigationActionExecutionStatus' "FAILED"

pattern DetectMitigationActionExecutionStatusINPROGRESS :: DetectMitigationActionExecutionStatus
pattern DetectMitigationActionExecutionStatusINPROGRESS = DetectMitigationActionExecutionStatus' "IN_PROGRESS"

pattern DetectMitigationActionExecutionStatusSKIPPED :: DetectMitigationActionExecutionStatus
pattern DetectMitigationActionExecutionStatusSKIPPED = DetectMitigationActionExecutionStatus' "SKIPPED"

pattern DetectMitigationActionExecutionStatusSUCCESSFUL :: DetectMitigationActionExecutionStatus
pattern DetectMitigationActionExecutionStatusSUCCESSFUL = DetectMitigationActionExecutionStatus' "SUCCESSFUL"

{-# COMPLETE
  DetectMitigationActionExecutionStatusFAILED,
  DetectMitigationActionExecutionStatusINPROGRESS,
  DetectMitigationActionExecutionStatusSKIPPED,
  DetectMitigationActionExecutionStatusSUCCESSFUL,
  DetectMitigationActionExecutionStatus'
  #-}

instance Prelude.FromText DetectMitigationActionExecutionStatus where
  parser = DetectMitigationActionExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DetectMitigationActionExecutionStatus where
  toText (DetectMitigationActionExecutionStatus' x) = x

instance Prelude.Hashable DetectMitigationActionExecutionStatus

instance Prelude.NFData DetectMitigationActionExecutionStatus

instance Prelude.ToByteString DetectMitigationActionExecutionStatus

instance Prelude.ToQuery DetectMitigationActionExecutionStatus

instance Prelude.ToHeader DetectMitigationActionExecutionStatus

instance Prelude.FromJSON DetectMitigationActionExecutionStatus where
  parseJSON = Prelude.parseJSONText "DetectMitigationActionExecutionStatus"
