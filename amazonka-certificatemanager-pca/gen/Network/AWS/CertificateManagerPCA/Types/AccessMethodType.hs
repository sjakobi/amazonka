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
-- Module      : Network.AWS.CertificateManagerPCA.Types.AccessMethodType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.AccessMethodType
  ( AccessMethodType
      ( ..,
        AccessMethodTypeCAREPOSITORY,
        AccessMethodTypeRESOURCEPKIMANIFEST,
        AccessMethodTypeRESOURCEPKINOTIFY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccessMethodType = AccessMethodType'
  { fromAccessMethodType ::
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

pattern AccessMethodTypeCAREPOSITORY :: AccessMethodType
pattern AccessMethodTypeCAREPOSITORY = AccessMethodType' "CA_REPOSITORY"

pattern AccessMethodTypeRESOURCEPKIMANIFEST :: AccessMethodType
pattern AccessMethodTypeRESOURCEPKIMANIFEST = AccessMethodType' "RESOURCE_PKI_MANIFEST"

pattern AccessMethodTypeRESOURCEPKINOTIFY :: AccessMethodType
pattern AccessMethodTypeRESOURCEPKINOTIFY = AccessMethodType' "RESOURCE_PKI_NOTIFY"

{-# COMPLETE
  AccessMethodTypeCAREPOSITORY,
  AccessMethodTypeRESOURCEPKIMANIFEST,
  AccessMethodTypeRESOURCEPKINOTIFY,
  AccessMethodType'
  #-}

instance Prelude.FromText AccessMethodType where
  parser = AccessMethodType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccessMethodType where
  toText (AccessMethodType' x) = x

instance Prelude.Hashable AccessMethodType

instance Prelude.NFData AccessMethodType

instance Prelude.ToByteString AccessMethodType

instance Prelude.ToQuery AccessMethodType

instance Prelude.ToHeader AccessMethodType

instance Prelude.ToJSON AccessMethodType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AccessMethodType where
  parseJSON = Prelude.parseJSONText "AccessMethodType"
