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
-- Module      : Network.AWS.DirectoryService.Types.CertificateType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.CertificateType
  ( CertificateType
      ( ..,
        CertificateTypeClientCertAuth,
        CertificateTypeClientLDAPS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CertificateType = CertificateType'
  { fromCertificateType ::
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

pattern CertificateTypeClientCertAuth :: CertificateType
pattern CertificateTypeClientCertAuth = CertificateType' "ClientCertAuth"

pattern CertificateTypeClientLDAPS :: CertificateType
pattern CertificateTypeClientLDAPS = CertificateType' "ClientLDAPS"

{-# COMPLETE
  CertificateTypeClientCertAuth,
  CertificateTypeClientLDAPS,
  CertificateType'
  #-}

instance Prelude.FromText CertificateType where
  parser = CertificateType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CertificateType where
  toText (CertificateType' x) = x

instance Prelude.Hashable CertificateType

instance Prelude.NFData CertificateType

instance Prelude.ToByteString CertificateType

instance Prelude.ToQuery CertificateType

instance Prelude.ToHeader CertificateType

instance Prelude.ToJSON CertificateType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CertificateType where
  parseJSON = Prelude.parseJSONText "CertificateType"
