{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateDomainStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateDomainStatus
  ( LoadBalancerTLSCertificateDomainStatus
      ( ..,
        LBTCDSFailed,
        LBTCDSPendingValidation,
        LBTCDSSuccess
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerTLSCertificateDomainStatus
  = LoadBalancerTLSCertificateDomainStatus'
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

pattern LBTCDSFailed :: LoadBalancerTLSCertificateDomainStatus
pattern LBTCDSFailed = LoadBalancerTLSCertificateDomainStatus' "FAILED"

pattern LBTCDSPendingValidation :: LoadBalancerTLSCertificateDomainStatus
pattern LBTCDSPendingValidation = LoadBalancerTLSCertificateDomainStatus' "PENDING_VALIDATION"

pattern LBTCDSSuccess :: LoadBalancerTLSCertificateDomainStatus
pattern LBTCDSSuccess = LoadBalancerTLSCertificateDomainStatus' "SUCCESS"

{-# COMPLETE
  LBTCDSFailed,
  LBTCDSPendingValidation,
  LBTCDSSuccess,
  LoadBalancerTLSCertificateDomainStatus'
  #-}

instance FromText LoadBalancerTLSCertificateDomainStatus where
  parser = (LoadBalancerTLSCertificateDomainStatus' . mk) <$> takeText

instance ToText LoadBalancerTLSCertificateDomainStatus where
  toText (LoadBalancerTLSCertificateDomainStatus' ci) = original ci

instance Hashable LoadBalancerTLSCertificateDomainStatus

instance NFData LoadBalancerTLSCertificateDomainStatus

instance ToByteString LoadBalancerTLSCertificateDomainStatus

instance ToQuery LoadBalancerTLSCertificateDomainStatus

instance ToHeader LoadBalancerTLSCertificateDomainStatus

instance FromJSON LoadBalancerTLSCertificateDomainStatus where
  parseJSON = parseJSONText "LoadBalancerTLSCertificateDomainStatus"
