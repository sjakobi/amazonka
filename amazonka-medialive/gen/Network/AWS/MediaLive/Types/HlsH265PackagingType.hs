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
-- Module      : Network.AWS.MediaLive.Types.HlsH265PackagingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsH265PackagingType
  ( HlsH265PackagingType
      ( ..,
        HlsH265PackagingTypeHEV1,
        HlsH265PackagingTypeHVC1
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls H265 Packaging Type
newtype HlsH265PackagingType = HlsH265PackagingType'
  { fromHlsH265PackagingType ::
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

pattern HlsH265PackagingTypeHEV1 :: HlsH265PackagingType
pattern HlsH265PackagingTypeHEV1 = HlsH265PackagingType' "HEV1"

pattern HlsH265PackagingTypeHVC1 :: HlsH265PackagingType
pattern HlsH265PackagingTypeHVC1 = HlsH265PackagingType' "HVC1"

{-# COMPLETE
  HlsH265PackagingTypeHEV1,
  HlsH265PackagingTypeHVC1,
  HlsH265PackagingType'
  #-}

instance Prelude.FromText HlsH265PackagingType where
  parser = HlsH265PackagingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsH265PackagingType where
  toText (HlsH265PackagingType' x) = x

instance Prelude.Hashable HlsH265PackagingType

instance Prelude.NFData HlsH265PackagingType

instance Prelude.ToByteString HlsH265PackagingType

instance Prelude.ToQuery HlsH265PackagingType

instance Prelude.ToHeader HlsH265PackagingType

instance Prelude.ToJSON HlsH265PackagingType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsH265PackagingType where
  parseJSON = Prelude.parseJSONText "HlsH265PackagingType"
