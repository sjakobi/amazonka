{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.VideoDescriptionScalingBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VideoDescriptionScalingBehavior
  ( VideoDescriptionScalingBehavior
      ( ..,
        VDSBDefault,
        VDSBStretchToOutput
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Video Description Scaling Behavior
data VideoDescriptionScalingBehavior
  = VideoDescriptionScalingBehavior'
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

pattern VDSBDefault :: VideoDescriptionScalingBehavior
pattern VDSBDefault = VideoDescriptionScalingBehavior' "DEFAULT"

pattern VDSBStretchToOutput :: VideoDescriptionScalingBehavior
pattern VDSBStretchToOutput = VideoDescriptionScalingBehavior' "STRETCH_TO_OUTPUT"

{-# COMPLETE
  VDSBDefault,
  VDSBStretchToOutput,
  VideoDescriptionScalingBehavior'
  #-}

instance FromText VideoDescriptionScalingBehavior where
  parser = (VideoDescriptionScalingBehavior' . mk) <$> takeText

instance ToText VideoDescriptionScalingBehavior where
  toText (VideoDescriptionScalingBehavior' ci) = original ci

instance Hashable VideoDescriptionScalingBehavior

instance NFData VideoDescriptionScalingBehavior

instance ToByteString VideoDescriptionScalingBehavior

instance ToQuery VideoDescriptionScalingBehavior

instance ToHeader VideoDescriptionScalingBehavior

instance ToJSON VideoDescriptionScalingBehavior where
  toJSON = toJSONText

instance FromJSON VideoDescriptionScalingBehavior where
  parseJSON = parseJSONText "VideoDescriptionScalingBehavior"
