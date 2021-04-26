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
-- Module      : Network.AWS.MediaConvert.Types.H265Telecine
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265Telecine
  ( H265Telecine
      ( ..,
        H265TelecineHARD,
        H265TelecineNONE,
        H265TelecineSOFT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | This field applies only if the Streams > Advanced > Framerate
-- (framerate) field is set to 29.970. This field works with the Streams >
-- Advanced > Preprocessors > Deinterlacer field (deinterlace_mode) and the
-- Streams > Advanced > Interlaced Mode field (interlace_mode) to identify
-- the scan type for the output: Progressive, Interlaced, Hard Telecine or
-- Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft:
-- produces 23.976; the player converts this output to 29.97i.
newtype H265Telecine = H265Telecine'
  { fromH265Telecine ::
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

pattern H265TelecineHARD :: H265Telecine
pattern H265TelecineHARD = H265Telecine' "HARD"

pattern H265TelecineNONE :: H265Telecine
pattern H265TelecineNONE = H265Telecine' "NONE"

pattern H265TelecineSOFT :: H265Telecine
pattern H265TelecineSOFT = H265Telecine' "SOFT"

{-# COMPLETE
  H265TelecineHARD,
  H265TelecineNONE,
  H265TelecineSOFT,
  H265Telecine'
  #-}

instance Prelude.FromText H265Telecine where
  parser = H265Telecine' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265Telecine where
  toText (H265Telecine' x) = x

instance Prelude.Hashable H265Telecine

instance Prelude.NFData H265Telecine

instance Prelude.ToByteString H265Telecine

instance Prelude.ToQuery H265Telecine

instance Prelude.ToHeader H265Telecine

instance Prelude.ToJSON H265Telecine where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265Telecine where
  parseJSON = Prelude.parseJSONText "H265Telecine"
