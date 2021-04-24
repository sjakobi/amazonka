{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.CertificateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.CertificateType
  ( CertificateType
      ( ..,
        AmazonIssued,
        Imported,
        Private
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateType = CertificateType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AmazonIssued :: CertificateType
pattern AmazonIssued = CertificateType' "AMAZON_ISSUED"

pattern Imported :: CertificateType
pattern Imported = CertificateType' "IMPORTED"

pattern Private :: CertificateType
pattern Private = CertificateType' "PRIVATE"

{-# COMPLETE
  AmazonIssued,
  Imported,
  Private,
  CertificateType'
  #-}

instance FromText CertificateType where
  parser = (CertificateType' . mk) <$> takeText

instance ToText CertificateType where
  toText (CertificateType' ci) = original ci

instance Hashable CertificateType

instance NFData CertificateType

instance ToByteString CertificateType

instance ToQuery CertificateType

instance ToHeader CertificateType

instance FromJSON CertificateType where
  parseJSON = parseJSONText "CertificateType"
