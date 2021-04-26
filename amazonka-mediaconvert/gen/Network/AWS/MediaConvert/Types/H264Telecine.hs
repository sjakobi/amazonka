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
-- Module      : Network.AWS.MediaConvert.Types.H264Telecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264Telecine
  ( H264Telecine
      ( ..,
        H264TelecineHARD,
        H264TelecineNONE,
        H264TelecineSOFT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When you do frame rate conversion from 23.976 frames per second (fps) to
-- 29.97 fps, and your output scan type is interlaced, you can optionally
-- enable hard or soft telecine to create a smoother picture. Hard telecine
-- (HARD) produces a 29.97i output. Soft telecine (SOFT) produces an output
-- with a 23.976 output that signals to the video player device to do the
-- conversion during play back. When you keep the default value, None
-- (NONE), MediaConvert does a standard frame rate conversion to 29.97
-- without doing anything with the field polarity to create a smoother
-- picture.
newtype H264Telecine = H264Telecine'
  { fromH264Telecine ::
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

pattern H264TelecineHARD :: H264Telecine
pattern H264TelecineHARD = H264Telecine' "HARD"

pattern H264TelecineNONE :: H264Telecine
pattern H264TelecineNONE = H264Telecine' "NONE"

pattern H264TelecineSOFT :: H264Telecine
pattern H264TelecineSOFT = H264Telecine' "SOFT"

{-# COMPLETE
  H264TelecineHARD,
  H264TelecineNONE,
  H264TelecineSOFT,
  H264Telecine'
  #-}

instance Prelude.FromText H264Telecine where
  parser = H264Telecine' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264Telecine where
  toText (H264Telecine' x) = x

instance Prelude.Hashable H264Telecine

instance Prelude.NFData H264Telecine

instance Prelude.ToByteString H264Telecine

instance Prelude.ToQuery H264Telecine

instance Prelude.ToHeader H264Telecine

instance Prelude.ToJSON H264Telecine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264Telecine where
  parseJSON = Prelude.parseJSONText "H264Telecine"
