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
-- Module      : Network.AWS.MediaLive.Types.VideoSelectorColorSpaceUsage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VideoSelectorColorSpaceUsage
  ( VideoSelectorColorSpaceUsage
      ( ..,
        VideoSelectorColorSpaceUsageFALLBACK,
        VideoSelectorColorSpaceUsageFORCE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Video Selector Color Space Usage
newtype VideoSelectorColorSpaceUsage = VideoSelectorColorSpaceUsage'
  { fromVideoSelectorColorSpaceUsage ::
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

pattern VideoSelectorColorSpaceUsageFALLBACK :: VideoSelectorColorSpaceUsage
pattern VideoSelectorColorSpaceUsageFALLBACK = VideoSelectorColorSpaceUsage' "FALLBACK"

pattern VideoSelectorColorSpaceUsageFORCE :: VideoSelectorColorSpaceUsage
pattern VideoSelectorColorSpaceUsageFORCE = VideoSelectorColorSpaceUsage' "FORCE"

{-# COMPLETE
  VideoSelectorColorSpaceUsageFALLBACK,
  VideoSelectorColorSpaceUsageFORCE,
  VideoSelectorColorSpaceUsage'
  #-}

instance Prelude.FromText VideoSelectorColorSpaceUsage where
  parser = VideoSelectorColorSpaceUsage' Prelude.<$> Prelude.takeText

instance Prelude.ToText VideoSelectorColorSpaceUsage where
  toText (VideoSelectorColorSpaceUsage' x) = x

instance Prelude.Hashable VideoSelectorColorSpaceUsage

instance Prelude.NFData VideoSelectorColorSpaceUsage

instance Prelude.ToByteString VideoSelectorColorSpaceUsage

instance Prelude.ToQuery VideoSelectorColorSpaceUsage

instance Prelude.ToHeader VideoSelectorColorSpaceUsage

instance Prelude.ToJSON VideoSelectorColorSpaceUsage where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VideoSelectorColorSpaceUsage where
  parseJSON = Prelude.parseJSONText "VideoSelectorColorSpaceUsage"
