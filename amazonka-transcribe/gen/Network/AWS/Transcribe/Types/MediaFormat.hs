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
-- Module      : Network.AWS.Transcribe.Types.MediaFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.MediaFormat
  ( MediaFormat
      ( ..,
        MediaFormatAmr,
        MediaFormatFlac,
        MediaFormatMP3,
        MediaFormatMP4,
        MediaFormatOgg,
        MediaFormatWav,
        MediaFormatWebm
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MediaFormat = MediaFormat'
  { fromMediaFormat ::
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

pattern MediaFormatAmr :: MediaFormat
pattern MediaFormatAmr = MediaFormat' "amr"

pattern MediaFormatFlac :: MediaFormat
pattern MediaFormatFlac = MediaFormat' "flac"

pattern MediaFormatMP3 :: MediaFormat
pattern MediaFormatMP3 = MediaFormat' "mp3"

pattern MediaFormatMP4 :: MediaFormat
pattern MediaFormatMP4 = MediaFormat' "mp4"

pattern MediaFormatOgg :: MediaFormat
pattern MediaFormatOgg = MediaFormat' "ogg"

pattern MediaFormatWav :: MediaFormat
pattern MediaFormatWav = MediaFormat' "wav"

pattern MediaFormatWebm :: MediaFormat
pattern MediaFormatWebm = MediaFormat' "webm"

{-# COMPLETE
  MediaFormatAmr,
  MediaFormatFlac,
  MediaFormatMP3,
  MediaFormatMP4,
  MediaFormatOgg,
  MediaFormatWav,
  MediaFormatWebm,
  MediaFormat'
  #-}

instance Prelude.FromText MediaFormat where
  parser = MediaFormat' Prelude.<$> Prelude.takeText

instance Prelude.ToText MediaFormat where
  toText (MediaFormat' x) = x

instance Prelude.Hashable MediaFormat

instance Prelude.NFData MediaFormat

instance Prelude.ToByteString MediaFormat

instance Prelude.ToQuery MediaFormat

instance Prelude.ToHeader MediaFormat

instance Prelude.ToJSON MediaFormat where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MediaFormat where
  parseJSON = Prelude.parseJSONText "MediaFormat"
