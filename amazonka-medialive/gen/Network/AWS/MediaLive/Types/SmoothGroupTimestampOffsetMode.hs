{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupTimestampOffsetMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupTimestampOffsetMode
  ( SmoothGroupTimestampOffsetMode
      ( ..,
        UseConfiguredOffset,
        UseEventStartDate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Smooth Group Timestamp Offset Mode
data SmoothGroupTimestampOffsetMode
  = SmoothGroupTimestampOffsetMode'
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

pattern UseConfiguredOffset :: SmoothGroupTimestampOffsetMode
pattern UseConfiguredOffset = SmoothGroupTimestampOffsetMode' "USE_CONFIGURED_OFFSET"

pattern UseEventStartDate :: SmoothGroupTimestampOffsetMode
pattern UseEventStartDate = SmoothGroupTimestampOffsetMode' "USE_EVENT_START_DATE"

{-# COMPLETE
  UseConfiguredOffset,
  UseEventStartDate,
  SmoothGroupTimestampOffsetMode'
  #-}

instance FromText SmoothGroupTimestampOffsetMode where
  parser = (SmoothGroupTimestampOffsetMode' . mk) <$> takeText

instance ToText SmoothGroupTimestampOffsetMode where
  toText (SmoothGroupTimestampOffsetMode' ci) = original ci

instance Hashable SmoothGroupTimestampOffsetMode

instance NFData SmoothGroupTimestampOffsetMode

instance ToByteString SmoothGroupTimestampOffsetMode

instance ToQuery SmoothGroupTimestampOffsetMode

instance ToHeader SmoothGroupTimestampOffsetMode

instance ToJSON SmoothGroupTimestampOffsetMode where
  toJSON = toJSONText

instance FromJSON SmoothGroupTimestampOffsetMode where
  parseJSON = parseJSONText "SmoothGroupTimestampOffsetMode"
