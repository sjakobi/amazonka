{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.TimecodeConfigSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TimecodeConfigSource
  ( TimecodeConfigSource
      ( ..,
        TCSEmbedded,
        TCSSystemclock,
        TCSZerobased
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Timecode Config Source
data TimecodeConfigSource
  = TimecodeConfigSource'
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

pattern TCSEmbedded :: TimecodeConfigSource
pattern TCSEmbedded = TimecodeConfigSource' "EMBEDDED"

pattern TCSSystemclock :: TimecodeConfigSource
pattern TCSSystemclock = TimecodeConfigSource' "SYSTEMCLOCK"

pattern TCSZerobased :: TimecodeConfigSource
pattern TCSZerobased = TimecodeConfigSource' "ZEROBASED"

{-# COMPLETE
  TCSEmbedded,
  TCSSystemclock,
  TCSZerobased,
  TimecodeConfigSource'
  #-}

instance FromText TimecodeConfigSource where
  parser = (TimecodeConfigSource' . mk) <$> takeText

instance ToText TimecodeConfigSource where
  toText (TimecodeConfigSource' ci) = original ci

instance Hashable TimecodeConfigSource

instance NFData TimecodeConfigSource

instance ToByteString TimecodeConfigSource

instance ToQuery TimecodeConfigSource

instance ToHeader TimecodeConfigSource

instance ToJSON TimecodeConfigSource where
  toJSON = toJSONText

instance FromJSON TimecodeConfigSource where
  parseJSON = parseJSONText "TimecodeConfigSource"
