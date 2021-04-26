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
-- Module      : Network.AWS.IoT.Types.AuditTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditTaskStatus
  ( AuditTaskStatus
      ( ..,
        AuditTaskStatusCANCELED,
        AuditTaskStatusCOMPLETED,
        AuditTaskStatusFAILED,
        AuditTaskStatusINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditTaskStatus = AuditTaskStatus'
  { fromAuditTaskStatus ::
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

pattern AuditTaskStatusCANCELED :: AuditTaskStatus
pattern AuditTaskStatusCANCELED = AuditTaskStatus' "CANCELED"

pattern AuditTaskStatusCOMPLETED :: AuditTaskStatus
pattern AuditTaskStatusCOMPLETED = AuditTaskStatus' "COMPLETED"

pattern AuditTaskStatusFAILED :: AuditTaskStatus
pattern AuditTaskStatusFAILED = AuditTaskStatus' "FAILED"

pattern AuditTaskStatusINPROGRESS :: AuditTaskStatus
pattern AuditTaskStatusINPROGRESS = AuditTaskStatus' "IN_PROGRESS"

{-# COMPLETE
  AuditTaskStatusCANCELED,
  AuditTaskStatusCOMPLETED,
  AuditTaskStatusFAILED,
  AuditTaskStatusINPROGRESS,
  AuditTaskStatus'
  #-}

instance Prelude.FromText AuditTaskStatus where
  parser = AuditTaskStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditTaskStatus where
  toText (AuditTaskStatus' x) = x

instance Prelude.Hashable AuditTaskStatus

instance Prelude.NFData AuditTaskStatus

instance Prelude.ToByteString AuditTaskStatus

instance Prelude.ToQuery AuditTaskStatus

instance Prelude.ToHeader AuditTaskStatus

instance Prelude.ToJSON AuditTaskStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuditTaskStatus where
  parseJSON = Prelude.parseJSONText "AuditTaskStatus"
