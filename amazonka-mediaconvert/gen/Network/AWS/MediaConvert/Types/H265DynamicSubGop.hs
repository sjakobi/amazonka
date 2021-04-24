{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.H265DynamicSubGop
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H265DynamicSubGop
  ( H265DynamicSubGop
      ( ..,
        HAdaptive,
        HStatic
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
data H265DynamicSubGop = H265DynamicSubGop' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HAdaptive :: H265DynamicSubGop
pattern HAdaptive = H265DynamicSubGop' "ADAPTIVE"

pattern HStatic :: H265DynamicSubGop
pattern HStatic = H265DynamicSubGop' "STATIC"

{-# COMPLETE
  HAdaptive,
  HStatic,
  H265DynamicSubGop'
  #-}

instance FromText H265DynamicSubGop where
  parser = (H265DynamicSubGop' . mk) <$> takeText

instance ToText H265DynamicSubGop where
  toText (H265DynamicSubGop' ci) = original ci

instance Hashable H265DynamicSubGop

instance NFData H265DynamicSubGop

instance ToByteString H265DynamicSubGop

instance ToQuery H265DynamicSubGop

instance ToHeader H265DynamicSubGop

instance ToJSON H265DynamicSubGop where
  toJSON = toJSONText

instance FromJSON H265DynamicSubGop where
  parseJSON = parseJSONText "H265DynamicSubGop"
