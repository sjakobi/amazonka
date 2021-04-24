{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.M2tsAudioInterval
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.M2tsAudioInterval
  ( M2tsAudioInterval
      ( ..,
        VideoAndFixedIntervals,
        VideoInterval
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | M2ts Audio Interval
data M2tsAudioInterval = M2tsAudioInterval' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern VideoAndFixedIntervals :: M2tsAudioInterval
pattern VideoAndFixedIntervals = M2tsAudioInterval' "VIDEO_AND_FIXED_INTERVALS"

pattern VideoInterval :: M2tsAudioInterval
pattern VideoInterval = M2tsAudioInterval' "VIDEO_INTERVAL"

{-# COMPLETE
  VideoAndFixedIntervals,
  VideoInterval,
  M2tsAudioInterval'
  #-}

instance FromText M2tsAudioInterval where
  parser = (M2tsAudioInterval' . mk) <$> takeText

instance ToText M2tsAudioInterval where
  toText (M2tsAudioInterval' ci) = original ci

instance Hashable M2tsAudioInterval

instance NFData M2tsAudioInterval

instance ToByteString M2tsAudioInterval

instance ToQuery M2tsAudioInterval

instance ToHeader M2tsAudioInterval

instance ToJSON M2tsAudioInterval where
  toJSON = toJSONText

instance FromJSON M2tsAudioInterval where
  parseJSON = parseJSONText "M2tsAudioInterval"
