{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Mpeg2DynamicSubGop
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mpeg2DynamicSubGop
  ( Mpeg2DynamicSubGop
      ( ..,
        Adaptive,
        Static
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
data Mpeg2DynamicSubGop
  = Mpeg2DynamicSubGop'
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

pattern Adaptive :: Mpeg2DynamicSubGop
pattern Adaptive = Mpeg2DynamicSubGop' "ADAPTIVE"

pattern Static :: Mpeg2DynamicSubGop
pattern Static = Mpeg2DynamicSubGop' "STATIC"

{-# COMPLETE
  Adaptive,
  Static,
  Mpeg2DynamicSubGop'
  #-}

instance FromText Mpeg2DynamicSubGop where
  parser = (Mpeg2DynamicSubGop' . mk) <$> takeText

instance ToText Mpeg2DynamicSubGop where
  toText (Mpeg2DynamicSubGop' ci) = original ci

instance Hashable Mpeg2DynamicSubGop

instance NFData Mpeg2DynamicSubGop

instance ToByteString Mpeg2DynamicSubGop

instance ToQuery Mpeg2DynamicSubGop

instance ToHeader Mpeg2DynamicSubGop

instance ToJSON Mpeg2DynamicSubGop where
  toJSON = toJSONText

instance FromJSON Mpeg2DynamicSubGop where
  parseJSON = parseJSONText "Mpeg2DynamicSubGop"
