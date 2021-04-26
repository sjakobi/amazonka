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
-- Module      : Network.AWS.IoT.Types.AuditNotificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditNotificationType
  ( AuditNotificationType
      ( ..,
        AuditNotificationTypeSNS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditNotificationType = AuditNotificationType'
  { fromAuditNotificationType ::
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

pattern AuditNotificationTypeSNS :: AuditNotificationType
pattern AuditNotificationTypeSNS = AuditNotificationType' "SNS"

{-# COMPLETE
  AuditNotificationTypeSNS,
  AuditNotificationType'
  #-}

instance Prelude.FromText AuditNotificationType where
  parser = AuditNotificationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditNotificationType where
  toText (AuditNotificationType' x) = x

instance Prelude.Hashable AuditNotificationType

instance Prelude.NFData AuditNotificationType

instance Prelude.ToByteString AuditNotificationType

instance Prelude.ToQuery AuditNotificationType

instance Prelude.ToHeader AuditNotificationType

instance Prelude.ToJSON AuditNotificationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AuditNotificationType where
  parseJSON = Prelude.parseJSONText "AuditNotificationType"
