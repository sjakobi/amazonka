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
-- Module      : Network.AWS.MediaConvert.Types.HlsCodecSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsCodecSpecification
  ( HlsCodecSpecification
      ( ..,
        HlsCodecSpecificationRFC4281,
        HlsCodecSpecificationRFC6381
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specification to use (RFC-6381 or the default RFC-4281) during m3u8
-- playlist generation.
newtype HlsCodecSpecification = HlsCodecSpecification'
  { fromHlsCodecSpecification ::
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

pattern HlsCodecSpecificationRFC4281 :: HlsCodecSpecification
pattern HlsCodecSpecificationRFC4281 = HlsCodecSpecification' "RFC_4281"

pattern HlsCodecSpecificationRFC6381 :: HlsCodecSpecification
pattern HlsCodecSpecificationRFC6381 = HlsCodecSpecification' "RFC_6381"

{-# COMPLETE
  HlsCodecSpecificationRFC4281,
  HlsCodecSpecificationRFC6381,
  HlsCodecSpecification'
  #-}

instance Prelude.FromText HlsCodecSpecification where
  parser = HlsCodecSpecification' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsCodecSpecification where
  toText (HlsCodecSpecification' x) = x

instance Prelude.Hashable HlsCodecSpecification

instance Prelude.NFData HlsCodecSpecification

instance Prelude.ToByteString HlsCodecSpecification

instance Prelude.ToQuery HlsCodecSpecification

instance Prelude.ToHeader HlsCodecSpecification

instance Prelude.ToJSON HlsCodecSpecification where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsCodecSpecification where
  parseJSON = Prelude.parseJSONText "HlsCodecSpecification"
