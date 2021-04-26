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
-- Module      : Network.AWS.IoT.Types.CertificateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CertificateStatus
  ( CertificateStatus
      ( ..,
        CertificateStatusACTIVE,
        CertificateStatusINACTIVE,
        CertificateStatusPENDINGACTIVATION,
        CertificateStatusPENDINGTRANSFER,
        CertificateStatusREGISTERINACTIVE,
        CertificateStatusREVOKED
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

pattern CertificateStatusACTIVE :: CertificateStatus
pattern CertificateStatusACTIVE = CertificateStatus' "ACTIVE"

pattern CertificateStatusINACTIVE :: CertificateStatus
pattern CertificateStatusINACTIVE = CertificateStatus' "INACTIVE"

pattern CertificateStatusPENDINGACTIVATION :: CertificateStatus
pattern CertificateStatusPENDINGACTIVATION = CertificateStatus' "PENDING_ACTIVATION"

pattern CertificateStatusPENDINGTRANSFER :: CertificateStatus
pattern CertificateStatusPENDINGTRANSFER = CertificateStatus' "PENDING_TRANSFER"

pattern CertificateStatusREGISTERINACTIVE :: CertificateStatus
pattern CertificateStatusREGISTERINACTIVE = CertificateStatus' "REGISTER_INACTIVE"

pattern CertificateStatusREVOKED :: CertificateStatus
pattern CertificateStatusREVOKED = CertificateStatus' "REVOKED"

{-# COMPLETE
  CertificateStatusACTIVE,
  CertificateStatusINACTIVE,
  CertificateStatusPENDINGACTIVATION,
  CertificateStatusPENDINGTRANSFER,
  CertificateStatusREGISTERINACTIVE,
  CertificateStatusREVOKED,
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
