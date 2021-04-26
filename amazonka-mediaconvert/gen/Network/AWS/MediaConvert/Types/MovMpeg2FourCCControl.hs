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
-- Module      : Network.AWS.MediaConvert.Types.MovMpeg2FourCCControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovMpeg2FourCCControl
  ( MovMpeg2FourCCControl
      ( ..,
        MovMpeg2FourCCControlMPEG,
        MovMpeg2FourCCControlXDCAM
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to XDCAM, writes MPEG2 video streams into the QuickTime file
-- using XDCAM fourcc codes. This increases compatibility with Apple
-- editors and players, but may decrease compatibility with other players.
-- Only applicable when the video codec is MPEG2.
newtype MovMpeg2FourCCControl = MovMpeg2FourCCControl'
  { fromMovMpeg2FourCCControl ::
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

pattern MovMpeg2FourCCControlMPEG :: MovMpeg2FourCCControl
pattern MovMpeg2FourCCControlMPEG = MovMpeg2FourCCControl' "MPEG"

pattern MovMpeg2FourCCControlXDCAM :: MovMpeg2FourCCControl
pattern MovMpeg2FourCCControlXDCAM = MovMpeg2FourCCControl' "XDCAM"

{-# COMPLETE
  MovMpeg2FourCCControlMPEG,
  MovMpeg2FourCCControlXDCAM,
  MovMpeg2FourCCControl'
  #-}

instance Prelude.FromText MovMpeg2FourCCControl where
  parser = MovMpeg2FourCCControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText MovMpeg2FourCCControl where
  toText (MovMpeg2FourCCControl' x) = x

instance Prelude.Hashable MovMpeg2FourCCControl

instance Prelude.NFData MovMpeg2FourCCControl

instance Prelude.ToByteString MovMpeg2FourCCControl

instance Prelude.ToQuery MovMpeg2FourCCControl

instance Prelude.ToHeader MovMpeg2FourCCControl

instance Prelude.ToJSON MovMpeg2FourCCControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MovMpeg2FourCCControl where
  parseJSON = Prelude.parseJSONText "MovMpeg2FourCCControl"
