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
-- Module      : Network.AWS.MediaConvert.Types.TimecodeSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.TimecodeSource
  ( TimecodeSource
      ( ..,
        TimecodeSourceEMBEDDED,
        TimecodeSourceSPECIFIEDSTART,
        TimecodeSourceZEROBASED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Source (TimecodeSource) to set how timecodes are handled within this
-- job. To make sure that your video, audio, captions, and markers are
-- synchronized and that time-based features, such as image inserter, work
-- correctly, choose the Timecode source option that matches your assets.
-- All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). *
-- Embedded (EMBEDDED) - Use the timecode that is in the input video. If no
-- embedded timecode is in the source, the service will use Start at 0
-- (ZEROBASED) instead. * Start at 0 (ZEROBASED) - Set the timecode of the
-- initial frame to 00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set
-- the timecode of the initial frame to a value other than zero. You use
-- Start timecode (Start) to provide this value.
newtype TimecodeSource = TimecodeSource'
  { fromTimecodeSource ::
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

pattern TimecodeSourceEMBEDDED :: TimecodeSource
pattern TimecodeSourceEMBEDDED = TimecodeSource' "EMBEDDED"

pattern TimecodeSourceSPECIFIEDSTART :: TimecodeSource
pattern TimecodeSourceSPECIFIEDSTART = TimecodeSource' "SPECIFIEDSTART"

pattern TimecodeSourceZEROBASED :: TimecodeSource
pattern TimecodeSourceZEROBASED = TimecodeSource' "ZEROBASED"

{-# COMPLETE
  TimecodeSourceEMBEDDED,
  TimecodeSourceSPECIFIEDSTART,
  TimecodeSourceZEROBASED,
  TimecodeSource'
  #-}

instance Prelude.FromText TimecodeSource where
  parser = TimecodeSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimecodeSource where
  toText (TimecodeSource' x) = x

instance Prelude.Hashable TimecodeSource

instance Prelude.NFData TimecodeSource

instance Prelude.ToByteString TimecodeSource

instance Prelude.ToQuery TimecodeSource

instance Prelude.ToHeader TimecodeSource

instance Prelude.ToJSON TimecodeSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TimecodeSource where
  parseJSON = Prelude.parseJSONText "TimecodeSource"
