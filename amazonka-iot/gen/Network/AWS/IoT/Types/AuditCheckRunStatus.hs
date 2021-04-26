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
-- Module      : Network.AWS.IoT.Types.AuditCheckRunStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AuditCheckRunStatus
  ( AuditCheckRunStatus
      ( ..,
        AuditCheckRunStatusCANCELED,
        AuditCheckRunStatusCOMPLETEDCOMPLIANT,
        AuditCheckRunStatusCOMPLETEDNONCOMPLIANT,
        AuditCheckRunStatusFAILED,
        AuditCheckRunStatusINPROGRESS,
        AuditCheckRunStatusWAITINGFORDATACOLLECTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AuditCheckRunStatus = AuditCheckRunStatus'
  { fromAuditCheckRunStatus ::
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

pattern AuditCheckRunStatusCANCELED :: AuditCheckRunStatus
pattern AuditCheckRunStatusCANCELED = AuditCheckRunStatus' "CANCELED"

pattern AuditCheckRunStatusCOMPLETEDCOMPLIANT :: AuditCheckRunStatus
pattern AuditCheckRunStatusCOMPLETEDCOMPLIANT = AuditCheckRunStatus' "COMPLETED_COMPLIANT"

pattern AuditCheckRunStatusCOMPLETEDNONCOMPLIANT :: AuditCheckRunStatus
pattern AuditCheckRunStatusCOMPLETEDNONCOMPLIANT = AuditCheckRunStatus' "COMPLETED_NON_COMPLIANT"

pattern AuditCheckRunStatusFAILED :: AuditCheckRunStatus
pattern AuditCheckRunStatusFAILED = AuditCheckRunStatus' "FAILED"

pattern AuditCheckRunStatusINPROGRESS :: AuditCheckRunStatus
pattern AuditCheckRunStatusINPROGRESS = AuditCheckRunStatus' "IN_PROGRESS"

pattern AuditCheckRunStatusWAITINGFORDATACOLLECTION :: AuditCheckRunStatus
pattern AuditCheckRunStatusWAITINGFORDATACOLLECTION = AuditCheckRunStatus' "WAITING_FOR_DATA_COLLECTION"

{-# COMPLETE
  AuditCheckRunStatusCANCELED,
  AuditCheckRunStatusCOMPLETEDCOMPLIANT,
  AuditCheckRunStatusCOMPLETEDNONCOMPLIANT,
  AuditCheckRunStatusFAILED,
  AuditCheckRunStatusINPROGRESS,
  AuditCheckRunStatusWAITINGFORDATACOLLECTION,
  AuditCheckRunStatus'
  #-}

instance Prelude.FromText AuditCheckRunStatus where
  parser = AuditCheckRunStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AuditCheckRunStatus where
  toText (AuditCheckRunStatus' x) = x

instance Prelude.Hashable AuditCheckRunStatus

instance Prelude.NFData AuditCheckRunStatus

instance Prelude.ToByteString AuditCheckRunStatus

instance Prelude.ToQuery AuditCheckRunStatus

instance Prelude.ToHeader AuditCheckRunStatus

instance Prelude.FromJSON AuditCheckRunStatus where
  parseJSON = Prelude.parseJSONText "AuditCheckRunStatus"
