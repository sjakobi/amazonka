{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateStatus
  ( LoadBalancerTLSCertificateStatus
      ( ..,
        LBTCSExpired,
        LBTCSFailed,
        LBTCSInactive,
        LBTCSIssued,
        LBTCSPendingValidation,
        LBTCSRevoked,
        LBTCSUnknown,
        LBTCSValidationTimedOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerTLSCertificateStatus
  = LoadBalancerTLSCertificateStatus'
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

pattern LBTCSExpired :: LoadBalancerTLSCertificateStatus
pattern LBTCSExpired = LoadBalancerTLSCertificateStatus' "EXPIRED"

pattern LBTCSFailed :: LoadBalancerTLSCertificateStatus
pattern LBTCSFailed = LoadBalancerTLSCertificateStatus' "FAILED"

pattern LBTCSInactive :: LoadBalancerTLSCertificateStatus
pattern LBTCSInactive = LoadBalancerTLSCertificateStatus' "INACTIVE"

pattern LBTCSIssued :: LoadBalancerTLSCertificateStatus
pattern LBTCSIssued = LoadBalancerTLSCertificateStatus' "ISSUED"

pattern LBTCSPendingValidation :: LoadBalancerTLSCertificateStatus
pattern LBTCSPendingValidation = LoadBalancerTLSCertificateStatus' "PENDING_VALIDATION"

pattern LBTCSRevoked :: LoadBalancerTLSCertificateStatus
pattern LBTCSRevoked = LoadBalancerTLSCertificateStatus' "REVOKED"

pattern LBTCSUnknown :: LoadBalancerTLSCertificateStatus
pattern LBTCSUnknown = LoadBalancerTLSCertificateStatus' "UNKNOWN"

pattern LBTCSValidationTimedOut :: LoadBalancerTLSCertificateStatus
pattern LBTCSValidationTimedOut = LoadBalancerTLSCertificateStatus' "VALIDATION_TIMED_OUT"

{-# COMPLETE
  LBTCSExpired,
  LBTCSFailed,
  LBTCSInactive,
  LBTCSIssued,
  LBTCSPendingValidation,
  LBTCSRevoked,
  LBTCSUnknown,
  LBTCSValidationTimedOut,
  LoadBalancerTLSCertificateStatus'
  #-}

instance FromText LoadBalancerTLSCertificateStatus where
  parser = (LoadBalancerTLSCertificateStatus' . mk) <$> takeText

instance ToText LoadBalancerTLSCertificateStatus where
  toText (LoadBalancerTLSCertificateStatus' ci) = original ci

instance Hashable LoadBalancerTLSCertificateStatus

instance NFData LoadBalancerTLSCertificateStatus

instance ToByteString LoadBalancerTLSCertificateStatus

instance ToQuery LoadBalancerTLSCertificateStatus

instance ToHeader LoadBalancerTLSCertificateStatus

instance FromJSON LoadBalancerTLSCertificateStatus where
  parseJSON = parseJSONText "LoadBalancerTLSCertificateStatus"
