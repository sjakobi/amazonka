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
-- Module      : Network.AWS.IoT.Types.AuditMitigationActionsExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditMitigationActionsExecutionStatus
  ( AuditMitigationActionsExecutionStatus
      ( ..,
        AuditMitigationActionsExecutionStatusCANCELED,
        AuditMitigationActionsExecutionStatusCOMPLETED,
        AuditMitigationActionsExecutionStatusFAILED,
        AuditMitigationActionsExecutionStatusINPROGRESS,
        AuditMitigationActionsExecutionStatusPENDING,
        AuditMitigationActionsExecutionStatusSKIPPED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditMitigationActionsExecutionStatus = AuditMitigationActionsExecutionStatus'
  { fromAuditMitigationActionsExecutionStatus ::
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

pattern AuditMitigationActionsExecutionStatusCANCELED :: AuditMitigationActionsExecutionStatus
pattern AuditMitigationActionsExecutionStatusCANCELED = AuditMitigationActionsExecutionStatus' "CANCELED"

pattern AuditMitigationActionsExecutionStatusCOMPLETED :: AuditMitigationActionsExecutionStatus
pattern AuditMitigationActionsExecutionStatusCOMPLETED = AuditMitigationActionsExecutionStatus' "COMPLETED"

pattern AuditMitigationActionsExecutionStatusFAILED :: AuditMitigationActionsExecutionStatus
pattern AuditMitigationActionsExecutionStatusFAILED = AuditMitigationActionsExecutionStatus' "FAILED"

pattern AuditMitigationActionsExecutionStatusINPROGRESS :: AuditMitigationActionsExecutionStatus
pattern AuditMitigationActionsExecutionStatusINPROGRESS = AuditMitigationActionsExecutionStatus' "IN_PROGRESS"

pattern AuditMitigationActionsExecutionStatusPENDING :: AuditMitigationActionsExecutionStatus
pattern AuditMitigationActionsExecutionStatusPENDING = AuditMitigationActionsExecutionStatus' "PENDING"

pattern AuditMitigationActionsExecutionStatusSKIPPED :: AuditMitigationActionsExecutionStatus
pattern AuditMitigationActionsExecutionStatusSKIPPED = AuditMitigationActionsExecutionStatus' "SKIPPED"

{-# COMPLETE
  AuditMitigationActionsExecutionStatusCANCELED,
  AuditMitigationActionsExecutionStatusCOMPLETED,
  AuditMitigationActionsExecutionStatusFAILED,
  AuditMitigationActionsExecutionStatusINPROGRESS,
  AuditMitigationActionsExecutionStatusPENDING,
  AuditMitigationActionsExecutionStatusSKIPPED,
  AuditMitigationActionsExecutionStatus'
  #-}

instance Prelude.FromText AuditMitigationActionsExecutionStatus where
  parser = AuditMitigationActionsExecutionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditMitigationActionsExecutionStatus where
  toText (AuditMitigationActionsExecutionStatus' x) = x

instance Prelude.Hashable AuditMitigationActionsExecutionStatus

instance Prelude.NFData AuditMitigationActionsExecutionStatus

instance Prelude.ToByteString AuditMitigationActionsExecutionStatus

instance Prelude.ToQuery AuditMitigationActionsExecutionStatus

instance Prelude.ToHeader AuditMitigationActionsExecutionStatus

instance Prelude.ToJSON AuditMitigationActionsExecutionStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuditMitigationActionsExecutionStatus where
  parseJSON = Prelude.parseJSONText "AuditMitigationActionsExecutionStatus"
