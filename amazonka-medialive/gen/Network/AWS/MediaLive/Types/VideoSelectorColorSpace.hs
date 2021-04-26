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
-- Module      : Network.AWS.MediaLive.Types.VideoSelectorColorSpace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VideoSelectorColorSpace
  ( VideoSelectorColorSpace
      ( ..,
        VideoSelectorColorSpaceFOLLOW,
        VideoSelectorColorSpaceREC601,
        VideoSelectorColorSpaceREC709
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Video Selector Color Space
newtype VideoSelectorColorSpace = VideoSelectorColorSpace'
  { fromVideoSelectorColorSpace ::
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

pattern VideoSelectorColorSpaceFOLLOW :: VideoSelectorColorSpace
pattern VideoSelectorColorSpaceFOLLOW = VideoSelectorColorSpace' "FOLLOW"

pattern VideoSelectorColorSpaceREC601 :: VideoSelectorColorSpace
pattern VideoSelectorColorSpaceREC601 = VideoSelectorColorSpace' "REC_601"

pattern VideoSelectorColorSpaceREC709 :: VideoSelectorColorSpace
pattern VideoSelectorColorSpaceREC709 = VideoSelectorColorSpace' "REC_709"

{-# COMPLETE
  VideoSelectorColorSpaceFOLLOW,
  VideoSelectorColorSpaceREC601,
  VideoSelectorColorSpaceREC709,
  VideoSelectorColorSpace'
  #-}

instance Prelude.FromText VideoSelectorColorSpace where
  parser = VideoSelectorColorSpace' Prelude.<$> Prelude.takeText

instance Prelude.ToText VideoSelectorColorSpace where
  toText (VideoSelectorColorSpace' x) = x

instance Prelude.Hashable VideoSelectorColorSpace

instance Prelude.NFData VideoSelectorColorSpace

instance Prelude.ToByteString VideoSelectorColorSpace

instance Prelude.ToQuery VideoSelectorColorSpace

instance Prelude.ToHeader VideoSelectorColorSpace

instance Prelude.ToJSON VideoSelectorColorSpace where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VideoSelectorColorSpace where
  parseJSON = Prelude.parseJSONText "VideoSelectorColorSpace"
