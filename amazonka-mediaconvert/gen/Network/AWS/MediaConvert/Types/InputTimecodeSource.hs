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
-- Module      : Network.AWS.MediaConvert.Types.InputTimecodeSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InputTimecodeSource
  ( InputTimecodeSource
      ( ..,
        InputTimecodeSourceEMBEDDED,
        InputTimecodeSourceSPECIFIEDSTART,
        InputTimecodeSourceZEROBASED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use this Timecode source setting, located under the input settings
-- (InputTimecodeSource), to specify how the service counts input video
-- frames. This input frame count affects only the behavior of features
-- that apply to a single input at a time, such as input clipping and
-- synchronizing some captions formats. Choose Embedded (EMBEDDED) to use
-- the timecodes in your input video. Choose Start at zero (ZEROBASED) to
-- start the first frame at zero. Choose Specified start (SPECIFIEDSTART)
-- to start the first frame at the timecode that you specify in the setting
-- Start timecode (timecodeStart). If you don\'t specify a value for
-- Timecode source, the service will use Embedded by default. For more
-- information about timecodes, see
-- https:\/\/docs.aws.amazon.com\/console\/mediaconvert\/timecode.
newtype InputTimecodeSource = InputTimecodeSource'
  { fromInputTimecodeSource ::
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

pattern InputTimecodeSourceEMBEDDED :: InputTimecodeSource
pattern InputTimecodeSourceEMBEDDED = InputTimecodeSource' "EMBEDDED"

pattern InputTimecodeSourceSPECIFIEDSTART :: InputTimecodeSource
pattern InputTimecodeSourceSPECIFIEDSTART = InputTimecodeSource' "SPECIFIEDSTART"

pattern InputTimecodeSourceZEROBASED :: InputTimecodeSource
pattern InputTimecodeSourceZEROBASED = InputTimecodeSource' "ZEROBASED"

{-# COMPLETE
  InputTimecodeSourceEMBEDDED,
  InputTimecodeSourceSPECIFIEDSTART,
  InputTimecodeSourceZEROBASED,
  InputTimecodeSource'
  #-}

instance Prelude.FromText InputTimecodeSource where
  parser = InputTimecodeSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputTimecodeSource where
  toText (InputTimecodeSource' x) = x

instance Prelude.Hashable InputTimecodeSource

instance Prelude.NFData InputTimecodeSource

instance Prelude.ToByteString InputTimecodeSource

instance Prelude.ToQuery InputTimecodeSource

instance Prelude.ToHeader InputTimecodeSource

instance Prelude.ToJSON InputTimecodeSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON InputTimecodeSource where
  parseJSON = Prelude.parseJSONText "InputTimecodeSource"
