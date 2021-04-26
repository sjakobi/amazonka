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
-- Module      : Network.AWS.MediaLive.Types.H265SceneChangeDetect
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265SceneChangeDetect
  ( H265SceneChangeDetect
      ( ..,
        H265SceneChangeDetectDISABLED,
        H265SceneChangeDetectENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Scene Change Detect
newtype H265SceneChangeDetect = H265SceneChangeDetect'
  { fromH265SceneChangeDetect ::
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

pattern H265SceneChangeDetectDISABLED :: H265SceneChangeDetect
pattern H265SceneChangeDetectDISABLED = H265SceneChangeDetect' "DISABLED"

pattern H265SceneChangeDetectENABLED :: H265SceneChangeDetect
pattern H265SceneChangeDetectENABLED = H265SceneChangeDetect' "ENABLED"

{-# COMPLETE
  H265SceneChangeDetectDISABLED,
  H265SceneChangeDetectENABLED,
  H265SceneChangeDetect'
  #-}

instance Prelude.FromText H265SceneChangeDetect where
  parser = H265SceneChangeDetect' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265SceneChangeDetect where
  toText (H265SceneChangeDetect' x) = x

instance Prelude.Hashable H265SceneChangeDetect

instance Prelude.NFData H265SceneChangeDetect

instance Prelude.ToByteString H265SceneChangeDetect

instance Prelude.ToQuery H265SceneChangeDetect

instance Prelude.ToHeader H265SceneChangeDetect

instance Prelude.ToJSON H265SceneChangeDetect where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265SceneChangeDetect where
  parseJSON = Prelude.parseJSONText "H265SceneChangeDetect"
