{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsSegmentationStyle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsSegmentationStyle
  ( M2tsSegmentationStyle
      ( ..,
        MaintainCadence,
        ResetCadence
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Segmentation Style
data M2tsSegmentationStyle
  = M2tsSegmentationStyle'
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

pattern MaintainCadence :: M2tsSegmentationStyle
pattern MaintainCadence = M2tsSegmentationStyle' "MAINTAIN_CADENCE"

pattern ResetCadence :: M2tsSegmentationStyle
pattern ResetCadence = M2tsSegmentationStyle' "RESET_CADENCE"

{-# COMPLETE
  MaintainCadence,
  ResetCadence,
  M2tsSegmentationStyle'
  #-}

instance FromText M2tsSegmentationStyle where
  parser = (M2tsSegmentationStyle' . mk) <$> takeText

instance ToText M2tsSegmentationStyle where
  toText (M2tsSegmentationStyle' ci) = original ci

instance Hashable M2tsSegmentationStyle

instance NFData M2tsSegmentationStyle

instance ToByteString M2tsSegmentationStyle

instance ToQuery M2tsSegmentationStyle

instance ToHeader M2tsSegmentationStyle

instance ToJSON M2tsSegmentationStyle where
  toJSON = toJSONText

instance FromJSON M2tsSegmentationStyle where
  parseJSON = parseJSONText "M2tsSegmentationStyle"
