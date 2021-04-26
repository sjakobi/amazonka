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
-- Module      : Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus
  ( CertificateAuthorityStatus
      ( ..,
        CertificateAuthorityStatusACTIVE,
        CertificateAuthorityStatusCREATING,
        CertificateAuthorityStatusDELETED,
        CertificateAuthorityStatusDISABLED,
        CertificateAuthorityStatusEXPIRED,
        CertificateAuthorityStatusFAILED,
        CertificateAuthorityStatusPENDINGCERTIFICATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CertificateAuthorityStatus = CertificateAuthorityStatus'
  { fromCertificateAuthorityStatus ::
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

pattern CertificateAuthorityStatusACTIVE :: CertificateAuthorityStatus
pattern CertificateAuthorityStatusACTIVE = CertificateAuthorityStatus' "ACTIVE"

pattern CertificateAuthorityStatusCREATING :: CertificateAuthorityStatus
pattern CertificateAuthorityStatusCREATING = CertificateAuthorityStatus' "CREATING"

pattern CertificateAuthorityStatusDELETED :: CertificateAuthorityStatus
pattern CertificateAuthorityStatusDELETED = CertificateAuthorityStatus' "DELETED"

pattern CertificateAuthorityStatusDISABLED :: CertificateAuthorityStatus
pattern CertificateAuthorityStatusDISABLED = CertificateAuthorityStatus' "DISABLED"

pattern CertificateAuthorityStatusEXPIRED :: CertificateAuthorityStatus
pattern CertificateAuthorityStatusEXPIRED = CertificateAuthorityStatus' "EXPIRED"

pattern CertificateAuthorityStatusFAILED :: CertificateAuthorityStatus
pattern CertificateAuthorityStatusFAILED = CertificateAuthorityStatus' "FAILED"

pattern CertificateAuthorityStatusPENDINGCERTIFICATE :: CertificateAuthorityStatus
pattern CertificateAuthorityStatusPENDINGCERTIFICATE = CertificateAuthorityStatus' "PENDING_CERTIFICATE"

{-# COMPLETE
  CertificateAuthorityStatusACTIVE,
  CertificateAuthorityStatusCREATING,
  CertificateAuthorityStatusDELETED,
  CertificateAuthorityStatusDISABLED,
  CertificateAuthorityStatusEXPIRED,
  CertificateAuthorityStatusFAILED,
  CertificateAuthorityStatusPENDINGCERTIFICATE,
  CertificateAuthorityStatus'
  #-}

instance Prelude.FromText CertificateAuthorityStatus where
  parser = CertificateAuthorityStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CertificateAuthorityStatus where
  toText (CertificateAuthorityStatus' x) = x

instance Prelude.Hashable CertificateAuthorityStatus

instance Prelude.NFData CertificateAuthorityStatus

instance Prelude.ToByteString CertificateAuthorityStatus

instance Prelude.ToQuery CertificateAuthorityStatus

instance Prelude.ToHeader CertificateAuthorityStatus

instance Prelude.ToJSON CertificateAuthorityStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CertificateAuthorityStatus where
  parseJSON = Prelude.parseJSONText "CertificateAuthorityStatus"
