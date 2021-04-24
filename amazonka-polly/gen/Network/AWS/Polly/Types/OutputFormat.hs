{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Polly.Types.OutputFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.OutputFormat
  ( OutputFormat
      ( ..,
        JSON,
        MP3,
        OggVorbis,
        Pcm
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OutputFormat = OutputFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern JSON :: OutputFormat
pattern JSON = OutputFormat' "json"

pattern MP3 :: OutputFormat
pattern MP3 = OutputFormat' "mp3"

pattern OggVorbis :: OutputFormat
pattern OggVorbis = OutputFormat' "ogg_vorbis"

pattern Pcm :: OutputFormat
pattern Pcm = OutputFormat' "pcm"

{-# COMPLETE
  JSON,
  MP3,
  OggVorbis,
  Pcm,
  OutputFormat'
  #-}

instance FromText OutputFormat where
  parser = (OutputFormat' . mk) <$> takeText

instance ToText OutputFormat where
  toText (OutputFormat' ci) = original ci

instance Hashable OutputFormat

instance NFData OutputFormat

instance ToByteString OutputFormat

instance ToQuery OutputFormat

instance ToHeader OutputFormat

instance ToJSON OutputFormat where
  toJSON = toJSONText

instance FromJSON OutputFormat where
  parseJSON = parseJSONText "OutputFormat"
