{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CMCGzip,
        CMCNone
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | When set to GZIP, compresses HLS playlist.
data CmafManifestCompression
  = CmafManifestCompression'
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

pattern CMCGzip :: CmafManifestCompression
pattern CMCGzip = CmafManifestCompression' "GZIP"

pattern CMCNone :: CmafManifestCompression
pattern CMCNone = CmafManifestCompression' "NONE"

{-# COMPLETE
  CMCGzip,
  CMCNone,
  CmafManifestCompression'
  #-}

instance FromText CmafManifestCompression where
  parser = (CmafManifestCompression' . mk) <$> takeText

instance ToText CmafManifestCompression where
  toText (CmafManifestCompression' ci) = original ci

instance Hashable CmafManifestCompression

instance NFData CmafManifestCompression

instance ToByteString CmafManifestCompression

instance ToQuery CmafManifestCompression

instance ToHeader CmafManifestCompression

instance ToJSON CmafManifestCompression where
  toJSON = toJSONText

instance FromJSON CmafManifestCompression where
  parseJSON = parseJSONText "CmafManifestCompression"
