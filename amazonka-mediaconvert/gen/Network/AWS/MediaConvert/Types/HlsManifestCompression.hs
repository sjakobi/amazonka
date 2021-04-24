{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsManifestCompression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsManifestCompression
  ( HlsManifestCompression
      ( ..,
        HMCGzip,
        HMCNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to GZIP, compresses HLS playlist.
data HlsManifestCompression
  = HlsManifestCompression'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HMCGzip :: HlsManifestCompression
pattern HMCGzip = HlsManifestCompression' "GZIP"

pattern HMCNone :: HlsManifestCompression
pattern HMCNone = HlsManifestCompression' "NONE"

{-# COMPLETE
  HMCGzip,
  HMCNone,
  HlsManifestCompression'
  #-}

instance FromText HlsManifestCompression where
  parser = (HlsManifestCompression' . mk) <$> takeText

instance ToText HlsManifestCompression where
  toText (HlsManifestCompression' ci) = original ci

instance Hashable HlsManifestCompression

instance NFData HlsManifestCompression

instance ToByteString HlsManifestCompression

instance ToQuery HlsManifestCompression

instance ToHeader HlsManifestCompression

instance ToJSON HlsManifestCompression where
  toJSON = toJSONText

instance FromJSON HlsManifestCompression where
  parseJSON = parseJSONText "HlsManifestCompression"
