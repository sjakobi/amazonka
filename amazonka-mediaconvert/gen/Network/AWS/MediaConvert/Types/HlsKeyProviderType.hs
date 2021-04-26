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
-- Module      : Network.AWS.MediaConvert.Types.HlsKeyProviderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsKeyProviderType
  ( HlsKeyProviderType
      ( ..,
        HlsKeyProviderTypeSPEKE,
        HlsKeyProviderTypeSTATICKEY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether your DRM encryption key is static or from a key provider
-- that follows the SPEKE standard. For more information about SPEKE, see
-- https:\/\/docs.aws.amazon.com\/speke\/latest\/documentation\/what-is-speke.html.
newtype HlsKeyProviderType = HlsKeyProviderType'
  { fromHlsKeyProviderType ::
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

pattern HlsKeyProviderTypeSPEKE :: HlsKeyProviderType
pattern HlsKeyProviderTypeSPEKE = HlsKeyProviderType' "SPEKE"

pattern HlsKeyProviderTypeSTATICKEY :: HlsKeyProviderType
pattern HlsKeyProviderTypeSTATICKEY = HlsKeyProviderType' "STATIC_KEY"

{-# COMPLETE
  HlsKeyProviderTypeSPEKE,
  HlsKeyProviderTypeSTATICKEY,
  HlsKeyProviderType'
  #-}

instance Prelude.FromText HlsKeyProviderType where
  parser = HlsKeyProviderType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsKeyProviderType where
  toText (HlsKeyProviderType' x) = x

instance Prelude.Hashable HlsKeyProviderType

instance Prelude.NFData HlsKeyProviderType

instance Prelude.ToByteString HlsKeyProviderType

instance Prelude.ToQuery HlsKeyProviderType

instance Prelude.ToHeader HlsKeyProviderType

instance Prelude.ToJSON HlsKeyProviderType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsKeyProviderType where
  parseJSON = Prelude.parseJSONText "HlsKeyProviderType"
