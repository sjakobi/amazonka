{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.CertificateSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.CertificateSource
  ( CertificateSource
      ( ..,
        Acm,
        Cloudfront,
        IAM
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CertificateSource = CertificateSource' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Acm :: CertificateSource
pattern Acm = CertificateSource' "acm"

pattern Cloudfront :: CertificateSource
pattern Cloudfront = CertificateSource' "cloudfront"

pattern IAM :: CertificateSource
pattern IAM = CertificateSource' "iam"

{-# COMPLETE
  Acm,
  Cloudfront,
  IAM,
  CertificateSource'
  #-}

instance FromText CertificateSource where
  parser = (CertificateSource' . mk) <$> takeText

instance ToText CertificateSource where
  toText (CertificateSource' ci) = original ci

instance Hashable CertificateSource

instance NFData CertificateSource

instance ToByteString CertificateSource

instance ToQuery CertificateSource

instance ToHeader CertificateSource

instance FromXML CertificateSource where
  parseXML = parseXMLText "CertificateSource"

instance ToXML CertificateSource where
  toXML = toXMLText
