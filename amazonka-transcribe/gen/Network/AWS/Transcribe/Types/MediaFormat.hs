{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.MediaFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.MediaFormat
  ( MediaFormat
      ( ..,
        Amr,
        Flac,
        MP3,
        MP4,
        Ogg,
        Wav,
        Webm
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MediaFormat = MediaFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Amr :: MediaFormat
pattern Amr = MediaFormat' "amr"

pattern Flac :: MediaFormat
pattern Flac = MediaFormat' "flac"

pattern MP3 :: MediaFormat
pattern MP3 = MediaFormat' "mp3"

pattern MP4 :: MediaFormat
pattern MP4 = MediaFormat' "mp4"

pattern Ogg :: MediaFormat
pattern Ogg = MediaFormat' "ogg"

pattern Wav :: MediaFormat
pattern Wav = MediaFormat' "wav"

pattern Webm :: MediaFormat
pattern Webm = MediaFormat' "webm"

{-# COMPLETE
  Amr,
  Flac,
  MP3,
  MP4,
  Ogg,
  Wav,
  Webm,
  MediaFormat'
  #-}

instance FromText MediaFormat where
  parser = (MediaFormat' . mk) <$> takeText

instance ToText MediaFormat where
  toText (MediaFormat' ci) = original ci

instance Hashable MediaFormat

instance NFData MediaFormat

instance ToByteString MediaFormat

instance ToQuery MediaFormat

instance ToHeader MediaFormat

instance ToJSON MediaFormat where
  toJSON = toJSONText

instance FromJSON MediaFormat where
  parseJSON = parseJSONText "MediaFormat"
