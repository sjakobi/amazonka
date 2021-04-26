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
-- Module      : Network.AWS.SSM.Types.MaintenanceWindowExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.MaintenanceWindowExecutionStatus
  ( MaintenanceWindowExecutionStatus
      ( ..,
        MaintenanceWindowExecutionStatusCANCELLED,
        MaintenanceWindowExecutionStatusCANCELLING,
        MaintenanceWindowExecutionStatusFAILED,
        MaintenanceWindowExecutionStatusINPROGRESS,
        MaintenanceWindowExecutionStatusPENDING,
        MaintenanceWindowExecutionStatusSKIPPEDOVERLAPPING,
        MaintenanceWindowExecutionStatusSUCCESS,
        MaintenanceWindowExecutionStatusTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MaintenanceWindowExecutionStatus = MaintenanceWindowExecutionStatus'
  { fromMaintenanceWindowExecutionStatus ::
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

pattern MaintenanceWindowExecutionStatusCANCELLED :: MaintenanceWindowExecutionStatus
pattern MaintenanceWindowExecutionStatusCANCELLED = MaintenanceWindowExecutionStatus' "CANCELLED"

pattern MaintenanceWindowExecutionStatusCANCELLING :: MaintenanceWindowExecutionStatus
pattern MaintenanceWindowExecutionStatusCANCELLING = MaintenanceWindowExecutionStatus' "CANCELLING"

pattern MaintenanceWindowExecutionStatusFAILED :: MaintenanceWindowExecutionStatus
pattern MaintenanceWindowExecutionStatusFAILED = MaintenanceWindowExecutionStatus' "FAILED"

pattern MaintenanceWindowExecutionStatusINPROGRESS :: MaintenanceWindowExecutionStatus
pattern MaintenanceWindowExecutionStatusINPROGRESS = MaintenanceWindowExecutionStatus' "IN_PROGRESS"

pattern MaintenanceWindowExecutionStatusPENDING :: MaintenanceWindowExecutionStatus
pattern MaintenanceWindowExecutionStatusPENDING = MaintenanceWindowExecutionStatus' "PENDING"

pattern MaintenanceWindowExecutionStatusSKIPPEDOVERLAPPING :: MaintenanceWindowExecutionStatus
pattern MaintenanceWindowExecutionStatusSKIPPEDOVERLAPPING = MaintenanceWindowExecutionStatus' "SKIPPED_OVERLAPPING"

pattern MaintenanceWindowExecutionStatusSUCCESS :: MaintenanceWindowExecutionStatus
pattern MaintenanceWindowExecutionStatusSUCCESS = MaintenanceWindowExecutionStatus' "SUCCESS"

pattern MaintenanceWindowExecutionStatusTIMEDOUT :: MaintenanceWindowExecutionStatus
pattern MaintenanceWindowExecutionStatusTIMEDOUT = MaintenanceWindowExecutionStatus' "TIMED_OUT"

{-# COMPLETE
  MaintenanceWindowExecutionStatusCANCELLED,
  MaintenanceWindowExecutionStatusCANCELLING,
  MaintenanceWindowExecutionStatusFAILED,
  MaintenanceWindowExecutionStatusINPROGRESS,
  MaintenanceWindowExecutionStatusPENDING,
  MaintenanceWindowExecutionStatusSKIPPEDOVERLAPPING,
  MaintenanceWindowExecutionStatusSUCCESS,
  MaintenanceWindowExecutionStatusTIMEDOUT,
  MaintenanceWindowExecutionStatus'
  #-}

instance Prelude.FromText MaintenanceWindowExecutionStatus where
  parser = MaintenanceWindowExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText MaintenanceWindowExecutionStatus where
  toText (MaintenanceWindowExecutionStatus' x) = x

instance Prelude.Hashable MaintenanceWindowExecutionStatus

instance Prelude.NFData MaintenanceWindowExecutionStatus

instance Prelude.ToByteString MaintenanceWindowExecutionStatus

instance Prelude.ToQuery MaintenanceWindowExecutionStatus

instance Prelude.ToHeader MaintenanceWindowExecutionStatus

instance Prelude.FromJSON MaintenanceWindowExecutionStatus where
  parseJSON = Prelude.parseJSONText "MaintenanceWindowExecutionStatus"
