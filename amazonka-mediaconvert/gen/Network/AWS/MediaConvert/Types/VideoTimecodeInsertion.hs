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
-- Module      : Network.AWS.MediaConvert.Types.VideoTimecodeInsertion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.VideoTimecodeInsertion
  ( VideoTimecodeInsertion
      ( ..,
        VideoTimecodeInsertionDISABLED,
        VideoTimecodeInsertionPICTIMINGSEI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable
-- Timecode insertion when the input frame rate is identical to the output
-- frame rate. To include timecodes in this output, set Timecode insertion
-- (VideoTimecodeInsertion) to PIC_TIMING_SEI. To leave them out, set it to
-- DISABLED. Default is DISABLED. When the service inserts timecodes in an
-- output, by default, it uses any embedded timecodes from the input. If
-- none are present, the service will set the timecode for the first output
-- frame to zero. To change this default behavior, adjust the settings
-- under Timecode configuration (TimecodeConfig). In the console, these
-- settings are located under Job > Job settings > Timecode configuration.
-- Note - Timecode source under input settings (InputTimecodeSource) does
-- not affect the timecodes that are inserted in the output. Source under
-- Job settings > Timecode configuration (TimecodeSource) does.
newtype VideoTimecodeInsertion = VideoTimecodeInsertion'
  { fromVideoTimecodeInsertion ::
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

pattern VideoTimecodeInsertionDISABLED :: VideoTimecodeInsertion
pattern VideoTimecodeInsertionDISABLED = VideoTimecodeInsertion' "DISABLED"

pattern VideoTimecodeInsertionPICTIMINGSEI :: VideoTimecodeInsertion
pattern VideoTimecodeInsertionPICTIMINGSEI = VideoTimecodeInsertion' "PIC_TIMING_SEI"

{-# COMPLETE
  VideoTimecodeInsertionDISABLED,
  VideoTimecodeInsertionPICTIMINGSEI,
  VideoTimecodeInsertion'
  #-}

instance Prelude.FromText VideoTimecodeInsertion where
  parser = VideoTimecodeInsertion' Prelude.<$> Prelude.takeText

instance Prelude.ToText VideoTimecodeInsertion where
  toText (VideoTimecodeInsertion' x) = x

instance Prelude.Hashable VideoTimecodeInsertion

instance Prelude.NFData VideoTimecodeInsertion

instance Prelude.ToByteString VideoTimecodeInsertion

instance Prelude.ToQuery VideoTimecodeInsertion

instance Prelude.ToHeader VideoTimecodeInsertion

instance Prelude.ToJSON VideoTimecodeInsertion where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VideoTimecodeInsertion where
  parseJSON = Prelude.parseJSONText "VideoTimecodeInsertion"
