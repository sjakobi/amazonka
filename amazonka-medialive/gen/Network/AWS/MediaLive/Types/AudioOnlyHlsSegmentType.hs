{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.AudioOnlyHlsSegmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AudioOnlyHlsSegmentType
  ( AudioOnlyHlsSegmentType
      ( ..,
        Aac,
        FMP4
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Audio Only Hls Segment Type
data AudioOnlyHlsSegmentType
  = AudioOnlyHlsSegmentType'
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

pattern Aac :: AudioOnlyHlsSegmentType
pattern Aac = AudioOnlyHlsSegmentType' "AAC"

pattern FMP4 :: AudioOnlyHlsSegmentType
pattern FMP4 = AudioOnlyHlsSegmentType' "FMP4"

{-# COMPLETE
  Aac,
  FMP4,
  AudioOnlyHlsSegmentType'
  #-}

instance FromText AudioOnlyHlsSegmentType where
  parser = (AudioOnlyHlsSegmentType' . mk) <$> takeText

instance ToText AudioOnlyHlsSegmentType where
  toText (AudioOnlyHlsSegmentType' ci) = original ci

instance Hashable AudioOnlyHlsSegmentType

instance NFData AudioOnlyHlsSegmentType

instance ToByteString AudioOnlyHlsSegmentType

instance ToQuery AudioOnlyHlsSegmentType

instance ToHeader AudioOnlyHlsSegmentType

instance ToJSON AudioOnlyHlsSegmentType where
  toJSON = toJSONText

instance FromJSON AudioOnlyHlsSegmentType where
  parseJSON = parseJSONText "AudioOnlyHlsSegmentType"
