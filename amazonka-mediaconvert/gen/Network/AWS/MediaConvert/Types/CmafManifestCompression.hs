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
-- Module      : Network.AWS.MediaConvert.Types.CmafManifestCompression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafManifestCompression
  ( CmafManifestCompression
      ( ..,
        CmafManifestCompressionGZIP,
        CmafManifestCompressionNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to GZIP, compresses HLS playlist.
newtype CmafManifestCompression = CmafManifestCompression'
  { fromCmafManifestCompression ::
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

pattern CmafManifestCompressionGZIP :: CmafManifestCompression
pattern CmafManifestCompressionGZIP = CmafManifestCompression' "GZIP"

pattern CmafManifestCompressionNONE :: CmafManifestCompression
pattern CmafManifestCompressionNONE = CmafManifestCompression' "NONE"

{-# COMPLETE
  CmafManifestCompressionGZIP,
  CmafManifestCompressionNONE,
  CmafManifestCompression'
  #-}

instance Prelude.FromText CmafManifestCompression where
  parser = CmafManifestCompression' Prelude.<$> Prelude.takeText

instance Prelude.ToText CmafManifestCompression where
  toText (CmafManifestCompression' x) = x

instance Prelude.Hashable CmafManifestCompression

instance Prelude.NFData CmafManifestCompression

instance Prelude.ToByteString CmafManifestCompression

instance Prelude.ToQuery CmafManifestCompression

instance Prelude.ToHeader CmafManifestCompression

instance Prelude.ToJSON CmafManifestCompression where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CmafManifestCompression where
  parseJSON = Prelude.parseJSONText "CmafManifestCompression"
