{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsAudioOnlyContainer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsAudioOnlyContainer
  ( HlsAudioOnlyContainer
      ( ..,
        HAOCAutomatic,
        HAOCM2TS
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use this setting only in audio-only outputs. Choose MPEG-2 Transport Stream (M2TS) to create a file in an MPEG2-TS container. Keep the default value Automatic (AUTOMATIC) to create a raw audio-only file with no container. Regardless of the value that you specify here, if this output has video, the service will place outputs into an MPEG2-TS container.
data HlsAudioOnlyContainer
  = HlsAudioOnlyContainer'
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

pattern HAOCAutomatic :: HlsAudioOnlyContainer
pattern HAOCAutomatic = HlsAudioOnlyContainer' "AUTOMATIC"

pattern HAOCM2TS :: HlsAudioOnlyContainer
pattern HAOCM2TS = HlsAudioOnlyContainer' "M2TS"

{-# COMPLETE
  HAOCAutomatic,
  HAOCM2TS,
  HlsAudioOnlyContainer'
  #-}

instance FromText HlsAudioOnlyContainer where
  parser = (HlsAudioOnlyContainer' . mk) <$> takeText

instance ToText HlsAudioOnlyContainer where
  toText (HlsAudioOnlyContainer' ci) = original ci

instance Hashable HlsAudioOnlyContainer

instance NFData HlsAudioOnlyContainer

instance ToByteString HlsAudioOnlyContainer

instance ToQuery HlsAudioOnlyContainer

instance ToHeader HlsAudioOnlyContainer

instance ToJSON HlsAudioOnlyContainer where
  toJSON = toJSONText

instance FromJSON HlsAudioOnlyContainer where
  parseJSON = parseJSONText "HlsAudioOnlyContainer"
