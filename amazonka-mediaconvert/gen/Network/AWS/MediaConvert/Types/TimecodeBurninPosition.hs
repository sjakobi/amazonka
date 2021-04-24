{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.TimecodeBurninPosition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.TimecodeBurninPosition
  ( TimecodeBurninPosition
      ( ..,
        BottomCenter,
        BottomLeft,
        BottomRight,
        MiddleCenter,
        MiddleLeft,
        MiddleRight,
        TopCenter,
        TopLeft,
        TopRight
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to specify the location the burned-in timecode on output video.
data TimecodeBurninPosition
  = TimecodeBurninPosition'
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

pattern BottomCenter :: TimecodeBurninPosition
pattern BottomCenter = TimecodeBurninPosition' "BOTTOM_CENTER"

pattern BottomLeft :: TimecodeBurninPosition
pattern BottomLeft = TimecodeBurninPosition' "BOTTOM_LEFT"

pattern BottomRight :: TimecodeBurninPosition
pattern BottomRight = TimecodeBurninPosition' "BOTTOM_RIGHT"

pattern MiddleCenter :: TimecodeBurninPosition
pattern MiddleCenter = TimecodeBurninPosition' "MIDDLE_CENTER"

pattern MiddleLeft :: TimecodeBurninPosition
pattern MiddleLeft = TimecodeBurninPosition' "MIDDLE_LEFT"

pattern MiddleRight :: TimecodeBurninPosition
pattern MiddleRight = TimecodeBurninPosition' "MIDDLE_RIGHT"

pattern TopCenter :: TimecodeBurninPosition
pattern TopCenter = TimecodeBurninPosition' "TOP_CENTER"

pattern TopLeft :: TimecodeBurninPosition
pattern TopLeft = TimecodeBurninPosition' "TOP_LEFT"

pattern TopRight :: TimecodeBurninPosition
pattern TopRight = TimecodeBurninPosition' "TOP_RIGHT"

{-# COMPLETE
  BottomCenter,
  BottomLeft,
  BottomRight,
  MiddleCenter,
  MiddleLeft,
  MiddleRight,
  TopCenter,
  TopLeft,
  TopRight,
  TimecodeBurninPosition'
  #-}

instance FromText TimecodeBurninPosition where
  parser = (TimecodeBurninPosition' . mk) <$> takeText

instance ToText TimecodeBurninPosition where
  toText (TimecodeBurninPosition' ci) = original ci

instance Hashable TimecodeBurninPosition

instance NFData TimecodeBurninPosition

instance ToByteString TimecodeBurninPosition

instance ToQuery TimecodeBurninPosition

instance ToHeader TimecodeBurninPosition

instance ToJSON TimecodeBurninPosition where
  toJSON = toJSONText

instance FromJSON TimecodeBurninPosition where
  parseJSON = parseJSONText "TimecodeBurninPosition"
