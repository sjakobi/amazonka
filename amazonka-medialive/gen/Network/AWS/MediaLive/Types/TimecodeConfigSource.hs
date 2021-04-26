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
-- Module      : Network.AWS.MediaLive.Types.TimecodeConfigSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TimecodeConfigSource
  ( TimecodeConfigSource
      ( ..,
        TimecodeConfigSourceEMBEDDED,
        TimecodeConfigSourceSYSTEMCLOCK,
        TimecodeConfigSourceZEROBASED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Timecode Config Source
newtype TimecodeConfigSource = TimecodeConfigSource'
  { fromTimecodeConfigSource ::
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

pattern TimecodeConfigSourceEMBEDDED :: TimecodeConfigSource
pattern TimecodeConfigSourceEMBEDDED = TimecodeConfigSource' "EMBEDDED"

pattern TimecodeConfigSourceSYSTEMCLOCK :: TimecodeConfigSource
pattern TimecodeConfigSourceSYSTEMCLOCK = TimecodeConfigSource' "SYSTEMCLOCK"

pattern TimecodeConfigSourceZEROBASED :: TimecodeConfigSource
pattern TimecodeConfigSourceZEROBASED = TimecodeConfigSource' "ZEROBASED"

{-# COMPLETE
  TimecodeConfigSourceEMBEDDED,
  TimecodeConfigSourceSYSTEMCLOCK,
  TimecodeConfigSourceZEROBASED,
  TimecodeConfigSource'
  #-}

instance Prelude.FromText TimecodeConfigSource where
  parser = TimecodeConfigSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimecodeConfigSource where
  toText (TimecodeConfigSource' x) = x

instance Prelude.Hashable TimecodeConfigSource

instance Prelude.NFData TimecodeConfigSource

instance Prelude.ToByteString TimecodeConfigSource

instance Prelude.ToQuery TimecodeConfigSource

instance Prelude.ToHeader TimecodeConfigSource

instance Prelude.ToJSON TimecodeConfigSource where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TimecodeConfigSource where
  parseJSON = Prelude.parseJSONText "TimecodeConfigSource"
