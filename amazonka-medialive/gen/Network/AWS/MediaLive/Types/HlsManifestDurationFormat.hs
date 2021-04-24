{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.HlsManifestDurationFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.HlsManifestDurationFormat
  ( HlsManifestDurationFormat
      ( ..,
        FloatingPoint,
        Integer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Hls Manifest Duration Format
data HlsManifestDurationFormat
  = HlsManifestDurationFormat'
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

pattern FloatingPoint :: HlsManifestDurationFormat
pattern FloatingPoint = HlsManifestDurationFormat' "FLOATING_POINT"

pattern Integer :: HlsManifestDurationFormat
pattern Integer = HlsManifestDurationFormat' "INTEGER"

{-# COMPLETE
  FloatingPoint,
  Integer,
  HlsManifestDurationFormat'
  #-}

instance FromText HlsManifestDurationFormat where
  parser = (HlsManifestDurationFormat' . mk) <$> takeText

instance ToText HlsManifestDurationFormat where
  toText (HlsManifestDurationFormat' ci) = original ci

instance Hashable HlsManifestDurationFormat

instance NFData HlsManifestDurationFormat

instance ToByteString HlsManifestDurationFormat

instance ToQuery HlsManifestDurationFormat

instance ToHeader HlsManifestDurationFormat

instance ToJSON HlsManifestDurationFormat where
  toJSON = toJSONText

instance FromJSON HlsManifestDurationFormat where
  parseJSON = parseJSONText "HlsManifestDurationFormat"
