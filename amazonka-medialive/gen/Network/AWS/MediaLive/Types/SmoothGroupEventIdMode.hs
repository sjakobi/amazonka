{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.SmoothGroupEventIdMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.SmoothGroupEventIdMode
  ( SmoothGroupEventIdMode
      ( ..,
        SGEIMNoEventId,
        SGEIMUseConfigured,
        SGEIMUseTimestamp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Smooth Group Event Id Mode
data SmoothGroupEventIdMode
  = SmoothGroupEventIdMode'
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

pattern SGEIMNoEventId :: SmoothGroupEventIdMode
pattern SGEIMNoEventId = SmoothGroupEventIdMode' "NO_EVENT_ID"

pattern SGEIMUseConfigured :: SmoothGroupEventIdMode
pattern SGEIMUseConfigured = SmoothGroupEventIdMode' "USE_CONFIGURED"

pattern SGEIMUseTimestamp :: SmoothGroupEventIdMode
pattern SGEIMUseTimestamp = SmoothGroupEventIdMode' "USE_TIMESTAMP"

{-# COMPLETE
  SGEIMNoEventId,
  SGEIMUseConfigured,
  SGEIMUseTimestamp,
  SmoothGroupEventIdMode'
  #-}

instance FromText SmoothGroupEventIdMode where
  parser = (SmoothGroupEventIdMode' . mk) <$> takeText

instance ToText SmoothGroupEventIdMode where
  toText (SmoothGroupEventIdMode' ci) = original ci

instance Hashable SmoothGroupEventIdMode

instance NFData SmoothGroupEventIdMode

instance ToByteString SmoothGroupEventIdMode

instance ToQuery SmoothGroupEventIdMode

instance ToHeader SmoothGroupEventIdMode

instance ToJSON SmoothGroupEventIdMode where
  toJSON = toJSONText

instance FromJSON SmoothGroupEventIdMode where
  parseJSON = parseJSONText "SmoothGroupEventIdMode"
