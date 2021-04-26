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
-- Module      : Network.AWS.MediaConvert.Types.CmafKeyProviderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafKeyProviderType
  ( CmafKeyProviderType
      ( ..,
        CmafKeyProviderTypeSPEKE,
        CmafKeyProviderTypeSTATICKEY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether your DRM encryption key is static or from a key provider
-- that follows the SPEKE standard. For more information about SPEKE, see
-- https:\/\/docs.aws.amazon.com\/speke\/latest\/documentation\/what-is-speke.html.
newtype CmafKeyProviderType = CmafKeyProviderType'
  { fromCmafKeyProviderType ::
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

pattern CmafKeyProviderTypeSPEKE :: CmafKeyProviderType
pattern CmafKeyProviderTypeSPEKE = CmafKeyProviderType' "SPEKE"

pattern CmafKeyProviderTypeSTATICKEY :: CmafKeyProviderType
pattern CmafKeyProviderTypeSTATICKEY = CmafKeyProviderType' "STATIC_KEY"

{-# COMPLETE
  CmafKeyProviderTypeSPEKE,
  CmafKeyProviderTypeSTATICKEY,
  CmafKeyProviderType'
  #-}

instance Prelude.FromText CmafKeyProviderType where
  parser = CmafKeyProviderType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafKeyProviderType where
  toText (CmafKeyProviderType' x) = x

instance Prelude.Hashable CmafKeyProviderType

instance Prelude.NFData CmafKeyProviderType

instance Prelude.ToByteString CmafKeyProviderType

instance Prelude.ToQuery CmafKeyProviderType

instance Prelude.ToHeader CmafKeyProviderType

instance Prelude.ToJSON CmafKeyProviderType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafKeyProviderType where
  parseJSON = Prelude.parseJSONText "CmafKeyProviderType"
