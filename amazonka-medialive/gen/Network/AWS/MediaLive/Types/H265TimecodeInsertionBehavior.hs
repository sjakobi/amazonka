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
-- Module      : Network.AWS.MediaLive.Types.H265TimecodeInsertionBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265TimecodeInsertionBehavior
  ( H265TimecodeInsertionBehavior
      ( ..,
        H265TimecodeInsertionBehaviorDISABLED,
        H265TimecodeInsertionBehaviorPICTIMINGSEI
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Timecode Insertion Behavior
newtype H265TimecodeInsertionBehavior = H265TimecodeInsertionBehavior'
  { fromH265TimecodeInsertionBehavior ::
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

pattern H265TimecodeInsertionBehaviorDISABLED :: H265TimecodeInsertionBehavior
pattern H265TimecodeInsertionBehaviorDISABLED = H265TimecodeInsertionBehavior' "DISABLED"

pattern H265TimecodeInsertionBehaviorPICTIMINGSEI :: H265TimecodeInsertionBehavior
pattern H265TimecodeInsertionBehaviorPICTIMINGSEI = H265TimecodeInsertionBehavior' "PIC_TIMING_SEI"

{-# COMPLETE
  H265TimecodeInsertionBehaviorDISABLED,
  H265TimecodeInsertionBehaviorPICTIMINGSEI,
  H265TimecodeInsertionBehavior'
  #-}

instance Prelude.FromText H265TimecodeInsertionBehavior where
  parser = H265TimecodeInsertionBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265TimecodeInsertionBehavior where
  toText (H265TimecodeInsertionBehavior' x) = x

instance Prelude.Hashable H265TimecodeInsertionBehavior

instance Prelude.NFData H265TimecodeInsertionBehavior

instance Prelude.ToByteString H265TimecodeInsertionBehavior

instance Prelude.ToQuery H265TimecodeInsertionBehavior

instance Prelude.ToHeader H265TimecodeInsertionBehavior

instance Prelude.ToJSON H265TimecodeInsertionBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265TimecodeInsertionBehavior where
  parseJSON = Prelude.parseJSONText "H265TimecodeInsertionBehavior"
