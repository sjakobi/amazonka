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
-- Module      : Network.AWS.CertificateManager.Types.CertificateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.CertificateStatus
  ( CertificateStatus
      ( ..,
        CertificateStatusEXPIRED,
        CertificateStatusFAILED,
        CertificateStatusINACTIVE,
        CertificateStatusISSUED,
        CertificateStatusPENDINGVALIDATION,
        CertificateStatusREVOKED,
        CertificateStatusVALIDATIONTIMEDOUT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CertificateStatus = CertificateStatus'
  { fromCertificateStatus ::
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

pattern CertificateStatusEXPIRED :: CertificateStatus
pattern CertificateStatusEXPIRED = CertificateStatus' "EXPIRED"

pattern CertificateStatusFAILED :: CertificateStatus
pattern CertificateStatusFAILED = CertificateStatus' "FAILED"

pattern CertificateStatusINACTIVE :: CertificateStatus
pattern CertificateStatusINACTIVE = CertificateStatus' "INACTIVE"

pattern CertificateStatusISSUED :: CertificateStatus
pattern CertificateStatusISSUED = CertificateStatus' "ISSUED"

pattern CertificateStatusPENDINGVALIDATION :: CertificateStatus
pattern CertificateStatusPENDINGVALIDATION = CertificateStatus' "PENDING_VALIDATION"

pattern CertificateStatusREVOKED :: CertificateStatus
pattern CertificateStatusREVOKED = CertificateStatus' "REVOKED"

pattern CertificateStatusVALIDATIONTIMEDOUT :: CertificateStatus
pattern CertificateStatusVALIDATIONTIMEDOUT = CertificateStatus' "VALIDATION_TIMED_OUT"

{-# COMPLETE
  CertificateStatusEXPIRED,
  CertificateStatusFAILED,
  CertificateStatusINACTIVE,
  CertificateStatusISSUED,
  CertificateStatusPENDINGVALIDATION,
  CertificateStatusREVOKED,
  CertificateStatusVALIDATIONTIMEDOUT,
  CertificateStatus'
  #-}

instance Prelude.FromText CertificateStatus where
  parser = CertificateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CertificateStatus where
  toText (CertificateStatus' x) = x

instance Prelude.Hashable CertificateStatus

instance Prelude.NFData CertificateStatus

instance Prelude.ToByteString CertificateStatus

instance Prelude.ToQuery CertificateStatus

instance Prelude.ToHeader CertificateStatus

instance Prelude.ToJSON CertificateStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CertificateStatus where
  parseJSON = Prelude.parseJSONText "CertificateStatus"
