{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H264DynamicSubGop
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264DynamicSubGop
  ( H264DynamicSubGop
      ( ..,
        HDSGAdaptive,
        HDSGStatic
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
data H264DynamicSubGop = H264DynamicSubGop' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HDSGAdaptive :: H264DynamicSubGop
pattern HDSGAdaptive = H264DynamicSubGop' "ADAPTIVE"

pattern HDSGStatic :: H264DynamicSubGop
pattern HDSGStatic = H264DynamicSubGop' "STATIC"

{-# COMPLETE
  HDSGAdaptive,
  HDSGStatic,
  H264DynamicSubGop'
  #-}

instance FromText H264DynamicSubGop where
  parser = (H264DynamicSubGop' . mk) <$> takeText

instance ToText H264DynamicSubGop where
  toText (H264DynamicSubGop' ci) = original ci

instance Hashable H264DynamicSubGop

instance NFData H264DynamicSubGop

instance ToByteString H264DynamicSubGop

instance ToQuery H264DynamicSubGop

instance ToHeader H264DynamicSubGop

instance ToJSON H264DynamicSubGop where
  toJSON = toJSONText

instance FromJSON H264DynamicSubGop where
  parseJSON = parseJSONText "H264DynamicSubGop"
