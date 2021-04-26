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
-- Module      : Network.AWS.MediaConvert.Types.CmafCodecSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafCodecSpecification
  ( CmafCodecSpecification
      ( ..,
        CmafCodecSpecificationRFC4281,
        CmafCodecSpecificationRFC6381
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specification to use (RFC-6381 or the default RFC-4281) during m3u8
-- playlist generation.
newtype CmafCodecSpecification = CmafCodecSpecification'
  { fromCmafCodecSpecification ::
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

pattern CmafCodecSpecificationRFC4281 :: CmafCodecSpecification
pattern CmafCodecSpecificationRFC4281 = CmafCodecSpecification' "RFC_4281"

pattern CmafCodecSpecificationRFC6381 :: CmafCodecSpecification
pattern CmafCodecSpecificationRFC6381 = CmafCodecSpecification' "RFC_6381"

{-# COMPLETE
  CmafCodecSpecificationRFC4281,
  CmafCodecSpecificationRFC6381,
  CmafCodecSpecification'
  #-}

instance Prelude.FromText CmafCodecSpecification where
  parser = CmafCodecSpecification' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafCodecSpecification where
  toText (CmafCodecSpecification' x) = x

instance Prelude.Hashable CmafCodecSpecification

instance Prelude.NFData CmafCodecSpecification

instance Prelude.ToByteString CmafCodecSpecification

instance Prelude.ToQuery CmafCodecSpecification

instance Prelude.ToHeader CmafCodecSpecification

instance Prelude.ToJSON CmafCodecSpecification where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafCodecSpecification where
  parseJSON = Prelude.parseJSONText "CmafCodecSpecification"
