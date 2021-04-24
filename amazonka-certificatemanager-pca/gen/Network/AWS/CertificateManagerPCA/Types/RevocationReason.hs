{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.RevocationReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.RevocationReason
  ( RevocationReason
      ( ..,
        AACompromise,
        AffiliationChanged,
        CertificateAuthorityCompromise,
        CessationOfOperation,
        KeyCompromise,
        PrivilegeWithdrawn,
        Superseded,
        Unspecified
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RevocationReason = RevocationReason' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AACompromise :: RevocationReason
pattern AACompromise = RevocationReason' "A_A_COMPROMISE"

pattern AffiliationChanged :: RevocationReason
pattern AffiliationChanged = RevocationReason' "AFFILIATION_CHANGED"

pattern CertificateAuthorityCompromise :: RevocationReason
pattern CertificateAuthorityCompromise = RevocationReason' "CERTIFICATE_AUTHORITY_COMPROMISE"

pattern CessationOfOperation :: RevocationReason
pattern CessationOfOperation = RevocationReason' "CESSATION_OF_OPERATION"

pattern KeyCompromise :: RevocationReason
pattern KeyCompromise = RevocationReason' "KEY_COMPROMISE"

pattern PrivilegeWithdrawn :: RevocationReason
pattern PrivilegeWithdrawn = RevocationReason' "PRIVILEGE_WITHDRAWN"

pattern Superseded :: RevocationReason
pattern Superseded = RevocationReason' "SUPERSEDED"

pattern Unspecified :: RevocationReason
pattern Unspecified = RevocationReason' "UNSPECIFIED"

{-# COMPLETE
  AACompromise,
  AffiliationChanged,
  CertificateAuthorityCompromise,
  CessationOfOperation,
  KeyCompromise,
  PrivilegeWithdrawn,
  Superseded,
  Unspecified,
  RevocationReason'
  #-}

instance FromText RevocationReason where
  parser = (RevocationReason' . mk) <$> takeText

instance ToText RevocationReason where
  toText (RevocationReason' ci) = original ci

instance Hashable RevocationReason

instance NFData RevocationReason

instance ToByteString RevocationReason

instance ToQuery RevocationReason

instance ToHeader RevocationReason

instance ToJSON RevocationReason where
  toJSON = toJSONText
