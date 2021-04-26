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
-- Module      : Network.AWS.MediaConvert.Types.SccDestinationFramerate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.SccDestinationFramerate
  ( SccDestinationFramerate
      ( ..,
        SccDestinationFramerateFRAMERATE2397,
        SccDestinationFramerateFRAMERATE24,
        SccDestinationFramerateFRAMERATE25,
        SccDestinationFramerateFRAMERATE2997DROPFRAME,
        SccDestinationFramerateFRAMERATE2997NONDROPFRAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Set Framerate (SccDestinationFramerate) to make sure that the captions
-- and the video are synchronized in the output. Specify a frame rate that
-- matches the frame rate of the associated video. If the video frame rate
-- is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the
-- video has video_insertion=true and drop_frame_timecode=true; otherwise,
-- choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME).
newtype SccDestinationFramerate = SccDestinationFramerate'
  { fromSccDestinationFramerate ::
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

pattern SccDestinationFramerateFRAMERATE2397 :: SccDestinationFramerate
pattern SccDestinationFramerateFRAMERATE2397 = SccDestinationFramerate' "FRAMERATE_23_97"

pattern SccDestinationFramerateFRAMERATE24 :: SccDestinationFramerate
pattern SccDestinationFramerateFRAMERATE24 = SccDestinationFramerate' "FRAMERATE_24"

pattern SccDestinationFramerateFRAMERATE25 :: SccDestinationFramerate
pattern SccDestinationFramerateFRAMERATE25 = SccDestinationFramerate' "FRAMERATE_25"

pattern SccDestinationFramerateFRAMERATE2997DROPFRAME :: SccDestinationFramerate
pattern SccDestinationFramerateFRAMERATE2997DROPFRAME = SccDestinationFramerate' "FRAMERATE_29_97_DROPFRAME"

pattern SccDestinationFramerateFRAMERATE2997NONDROPFRAME :: SccDestinationFramerate
pattern SccDestinationFramerateFRAMERATE2997NONDROPFRAME = SccDestinationFramerate' "FRAMERATE_29_97_NON_DROPFRAME"

{-# COMPLETE
  SccDestinationFramerateFRAMERATE2397,
  SccDestinationFramerateFRAMERATE24,
  SccDestinationFramerateFRAMERATE25,
  SccDestinationFramerateFRAMERATE2997DROPFRAME,
  SccDestinationFramerateFRAMERATE2997NONDROPFRAME,
  SccDestinationFramerate'
  #-}

instance Prelude.FromText SccDestinationFramerate where
  parser = SccDestinationFramerate' Prelude.<$> Prelude.takeText

instance Prelude.ToText SccDestinationFramerate where
  toText (SccDestinationFramerate' x) = x

instance Prelude.Hashable SccDestinationFramerate

instance Prelude.NFData SccDestinationFramerate

instance Prelude.ToByteString SccDestinationFramerate

instance Prelude.ToQuery SccDestinationFramerate

instance Prelude.ToHeader SccDestinationFramerate

instance Prelude.ToJSON SccDestinationFramerate where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SccDestinationFramerate where
  parseJSON = Prelude.parseJSONText "SccDestinationFramerate"
