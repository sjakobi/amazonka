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
-- Module      : Network.AWS.IoT.Types.DetectMitigationActionsTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DetectMitigationActionsTaskStatus
  ( DetectMitigationActionsTaskStatus
      ( ..,
        DetectMitigationActionsTaskStatusCANCELED,
        DetectMitigationActionsTaskStatusFAILED,
        DetectMitigationActionsTaskStatusINPROGRESS,
        DetectMitigationActionsTaskStatusSUCCESSFUL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DetectMitigationActionsTaskStatus = DetectMitigationActionsTaskStatus'
  { fromDetectMitigationActionsTaskStatus ::
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

pattern DetectMitigationActionsTaskStatusCANCELED :: DetectMitigationActionsTaskStatus
pattern DetectMitigationActionsTaskStatusCANCELED = DetectMitigationActionsTaskStatus' "CANCELED"

pattern DetectMitigationActionsTaskStatusFAILED :: DetectMitigationActionsTaskStatus
pattern DetectMitigationActionsTaskStatusFAILED = DetectMitigationActionsTaskStatus' "FAILED"

pattern DetectMitigationActionsTaskStatusINPROGRESS :: DetectMitigationActionsTaskStatus
pattern DetectMitigationActionsTaskStatusINPROGRESS = DetectMitigationActionsTaskStatus' "IN_PROGRESS"

pattern DetectMitigationActionsTaskStatusSUCCESSFUL :: DetectMitigationActionsTaskStatus
pattern DetectMitigationActionsTaskStatusSUCCESSFUL = DetectMitigationActionsTaskStatus' "SUCCESSFUL"

{-# COMPLETE
  DetectMitigationActionsTaskStatusCANCELED,
  DetectMitigationActionsTaskStatusFAILED,
  DetectMitigationActionsTaskStatusINPROGRESS,
  DetectMitigationActionsTaskStatusSUCCESSFUL,
  DetectMitigationActionsTaskStatus'
  #-}

instance Prelude.FromText DetectMitigationActionsTaskStatus where
  parser = DetectMitigationActionsTaskStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DetectMitigationActionsTaskStatus where
  toText (DetectMitigationActionsTaskStatus' x) = x

instance Prelude.Hashable DetectMitigationActionsTaskStatus

instance Prelude.NFData DetectMitigationActionsTaskStatus

instance Prelude.ToByteString DetectMitigationActionsTaskStatus

instance Prelude.ToQuery DetectMitigationActionsTaskStatus

instance Prelude.ToHeader DetectMitigationActionsTaskStatus

instance Prelude.FromJSON DetectMitigationActionsTaskStatus where
  parseJSON = Prelude.parseJSONText "DetectMitigationActionsTaskStatus"
