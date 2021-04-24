{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.WavFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.WavFormat
  ( WavFormat
      ( ..,
        RF64,
        Riff
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The service defaults to using RIFF for WAV outputs. If your output audio is likely to exceed 4 GB in file size, or if you otherwise need the extended support of the RF64 format, set your output WAV file format to RF64.
data WavFormat = WavFormat' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RF64 :: WavFormat
pattern RF64 = WavFormat' "RF64"

pattern Riff :: WavFormat
pattern Riff = WavFormat' "RIFF"

{-# COMPLETE
  RF64,
  Riff,
  WavFormat'
  #-}

instance FromText WavFormat where
  parser = (WavFormat' . mk) <$> takeText

instance ToText WavFormat where
  toText (WavFormat' ci) = original ci

instance Hashable WavFormat

instance NFData WavFormat

instance ToByteString WavFormat

instance ToQuery WavFormat

instance ToHeader WavFormat

instance ToJSON WavFormat where
  toJSON = toJSONText

instance FromJSON WavFormat where
  parseJSON = parseJSONText "WavFormat"
