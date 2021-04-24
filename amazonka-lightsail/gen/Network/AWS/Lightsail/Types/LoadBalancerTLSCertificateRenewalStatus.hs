{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateRenewalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateRenewalStatus
  ( LoadBalancerTLSCertificateRenewalStatus
      ( ..,
        LBTCRSFailed,
        LBTCRSPendingAutoRenewal,
        LBTCRSPendingValidation,
        LBTCRSSuccess
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerTLSCertificateRenewalStatus
  = LoadBalancerTLSCertificateRenewalStatus'
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

pattern LBTCRSFailed :: LoadBalancerTLSCertificateRenewalStatus
pattern LBTCRSFailed = LoadBalancerTLSCertificateRenewalStatus' "FAILED"

pattern LBTCRSPendingAutoRenewal :: LoadBalancerTLSCertificateRenewalStatus
pattern LBTCRSPendingAutoRenewal = LoadBalancerTLSCertificateRenewalStatus' "PENDING_AUTO_RENEWAL"

pattern LBTCRSPendingValidation :: LoadBalancerTLSCertificateRenewalStatus
pattern LBTCRSPendingValidation = LoadBalancerTLSCertificateRenewalStatus' "PENDING_VALIDATION"

pattern LBTCRSSuccess :: LoadBalancerTLSCertificateRenewalStatus
pattern LBTCRSSuccess = LoadBalancerTLSCertificateRenewalStatus' "SUCCESS"

{-# COMPLETE
  LBTCRSFailed,
  LBTCRSPendingAutoRenewal,
  LBTCRSPendingValidation,
  LBTCRSSuccess,
  LoadBalancerTLSCertificateRenewalStatus'
  #-}

instance FromText LoadBalancerTLSCertificateRenewalStatus where
  parser = (LoadBalancerTLSCertificateRenewalStatus' . mk) <$> takeText

instance ToText LoadBalancerTLSCertificateRenewalStatus where
  toText (LoadBalancerTLSCertificateRenewalStatus' ci) = original ci

instance Hashable LoadBalancerTLSCertificateRenewalStatus

instance NFData LoadBalancerTLSCertificateRenewalStatus

instance ToByteString LoadBalancerTLSCertificateRenewalStatus

instance ToQuery LoadBalancerTLSCertificateRenewalStatus

instance ToHeader LoadBalancerTLSCertificateRenewalStatus

instance FromJSON LoadBalancerTLSCertificateRenewalStatus where
  parseJSON = parseJSONText "LoadBalancerTLSCertificateRenewalStatus"
