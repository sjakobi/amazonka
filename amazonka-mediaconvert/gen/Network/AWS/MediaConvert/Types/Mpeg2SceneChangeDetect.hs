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
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2SceneChangeDetect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2SceneChangeDetect
  ( Mpeg2SceneChangeDetect
      ( ..,
        Mpeg2SceneChangeDetectDISABLED,
        Mpeg2SceneChangeDetectENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Enable this setting to insert I-frames at scene changes that the service
-- automatically detects. This improves video quality and is enabled by
-- default.
newtype Mpeg2SceneChangeDetect = Mpeg2SceneChangeDetect'
  { fromMpeg2SceneChangeDetect ::
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

pattern Mpeg2SceneChangeDetectDISABLED :: Mpeg2SceneChangeDetect
pattern Mpeg2SceneChangeDetectDISABLED = Mpeg2SceneChangeDetect' "DISABLED"

pattern Mpeg2SceneChangeDetectENABLED :: Mpeg2SceneChangeDetect
pattern Mpeg2SceneChangeDetectENABLED = Mpeg2SceneChangeDetect' "ENABLED"

{-# COMPLETE
  Mpeg2SceneChangeDetectDISABLED,
  Mpeg2SceneChangeDetectENABLED,
  Mpeg2SceneChangeDetect'
  #-}

instance Prelude.FromText Mpeg2SceneChangeDetect where
  parser = Mpeg2SceneChangeDetect' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mpeg2SceneChangeDetect where
  toText (Mpeg2SceneChangeDetect' x) = x

instance Prelude.Hashable Mpeg2SceneChangeDetect

instance Prelude.NFData Mpeg2SceneChangeDetect

instance Prelude.ToByteString Mpeg2SceneChangeDetect

instance Prelude.ToQuery Mpeg2SceneChangeDetect

instance Prelude.ToHeader Mpeg2SceneChangeDetect

instance Prelude.ToJSON Mpeg2SceneChangeDetect where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mpeg2SceneChangeDetect where
  parseJSON = Prelude.parseJSONText "Mpeg2SceneChangeDetect"
