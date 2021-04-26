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
-- Module      : Network.AWS.MediaConvert.Types.MotionImageInsertionMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MotionImageInsertionMode
  ( MotionImageInsertionMode
      ( ..,
        MotionImageInsertionModeMOV,
        MotionImageInsertionModePNG
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose the type of motion graphic asset that you are providing for your
-- overlay. You can choose either a .mov file or a series of .png files.
newtype MotionImageInsertionMode = MotionImageInsertionMode'
  { fromMotionImageInsertionMode ::
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

pattern MotionImageInsertionModeMOV :: MotionImageInsertionMode
pattern MotionImageInsertionModeMOV = MotionImageInsertionMode' "MOV"

pattern MotionImageInsertionModePNG :: MotionImageInsertionMode
pattern MotionImageInsertionModePNG = MotionImageInsertionMode' "PNG"

{-# COMPLETE
  MotionImageInsertionModeMOV,
  MotionImageInsertionModePNG,
  MotionImageInsertionMode'
  #-}

instance Prelude.FromText MotionImageInsertionMode where
  parser = MotionImageInsertionMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText MotionImageInsertionMode where
  toText (MotionImageInsertionMode' x) = x

instance Prelude.Hashable MotionImageInsertionMode

instance Prelude.NFData MotionImageInsertionMode

instance Prelude.ToByteString MotionImageInsertionMode

instance Prelude.ToQuery MotionImageInsertionMode

instance Prelude.ToHeader MotionImageInsertionMode

instance Prelude.ToJSON MotionImageInsertionMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MotionImageInsertionMode where
  parseJSON = Prelude.parseJSONText "MotionImageInsertionMode"
