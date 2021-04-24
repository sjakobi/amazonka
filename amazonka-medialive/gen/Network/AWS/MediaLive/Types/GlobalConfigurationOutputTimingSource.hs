{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.GlobalConfigurationOutputTimingSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.GlobalConfigurationOutputTimingSource
  ( GlobalConfigurationOutputTimingSource
      ( ..,
        InputClock,
        SystemClock
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Global Configuration Output Timing Source
data GlobalConfigurationOutputTimingSource
  = GlobalConfigurationOutputTimingSource'
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

pattern InputClock :: GlobalConfigurationOutputTimingSource
pattern InputClock = GlobalConfigurationOutputTimingSource' "INPUT_CLOCK"

pattern SystemClock :: GlobalConfigurationOutputTimingSource
pattern SystemClock = GlobalConfigurationOutputTimingSource' "SYSTEM_CLOCK"

{-# COMPLETE
  InputClock,
  SystemClock,
  GlobalConfigurationOutputTimingSource'
  #-}

instance FromText GlobalConfigurationOutputTimingSource where
  parser = (GlobalConfigurationOutputTimingSource' . mk) <$> takeText

instance ToText GlobalConfigurationOutputTimingSource where
  toText (GlobalConfigurationOutputTimingSource' ci) = original ci

instance Hashable GlobalConfigurationOutputTimingSource

instance NFData GlobalConfigurationOutputTimingSource

instance ToByteString GlobalConfigurationOutputTimingSource

instance ToQuery GlobalConfigurationOutputTimingSource

instance ToHeader GlobalConfigurationOutputTimingSource

instance ToJSON GlobalConfigurationOutputTimingSource where
  toJSON = toJSONText

instance FromJSON GlobalConfigurationOutputTimingSource where
  parseJSON = parseJSONText "GlobalConfigurationOutputTimingSource"
