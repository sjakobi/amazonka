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
-- Module      : Network.AWS.MediaLive.Types.H264TimecodeInsertionBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264TimecodeInsertionBehavior
  ( H264TimecodeInsertionBehavior
      ( ..,
        H264TimecodeInsertionBehaviorDISABLED,
        H264TimecodeInsertionBehaviorPICTIMINGSEI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Timecode Insertion Behavior
newtype H264TimecodeInsertionBehavior = H264TimecodeInsertionBehavior'
  { fromH264TimecodeInsertionBehavior ::
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

pattern H264TimecodeInsertionBehaviorDISABLED :: H264TimecodeInsertionBehavior
pattern H264TimecodeInsertionBehaviorDISABLED = H264TimecodeInsertionBehavior' "DISABLED"

pattern H264TimecodeInsertionBehaviorPICTIMINGSEI :: H264TimecodeInsertionBehavior
pattern H264TimecodeInsertionBehaviorPICTIMINGSEI = H264TimecodeInsertionBehavior' "PIC_TIMING_SEI"

{-# COMPLETE
  H264TimecodeInsertionBehaviorDISABLED,
  H264TimecodeInsertionBehaviorPICTIMINGSEI,
  H264TimecodeInsertionBehavior'
  #-}

instance Prelude.FromText H264TimecodeInsertionBehavior where
  parser = H264TimecodeInsertionBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264TimecodeInsertionBehavior where
  toText (H264TimecodeInsertionBehavior' x) = x

instance Prelude.Hashable H264TimecodeInsertionBehavior

instance Prelude.NFData H264TimecodeInsertionBehavior

instance Prelude.ToByteString H264TimecodeInsertionBehavior

instance Prelude.ToQuery H264TimecodeInsertionBehavior

instance Prelude.ToHeader H264TimecodeInsertionBehavior

instance Prelude.ToJSON H264TimecodeInsertionBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264TimecodeInsertionBehavior where
  parseJSON = Prelude.parseJSONText "H264TimecodeInsertionBehavior"
