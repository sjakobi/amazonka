{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode
  ( DeviceStatusDetailCode
      ( ..,
        AssociationRejection,
        AuthenticationFailure,
        CertificateAuthorityAccessDenied,
        CertificateIssuingLimitExceeded,
        CredentialsAccessFailure,
        DHCPFailure,
        DNSFailure,
        DeviceSoftwareUpdateNeeded,
        DeviceWasOffline,
        InternetUnavailable,
        InvalidCertificateAuthority,
        InvalidPasswordState,
        NetworkProfileNotFound,
        PasswordManagerAccessDenied,
        PasswordNotFound,
        TLSVersionMismatch,
        UnknownFailure
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeviceStatusDetailCode
  = DeviceStatusDetailCode'
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

pattern AssociationRejection :: DeviceStatusDetailCode
pattern AssociationRejection = DeviceStatusDetailCode' "ASSOCIATION_REJECTION"

pattern AuthenticationFailure :: DeviceStatusDetailCode
pattern AuthenticationFailure = DeviceStatusDetailCode' "AUTHENTICATION_FAILURE"

pattern CertificateAuthorityAccessDenied :: DeviceStatusDetailCode
pattern CertificateAuthorityAccessDenied = DeviceStatusDetailCode' "CERTIFICATE_AUTHORITY_ACCESS_DENIED"

pattern CertificateIssuingLimitExceeded :: DeviceStatusDetailCode
pattern CertificateIssuingLimitExceeded = DeviceStatusDetailCode' "CERTIFICATE_ISSUING_LIMIT_EXCEEDED"

pattern CredentialsAccessFailure :: DeviceStatusDetailCode
pattern CredentialsAccessFailure = DeviceStatusDetailCode' "CREDENTIALS_ACCESS_FAILURE"

pattern DHCPFailure :: DeviceStatusDetailCode
pattern DHCPFailure = DeviceStatusDetailCode' "DHCP_FAILURE"

pattern DNSFailure :: DeviceStatusDetailCode
pattern DNSFailure = DeviceStatusDetailCode' "DNS_FAILURE"

pattern DeviceSoftwareUpdateNeeded :: DeviceStatusDetailCode
pattern DeviceSoftwareUpdateNeeded = DeviceStatusDetailCode' "DEVICE_SOFTWARE_UPDATE_NEEDED"

pattern DeviceWasOffline :: DeviceStatusDetailCode
pattern DeviceWasOffline = DeviceStatusDetailCode' "DEVICE_WAS_OFFLINE"

pattern InternetUnavailable :: DeviceStatusDetailCode
pattern InternetUnavailable = DeviceStatusDetailCode' "INTERNET_UNAVAILABLE"

pattern InvalidCertificateAuthority :: DeviceStatusDetailCode
pattern InvalidCertificateAuthority = DeviceStatusDetailCode' "INVALID_CERTIFICATE_AUTHORITY"

pattern InvalidPasswordState :: DeviceStatusDetailCode
pattern InvalidPasswordState = DeviceStatusDetailCode' "INVALID_PASSWORD_STATE"

pattern NetworkProfileNotFound :: DeviceStatusDetailCode
pattern NetworkProfileNotFound = DeviceStatusDetailCode' "NETWORK_PROFILE_NOT_FOUND"

pattern PasswordManagerAccessDenied :: DeviceStatusDetailCode
pattern PasswordManagerAccessDenied = DeviceStatusDetailCode' "PASSWORD_MANAGER_ACCESS_DENIED"

pattern PasswordNotFound :: DeviceStatusDetailCode
pattern PasswordNotFound = DeviceStatusDetailCode' "PASSWORD_NOT_FOUND"

pattern TLSVersionMismatch :: DeviceStatusDetailCode
pattern TLSVersionMismatch = DeviceStatusDetailCode' "TLS_VERSION_MISMATCH"

pattern UnknownFailure :: DeviceStatusDetailCode
pattern UnknownFailure = DeviceStatusDetailCode' "UNKNOWN_FAILURE"

{-# COMPLETE
  AssociationRejection,
  AuthenticationFailure,
  CertificateAuthorityAccessDenied,
  CertificateIssuingLimitExceeded,
  CredentialsAccessFailure,
  DHCPFailure,
  DNSFailure,
  DeviceSoftwareUpdateNeeded,
  DeviceWasOffline,
  InternetUnavailable,
  InvalidCertificateAuthority,
  InvalidPasswordState,
  NetworkProfileNotFound,
  PasswordManagerAccessDenied,
  PasswordNotFound,
  TLSVersionMismatch,
  UnknownFailure,
  DeviceStatusDetailCode'
  #-}

instance FromText DeviceStatusDetailCode where
  parser = (DeviceStatusDetailCode' . mk) <$> takeText

instance ToText DeviceStatusDetailCode where
  toText (DeviceStatusDetailCode' ci) = original ci

instance Hashable DeviceStatusDetailCode

instance NFData DeviceStatusDetailCode

instance ToByteString DeviceStatusDetailCode

instance ToQuery DeviceStatusDetailCode

instance ToHeader DeviceStatusDetailCode

instance FromJSON DeviceStatusDetailCode where
  parseJSON = parseJSONText "DeviceStatusDetailCode"
