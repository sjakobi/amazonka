{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Fallback,
        Force
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Video Selector Color Space Usage
data VideoSelectorColorSpaceUsage
  = VideoSelectorColorSpaceUsage'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Fallback :: VideoSelectorColorSpaceUsage
pattern Fallback = VideoSelectorColorSpaceUsage' "FALLBACK"

pattern Force :: VideoSelectorColorSpaceUsage
pattern Force = VideoSelectorColorSpaceUsage' "FORCE"

{-# COMPLETE
  Fallback,
  Force,
  VideoSelectorColorSpaceUsage'
  #-}

instance FromText VideoSelectorColorSpaceUsage where
  parser = (VideoSelectorColorSpaceUsage' . mk) <$> takeText

instance ToText VideoSelectorColorSpaceUsage where
  toText (VideoSelectorColorSpaceUsage' ci) = original ci

instance Hashable VideoSelectorColorSpaceUsage

instance NFData VideoSelectorColorSpaceUsage

instance ToByteString VideoSelectorColorSpaceUsage

instance ToQuery VideoSelectorColorSpaceUsage

instance ToHeader VideoSelectorColorSpaceUsage

instance ToJSON VideoSelectorColorSpaceUsage where
  toJSON = toJSONText

instance FromJSON VideoSelectorColorSpaceUsage where
  parseJSON = parseJSONText "VideoSelectorColorSpaceUsage"
