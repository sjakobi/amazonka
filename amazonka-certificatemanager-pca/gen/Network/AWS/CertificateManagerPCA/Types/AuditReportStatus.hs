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
-- Module      : Network.AWS.CertificateManagerPCA.Types.AuditReportStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.AuditReportStatus
  ( AuditReportStatus
      ( ..,
        AuditReportStatusCREATING,
        AuditReportStatusFAILED,
        AuditReportStatusSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditReportStatus = AuditReportStatus'
  { fromAuditReportStatus ::
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

pattern AuditReportStatusCREATING :: AuditReportStatus
pattern AuditReportStatusCREATING = AuditReportStatus' "CREATING"

pattern AuditReportStatusFAILED :: AuditReportStatus
pattern AuditReportStatusFAILED = AuditReportStatus' "FAILED"

pattern AuditReportStatusSUCCESS :: AuditReportStatus
pattern AuditReportStatusSUCCESS = AuditReportStatus' "SUCCESS"

{-# COMPLETE
  AuditReportStatusCREATING,
  AuditReportStatusFAILED,
  AuditReportStatusSUCCESS,
  AuditReportStatus'
  #-}

instance Prelude.FromText AuditReportStatus where
  parser = AuditReportStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditReportStatus where
  toText (AuditReportStatus' x) = x

instance Prelude.Hashable AuditReportStatus

instance Prelude.NFData AuditReportStatus

instance Prelude.ToByteString AuditReportStatus

instance Prelude.ToQuery AuditReportStatus

instance Prelude.ToHeader AuditReportStatus

instance Prelude.FromJSON AuditReportStatus where
  parseJSON = Prelude.parseJSONText "AuditReportStatus"
