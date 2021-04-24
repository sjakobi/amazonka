{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.VideoCodec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.VideoCodec
  ( VideoCodec
      ( ..,
        VCAV1,
        VCAvcIntra,
        VCFrameCapture,
        VCH264,
        VCH265,
        VCMPEG2,
        VCProres,
        VCVC3,
        VCVP8,
        VCVP9
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Type of video codec
data VideoCodec = VideoCodec' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VCAV1 :: VideoCodec
pattern VCAV1 = VideoCodec' "AV1"

pattern VCAvcIntra :: VideoCodec
pattern VCAvcIntra = VideoCodec' "AVC_INTRA"

pattern VCFrameCapture :: VideoCodec
pattern VCFrameCapture = VideoCodec' "FRAME_CAPTURE"

pattern VCH264 :: VideoCodec
pattern VCH264 = VideoCodec' "H_264"

pattern VCH265 :: VideoCodec
pattern VCH265 = VideoCodec' "H_265"

pattern VCMPEG2 :: VideoCodec
pattern VCMPEG2 = VideoCodec' "MPEG2"

pattern VCProres :: VideoCodec
pattern VCProres = VideoCodec' "PRORES"

pattern VCVC3 :: VideoCodec
pattern VCVC3 = VideoCodec' "VC3"

pattern VCVP8 :: VideoCodec
pattern VCVP8 = VideoCodec' "VP8"

pattern VCVP9 :: VideoCodec
pattern VCVP9 = VideoCodec' "VP9"

{-# COMPLETE
  VCAV1,
  VCAvcIntra,
  VCFrameCapture,
  VCH264,
  VCH265,
  VCMPEG2,
  VCProres,
  VCVC3,
  VCVP8,
  VCVP9,
  VideoCodec'
  #-}

instance FromText VideoCodec where
  parser = (VideoCodec' . mk) <$> takeText

instance ToText VideoCodec where
  toText (VideoCodec' ci) = original ci

instance Hashable VideoCodec

instance NFData VideoCodec

instance ToByteString VideoCodec

instance ToQuery VideoCodec

instance ToHeader VideoCodec

instance ToJSON VideoCodec where
  toJSON = toJSONText

instance FromJSON VideoCodec where
  parseJSON = parseJSONText "VideoCodec"
