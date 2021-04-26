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
-- Module      : Network.AWS.IoT.Types.AuditMitigationActionsTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditMitigationActionsTaskStatus
  ( AuditMitigationActionsTaskStatus
      ( ..,
        AuditMitigationActionsTaskStatusCANCELED,
        AuditMitigationActionsTaskStatusCOMPLETED,
        AuditMitigationActionsTaskStatusFAILED,
        AuditMitigationActionsTaskStatusINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditMitigationActionsTaskStatus = AuditMitigationActionsTaskStatus'
  { fromAuditMitigationActionsTaskStatus ::
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

pattern AuditMitigationActionsTaskStatusCANCELED :: AuditMitigationActionsTaskStatus
pattern AuditMitigationActionsTaskStatusCANCELED = AuditMitigationActionsTaskStatus' "CANCELED"

pattern AuditMitigationActionsTaskStatusCOMPLETED :: AuditMitigationActionsTaskStatus
pattern AuditMitigationActionsTaskStatusCOMPLETED = AuditMitigationActionsTaskStatus' "COMPLETED"

pattern AuditMitigationActionsTaskStatusFAILED :: AuditMitigationActionsTaskStatus
pattern AuditMitigationActionsTaskStatusFAILED = AuditMitigationActionsTaskStatus' "FAILED"

pattern AuditMitigationActionsTaskStatusINPROGRESS :: AuditMitigationActionsTaskStatus
pattern AuditMitigationActionsTaskStatusINPROGRESS = AuditMitigationActionsTaskStatus' "IN_PROGRESS"

{-# COMPLETE
  AuditMitigationActionsTaskStatusCANCELED,
  AuditMitigationActionsTaskStatusCOMPLETED,
  AuditMitigationActionsTaskStatusFAILED,
  AuditMitigationActionsTaskStatusINPROGRESS,
  AuditMitigationActionsTaskStatus'
  #-}

instance Prelude.FromText AuditMitigationActionsTaskStatus where
  parser = AuditMitigationActionsTaskStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditMitigationActionsTaskStatus where
  toText (AuditMitigationActionsTaskStatus' x) = x

instance Prelude.Hashable AuditMitigationActionsTaskStatus

instance Prelude.NFData AuditMitigationActionsTaskStatus

instance Prelude.ToByteString AuditMitigationActionsTaskStatus

instance Prelude.ToQuery AuditMitigationActionsTaskStatus

instance Prelude.ToHeader AuditMitigationActionsTaskStatus

instance Prelude.ToJSON AuditMitigationActionsTaskStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuditMitigationActionsTaskStatus where
  parseJSON = Prelude.parseJSONText "AuditMitigationActionsTaskStatus"
