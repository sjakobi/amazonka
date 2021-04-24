{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CASActive,
        CASCreating,
        CASDeleted,
        CASDisabled,
        CASExpired,
        CASFailed,
        CASPendingCertificate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateAuthorityStatus
  = CertificateAuthorityStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CASActive :: CertificateAuthorityStatus
pattern CASActive = CertificateAuthorityStatus' "ACTIVE"

pattern CASCreating :: CertificateAuthorityStatus
pattern CASCreating = CertificateAuthorityStatus' "CREATING"

pattern CASDeleted :: CertificateAuthorityStatus
pattern CASDeleted = CertificateAuthorityStatus' "DELETED"

pattern CASDisabled :: CertificateAuthorityStatus
pattern CASDisabled = CertificateAuthorityStatus' "DISABLED"

pattern CASExpired :: CertificateAuthorityStatus
pattern CASExpired = CertificateAuthorityStatus' "EXPIRED"

pattern CASFailed :: CertificateAuthorityStatus
pattern CASFailed = CertificateAuthorityStatus' "FAILED"

pattern CASPendingCertificate :: CertificateAuthorityStatus
pattern CASPendingCertificate = CertificateAuthorityStatus' "PENDING_CERTIFICATE"

{-# COMPLETE
  CASActive,
  CASCreating,
  CASDeleted,
  CASDisabled,
  CASExpired,
  CASFailed,
  CASPendingCertificate,
  CertificateAuthorityStatus'
  #-}

instance FromText CertificateAuthorityStatus where
  parser = (CertificateAuthorityStatus' . mk) <$> takeText

instance ToText CertificateAuthorityStatus where
  toText (CertificateAuthorityStatus' ci) = original ci

instance Hashable CertificateAuthorityStatus

instance NFData CertificateAuthorityStatus

instance ToByteString CertificateAuthorityStatus

instance ToQuery CertificateAuthorityStatus

instance ToHeader CertificateAuthorityStatus

instance ToJSON CertificateAuthorityStatus where
  toJSON = toJSONText

instance FromJSON CertificateAuthorityStatus where
  parseJSON = parseJSONText "CertificateAuthorityStatus"
