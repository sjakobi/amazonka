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
-- Module      : Network.AWS.MediaLive.Types.HlsManifestCompression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsManifestCompression
  ( HlsManifestCompression
      ( ..,
        HlsManifestCompressionGZIP,
        HlsManifestCompressionNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Hls Manifest Compression
newtype HlsManifestCompression = HlsManifestCompression'
  { fromHlsManifestCompression ::
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

pattern HlsManifestCompressionGZIP :: HlsManifestCompression
pattern HlsManifestCompressionGZIP = HlsManifestCompression' "GZIP"

pattern HlsManifestCompressionNONE :: HlsManifestCompression
pattern HlsManifestCompressionNONE = HlsManifestCompression' "NONE"

{-# COMPLETE
  HlsManifestCompressionGZIP,
  HlsManifestCompressionNONE,
  HlsManifestCompression'
  #-}

instance Prelude.FromText HlsManifestCompression where
  parser = HlsManifestCompression' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsManifestCompression where
  toText (HlsManifestCompression' x) = x

instance Prelude.Hashable HlsManifestCompression

instance Prelude.NFData HlsManifestCompression

instance Prelude.ToByteString HlsManifestCompression

instance Prelude.ToQuery HlsManifestCompression

instance Prelude.ToHeader HlsManifestCompression

instance Prelude.ToJSON HlsManifestCompression where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsManifestCompression where
  parseJSON = Prelude.parseJSONText "HlsManifestCompression"
