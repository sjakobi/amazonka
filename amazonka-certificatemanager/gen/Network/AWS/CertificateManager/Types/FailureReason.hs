{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.FailureReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.FailureReason
  ( FailureReason
      ( ..,
        AdditionalVerificationRequired,
        CaaError,
        DomainNotAllowed,
        DomainValidationDenied,
        InvalidPublicDomain,
        NoAvailableContacts,
        Other,
        PcaAccessDenied,
        PcaInvalidARN,
        PcaInvalidArgs,
        PcaInvalidDuration,
        PcaInvalidState,
        PcaLimitExceeded,
        PcaNameConstraintsValidation,
        PcaRequestFailed,
        PcaResourceNotFound,
        SlrNotFound
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FailureReason = FailureReason' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AdditionalVerificationRequired :: FailureReason
pattern AdditionalVerificationRequired = FailureReason' "ADDITIONAL_VERIFICATION_REQUIRED"

pattern CaaError :: FailureReason
pattern CaaError = FailureReason' "CAA_ERROR"

pattern DomainNotAllowed :: FailureReason
pattern DomainNotAllowed = FailureReason' "DOMAIN_NOT_ALLOWED"

pattern DomainValidationDenied :: FailureReason
pattern DomainValidationDenied = FailureReason' "DOMAIN_VALIDATION_DENIED"

pattern InvalidPublicDomain :: FailureReason
pattern InvalidPublicDomain = FailureReason' "INVALID_PUBLIC_DOMAIN"

pattern NoAvailableContacts :: FailureReason
pattern NoAvailableContacts = FailureReason' "NO_AVAILABLE_CONTACTS"

pattern Other :: FailureReason
pattern Other = FailureReason' "OTHER"

pattern PcaAccessDenied :: FailureReason
pattern PcaAccessDenied = FailureReason' "PCA_ACCESS_DENIED"

pattern PcaInvalidARN :: FailureReason
pattern PcaInvalidARN = FailureReason' "PCA_INVALID_ARN"

pattern PcaInvalidArgs :: FailureReason
pattern PcaInvalidArgs = FailureReason' "PCA_INVALID_ARGS"

pattern PcaInvalidDuration :: FailureReason
pattern PcaInvalidDuration = FailureReason' "PCA_INVALID_DURATION"

pattern PcaInvalidState :: FailureReason
pattern PcaInvalidState = FailureReason' "PCA_INVALID_STATE"

pattern PcaLimitExceeded :: FailureReason
pattern PcaLimitExceeded = FailureReason' "PCA_LIMIT_EXCEEDED"

pattern PcaNameConstraintsValidation :: FailureReason
pattern PcaNameConstraintsValidation = FailureReason' "PCA_NAME_CONSTRAINTS_VALIDATION"

pattern PcaRequestFailed :: FailureReason
pattern PcaRequestFailed = FailureReason' "PCA_REQUEST_FAILED"

pattern PcaResourceNotFound :: FailureReason
pattern PcaResourceNotFound = FailureReason' "PCA_RESOURCE_NOT_FOUND"

pattern SlrNotFound :: FailureReason
pattern SlrNotFound = FailureReason' "SLR_NOT_FOUND"

{-# COMPLETE
  AdditionalVerificationRequired,
  CaaError,
  DomainNotAllowed,
  DomainValidationDenied,
  InvalidPublicDomain,
  NoAvailableContacts,
  Other,
  PcaAccessDenied,
  PcaInvalidARN,
  PcaInvalidArgs,
  PcaInvalidDuration,
  PcaInvalidState,
  PcaLimitExceeded,
  PcaNameConstraintsValidation,
  PcaRequestFailed,
  PcaResourceNotFound,
  SlrNotFound,
  FailureReason'
  #-}

instance FromText FailureReason where
  parser = (FailureReason' . mk) <$> takeText

instance ToText FailureReason where
  toText (FailureReason' ci) = original ci

instance Hashable FailureReason

instance NFData FailureReason

instance ToByteString FailureReason

instance ToQuery FailureReason

instance ToHeader FailureReason

instance FromJSON FailureReason where
  parseJSON = parseJSONText "FailureReason"
