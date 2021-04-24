{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Follow,
        Rec601,
        Rec709
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Video Selector Color Space
data VideoSelectorColorSpace
  = VideoSelectorColorSpace'
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

pattern Follow :: VideoSelectorColorSpace
pattern Follow = VideoSelectorColorSpace' "FOLLOW"

pattern Rec601 :: VideoSelectorColorSpace
pattern Rec601 = VideoSelectorColorSpace' "REC_601"

pattern Rec709 :: VideoSelectorColorSpace
pattern Rec709 = VideoSelectorColorSpace' "REC_709"

{-# COMPLETE
  Follow,
  Rec601,
  Rec709,
  VideoSelectorColorSpace'
  #-}

instance FromText VideoSelectorColorSpace where
  parser = (VideoSelectorColorSpace' . mk) <$> takeText

instance ToText VideoSelectorColorSpace where
  toText (VideoSelectorColorSpace' ci) = original ci

instance Hashable VideoSelectorColorSpace

instance NFData VideoSelectorColorSpace

instance ToByteString VideoSelectorColorSpace

instance ToQuery VideoSelectorColorSpace

instance ToHeader VideoSelectorColorSpace

instance ToJSON VideoSelectorColorSpace where
  toJSON = toJSONText

instance FromJSON VideoSelectorColorSpace where
  parseJSON = parseJSONText "VideoSelectorColorSpace"
