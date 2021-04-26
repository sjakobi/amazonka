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
-- Module      : Network.AWS.IoT.Types.AuditTaskType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditTaskType
  ( AuditTaskType
      ( ..,
        AuditTaskTypeONDEMANDAUDITTASK,
        AuditTaskTypeSCHEDULEDAUDITTASK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditTaskType = AuditTaskType'
  { fromAuditTaskType ::
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

pattern AuditTaskTypeONDEMANDAUDITTASK :: AuditTaskType
pattern AuditTaskTypeONDEMANDAUDITTASK = AuditTaskType' "ON_DEMAND_AUDIT_TASK"

pattern AuditTaskTypeSCHEDULEDAUDITTASK :: AuditTaskType
pattern AuditTaskTypeSCHEDULEDAUDITTASK = AuditTaskType' "SCHEDULED_AUDIT_TASK"

{-# COMPLETE
  AuditTaskTypeONDEMANDAUDITTASK,
  AuditTaskTypeSCHEDULEDAUDITTASK,
  AuditTaskType'
  #-}

instance Prelude.FromText AuditTaskType where
  parser = AuditTaskType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditTaskType where
  toText (AuditTaskType' x) = x

instance Prelude.Hashable AuditTaskType

instance Prelude.NFData AuditTaskType

instance Prelude.ToByteString AuditTaskType

instance Prelude.ToQuery AuditTaskType

instance Prelude.ToHeader AuditTaskType

instance Prelude.ToJSON AuditTaskType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuditTaskType where
  parseJSON = Prelude.parseJSONText "AuditTaskType"
