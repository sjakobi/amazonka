{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityType
  ( CertificateAuthorityType
      ( ..,
        Root,
        Subordinate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateAuthorityType
  = CertificateAuthorityType'
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

pattern Root :: CertificateAuthorityType
pattern Root = CertificateAuthorityType' "ROOT"

pattern Subordinate :: CertificateAuthorityType
pattern Subordinate = CertificateAuthorityType' "SUBORDINATE"

{-# COMPLETE
  Root,
  Subordinate,
  CertificateAuthorityType'
  #-}

instance FromText CertificateAuthorityType where
  parser = (CertificateAuthorityType' . mk) <$> takeText

instance ToText CertificateAuthorityType where
  toText (CertificateAuthorityType' ci) = original ci

instance Hashable CertificateAuthorityType

instance NFData CertificateAuthorityType

instance ToByteString CertificateAuthorityType

instance ToQuery CertificateAuthorityType

instance ToHeader CertificateAuthorityType

instance ToJSON CertificateAuthorityType where
  toJSON = toJSONText

instance FromJSON CertificateAuthorityType where
  parseJSON = parseJSONText "CertificateAuthorityType"
