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
-- Module      : Network.AWS.MediaConvert.Types.DropFrameTimecode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DropFrameTimecode
  ( DropFrameTimecode
      ( ..,
        DropFrameTimecodeDISABLED,
        DropFrameTimecodeENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Applies only to 29.97 fps outputs. When this feature is enabled, the
-- service will use drop-frame timecode on outputs. If it is not possible
-- to use drop-frame timecode, the system will fall back to non-drop-frame.
-- This setting is enabled by default when Timecode insertion
-- (TimecodeInsertion) is enabled.
newtype DropFrameTimecode = DropFrameTimecode'
  { fromDropFrameTimecode ::
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

pattern DropFrameTimecodeDISABLED :: DropFrameTimecode
pattern DropFrameTimecodeDISABLED = DropFrameTimecode' "DISABLED"

pattern DropFrameTimecodeENABLED :: DropFrameTimecode
pattern DropFrameTimecodeENABLED = DropFrameTimecode' "ENABLED"

{-# COMPLETE
  DropFrameTimecodeDISABLED,
  DropFrameTimecodeENABLED,
  DropFrameTimecode'
  #-}

instance Prelude.FromText DropFrameTimecode where
  parser = DropFrameTimecode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DropFrameTimecode where
  toText (DropFrameTimecode' x) = x

instance Prelude.Hashable DropFrameTimecode

instance Prelude.NFData DropFrameTimecode

instance Prelude.ToByteString DropFrameTimecode

instance Prelude.ToQuery DropFrameTimecode

instance Prelude.ToHeader DropFrameTimecode

instance Prelude.ToJSON DropFrameTimecode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DropFrameTimecode where
  parseJSON = Prelude.parseJSONText "DropFrameTimecode"
