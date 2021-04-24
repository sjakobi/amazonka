{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsAudioOnlyHeader
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsAudioOnlyHeader
  ( HlsAudioOnlyHeader
      ( ..,
        HAOHExclude,
        HAOHInclude
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ignore this setting unless you are using FairPlay DRM with Verimatrix and you encounter playback issues. Keep the default value, Include (INCLUDE), to output audio-only headers. Choose Exclude (EXCLUDE) to remove the audio-only headers from your audio segments.
data HlsAudioOnlyHeader
  = HlsAudioOnlyHeader'
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

pattern HAOHExclude :: HlsAudioOnlyHeader
pattern HAOHExclude = HlsAudioOnlyHeader' "EXCLUDE"

pattern HAOHInclude :: HlsAudioOnlyHeader
pattern HAOHInclude = HlsAudioOnlyHeader' "INCLUDE"

{-# COMPLETE
  HAOHExclude,
  HAOHInclude,
  HlsAudioOnlyHeader'
  #-}

instance FromText HlsAudioOnlyHeader where
  parser = (HlsAudioOnlyHeader' . mk) <$> takeText

instance ToText HlsAudioOnlyHeader where
  toText (HlsAudioOnlyHeader' ci) = original ci

instance Hashable HlsAudioOnlyHeader

instance NFData HlsAudioOnlyHeader

instance ToByteString HlsAudioOnlyHeader

instance ToQuery HlsAudioOnlyHeader

instance ToHeader HlsAudioOnlyHeader

instance ToJSON HlsAudioOnlyHeader where
  toJSON = toJSONText

instance FromJSON HlsAudioOnlyHeader where
  parseJSON = parseJSONText "HlsAudioOnlyHeader"
