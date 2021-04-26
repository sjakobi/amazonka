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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2Telecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2Telecine
  ( Mpeg2Telecine
      ( ..,
        Mpeg2TelecineHARD,
        Mpeg2TelecineNONE,
        Mpeg2TelecineSOFT
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
newtype Mpeg2Telecine = Mpeg2Telecine'
  { fromMpeg2Telecine ::
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

pattern Mpeg2TelecineHARD :: Mpeg2Telecine
pattern Mpeg2TelecineHARD = Mpeg2Telecine' "HARD"

pattern Mpeg2TelecineNONE :: Mpeg2Telecine
pattern Mpeg2TelecineNONE = Mpeg2Telecine' "NONE"

pattern Mpeg2TelecineSOFT :: Mpeg2Telecine
pattern Mpeg2TelecineSOFT = Mpeg2Telecine' "SOFT"

{-# COMPLETE
  Mpeg2TelecineHARD,
  Mpeg2TelecineNONE,
  Mpeg2TelecineSOFT,
  Mpeg2Telecine'
  #-}

instance Prelude.FromText Mpeg2Telecine where
  parser = Mpeg2Telecine' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2Telecine where
  toText (Mpeg2Telecine' x) = x

instance Prelude.Hashable Mpeg2Telecine

instance Prelude.NFData Mpeg2Telecine

instance Prelude.ToByteString Mpeg2Telecine

instance Prelude.ToQuery Mpeg2Telecine

instance Prelude.ToHeader Mpeg2Telecine

instance Prelude.ToJSON Mpeg2Telecine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2Telecine where
  parseJSON = Prelude.parseJSONText "Mpeg2Telecine"
