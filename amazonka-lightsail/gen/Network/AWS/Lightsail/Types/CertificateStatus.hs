{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.CertificateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.CertificateStatus
  ( CertificateStatus
      ( ..,
        CSExpired,
        CSFailed,
        CSInactive,
        CSIssued,
        CSPendingValidation,
        CSRevoked,
        CSValidationTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateStatus = CertificateStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CSExpired :: CertificateStatus
pattern CSExpired = CertificateStatus' "EXPIRED"

pattern CSFailed :: CertificateStatus
pattern CSFailed = CertificateStatus' "FAILED"

pattern CSInactive :: CertificateStatus
pattern CSInactive = CertificateStatus' "INACTIVE"

pattern CSIssued :: CertificateStatus
pattern CSIssued = CertificateStatus' "ISSUED"

pattern CSPendingValidation :: CertificateStatus
pattern CSPendingValidation = CertificateStatus' "PENDING_VALIDATION"

pattern CSRevoked :: CertificateStatus
pattern CSRevoked = CertificateStatus' "REVOKED"

pattern CSValidationTimedOut :: CertificateStatus
pattern CSValidationTimedOut = CertificateStatus' "VALIDATION_TIMED_OUT"

{-# COMPLETE
  CSExpired,
  CSFailed,
  CSInactive,
  CSIssued,
  CSPendingValidation,
  CSRevoked,
  CSValidationTimedOut,
  CertificateStatus'
  #-}

instance FromText CertificateStatus where
  parser = (CertificateStatus' . mk) <$> takeText

instance ToText CertificateStatus where
  toText (CertificateStatus' ci) = original ci

instance Hashable CertificateStatus

instance NFData CertificateStatus

instance ToByteString CertificateStatus

instance ToQuery CertificateStatus

instance ToHeader CertificateStatus

instance ToJSON CertificateStatus where
  toJSON = toJSONText

instance FromJSON CertificateStatus where
  parseJSON = parseJSONText "CertificateStatus"
