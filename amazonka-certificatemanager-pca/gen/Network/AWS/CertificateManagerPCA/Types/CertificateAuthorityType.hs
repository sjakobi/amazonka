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
-- Module      : Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityType
  ( CertificateAuthorityType
      ( ..,
        CertificateAuthorityTypeROOT,
        CertificateAuthorityTypeSUBORDINATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CertificateAuthorityType = CertificateAuthorityType'
  { fromCertificateAuthorityType ::
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

pattern CertificateAuthorityTypeROOT :: CertificateAuthorityType
pattern CertificateAuthorityTypeROOT = CertificateAuthorityType' "ROOT"

pattern CertificateAuthorityTypeSUBORDINATE :: CertificateAuthorityType
pattern CertificateAuthorityTypeSUBORDINATE = CertificateAuthorityType' "SUBORDINATE"

{-# COMPLETE
  CertificateAuthorityTypeROOT,
  CertificateAuthorityTypeSUBORDINATE,
  CertificateAuthorityType'
  #-}

instance Prelude.FromText CertificateAuthorityType where
  parser = CertificateAuthorityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CertificateAuthorityType where
  toText (CertificateAuthorityType' x) = x

instance Prelude.Hashable CertificateAuthorityType

instance Prelude.NFData CertificateAuthorityType

instance Prelude.ToByteString CertificateAuthorityType

instance Prelude.ToQuery CertificateAuthorityType

instance Prelude.ToHeader CertificateAuthorityType

instance Prelude.ToJSON CertificateAuthorityType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CertificateAuthorityType where
  parseJSON = Prelude.parseJSONText "CertificateAuthorityType"
