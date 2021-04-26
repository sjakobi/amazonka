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
-- Module      : Network.AWS.MediaConvert.Types.VideoCodec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.VideoCodec
  ( VideoCodec
      ( ..,
        VideoCodecAV1,
        VideoCodecAVCINTRA,
        VideoCodecFRAMECAPTURE,
        VideoCodecH264,
        VideoCodecH265,
        VideoCodecMPEG2,
        VideoCodecPRORES,
        VideoCodecVC3,
        VideoCodecVP8,
        VideoCodecVP9
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Type of video codec
newtype VideoCodec = VideoCodec'
  { fromVideoCodec ::
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

pattern VideoCodecAV1 :: VideoCodec
pattern VideoCodecAV1 = VideoCodec' "AV1"

pattern VideoCodecAVCINTRA :: VideoCodec
pattern VideoCodecAVCINTRA = VideoCodec' "AVC_INTRA"

pattern VideoCodecFRAMECAPTURE :: VideoCodec
pattern VideoCodecFRAMECAPTURE = VideoCodec' "FRAME_CAPTURE"

pattern VideoCodecH264 :: VideoCodec
pattern VideoCodecH264 = VideoCodec' "H_264"

pattern VideoCodecH265 :: VideoCodec
pattern VideoCodecH265 = VideoCodec' "H_265"

pattern VideoCodecMPEG2 :: VideoCodec
pattern VideoCodecMPEG2 = VideoCodec' "MPEG2"

pattern VideoCodecPRORES :: VideoCodec
pattern VideoCodecPRORES = VideoCodec' "PRORES"

pattern VideoCodecVC3 :: VideoCodec
pattern VideoCodecVC3 = VideoCodec' "VC3"

pattern VideoCodecVP8 :: VideoCodec
pattern VideoCodecVP8 = VideoCodec' "VP8"

pattern VideoCodecVP9 :: VideoCodec
pattern VideoCodecVP9 = VideoCodec' "VP9"

{-# COMPLETE
  VideoCodecAV1,
  VideoCodecAVCINTRA,
  VideoCodecFRAMECAPTURE,
  VideoCodecH264,
  VideoCodecH265,
  VideoCodecMPEG2,
  VideoCodecPRORES,
  VideoCodecVC3,
  VideoCodecVP8,
  VideoCodecVP9,
  VideoCodec'
  #-}

instance Prelude.FromText VideoCodec where
  parser = VideoCodec' Prelude.<$> Prelude.takeText

instance Prelude.ToText VideoCodec where
  toText (VideoCodec' x) = x

instance Prelude.Hashable VideoCodec

instance Prelude.NFData VideoCodec

instance Prelude.ToByteString VideoCodec

instance Prelude.ToQuery VideoCodec

instance Prelude.ToHeader VideoCodec

instance Prelude.ToJSON VideoCodec where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VideoCodec where
  parseJSON = Prelude.parseJSONText "VideoCodec"
