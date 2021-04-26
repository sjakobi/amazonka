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
-- Module      : Network.AWS.MediaConvert.Types.MotionImagePlayback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MotionImagePlayback
  ( MotionImagePlayback
      ( ..,
        MotionImagePlaybackONCE,
        MotionImagePlaybackREPEAT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify whether your motion graphic overlay repeats on a loop or plays
-- only once.
newtype MotionImagePlayback = MotionImagePlayback'
  { fromMotionImagePlayback ::
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

pattern MotionImagePlaybackONCE :: MotionImagePlayback
pattern MotionImagePlaybackONCE = MotionImagePlayback' "ONCE"

pattern MotionImagePlaybackREPEAT :: MotionImagePlayback
pattern MotionImagePlaybackREPEAT = MotionImagePlayback' "REPEAT"

{-# COMPLETE
  MotionImagePlaybackONCE,
  MotionImagePlaybackREPEAT,
  MotionImagePlayback'
  #-}

instance Prelude.FromText MotionImagePlayback where
  parser = MotionImagePlayback' Prelude.<$> Prelude.takeText

instance Prelude.ToText MotionImagePlayback where
  toText (MotionImagePlayback' x) = x

instance Prelude.Hashable MotionImagePlayback

instance Prelude.NFData MotionImagePlayback

instance Prelude.ToByteString MotionImagePlayback

instance Prelude.ToQuery MotionImagePlayback

instance Prelude.ToHeader MotionImagePlayback

instance Prelude.ToJSON MotionImagePlayback where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MotionImagePlayback where
  parseJSON = Prelude.parseJSONText "MotionImagePlayback"
