{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.TimedMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.TimedMetadata
  ( TimedMetadata
      ( ..,
        TMNone,
        TMPassthrough
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Applies only to HLS outputs. Use this setting to specify whether the service inserts the ID3 timed metadata from the input in this output.
data TimedMetadata = TimedMetadata' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern TMNone :: TimedMetadata
pattern TMNone = TimedMetadata' "NONE"

pattern TMPassthrough :: TimedMetadata
pattern TMPassthrough = TimedMetadata' "PASSTHROUGH"

{-# COMPLETE
  TMNone,
  TMPassthrough,
  TimedMetadata'
  #-}

instance FromText TimedMetadata where
  parser = (TimedMetadata' . mk) <$> takeText

instance ToText TimedMetadata where
  toText (TimedMetadata' ci) = original ci

instance Hashable TimedMetadata

instance NFData TimedMetadata

instance ToByteString TimedMetadata

instance ToQuery TimedMetadata

instance ToHeader TimedMetadata

instance ToJSON TimedMetadata where
  toJSON = toJSONText

instance FromJSON TimedMetadata where
  parseJSON = parseJSONText "TimedMetadata"
