{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        CertificateSourceAcm,
        CertificateSourceCloudfront,
        CertificateSourceIam
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CertificateSource = CertificateSource'
  { fromCertificateSource ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern CertificateSourceAcm :: CertificateSource
pattern CertificateSourceAcm = CertificateSource' "acm"

pattern CertificateSourceCloudfront :: CertificateSource
pattern CertificateSourceCloudfront = CertificateSource' "cloudfront"

pattern CertificateSourceIam :: CertificateSource
pattern CertificateSourceIam = CertificateSource' "iam"

{-# COMPLETE
  CertificateSourceAcm,
  CertificateSourceCloudfront,
  CertificateSourceIam,
  CertificateSource'
  #-}

instance Prelude.FromText CertificateSource where
  parser = CertificateSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText CertificateSource where
  toText (CertificateSource' x) = x

instance Prelude.Hashable CertificateSource

instance Prelude.NFData CertificateSource

instance Prelude.ToByteString CertificateSource

instance Prelude.ToQuery CertificateSource

instance Prelude.ToHeader CertificateSource

instance Prelude.FromXML CertificateSource where
  parseXML = Prelude.parseXMLText "CertificateSource"

instance Prelude.ToXML CertificateSource where
  toXML = Prelude.toXMLText
