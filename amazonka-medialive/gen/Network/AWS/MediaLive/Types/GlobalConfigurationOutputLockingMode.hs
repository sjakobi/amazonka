{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.GlobalConfigurationOutputLockingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.GlobalConfigurationOutputLockingMode
  ( GlobalConfigurationOutputLockingMode
      ( ..,
        EpochLocking,
        PipelineLocking
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Global Configuration Output Locking Mode
data GlobalConfigurationOutputLockingMode
  = GlobalConfigurationOutputLockingMode'
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

pattern EpochLocking :: GlobalConfigurationOutputLockingMode
pattern EpochLocking = GlobalConfigurationOutputLockingMode' "EPOCH_LOCKING"

pattern PipelineLocking :: GlobalConfigurationOutputLockingMode
pattern PipelineLocking = GlobalConfigurationOutputLockingMode' "PIPELINE_LOCKING"

{-# COMPLETE
  EpochLocking,
  PipelineLocking,
  GlobalConfigurationOutputLockingMode'
  #-}

instance FromText GlobalConfigurationOutputLockingMode where
  parser = (GlobalConfigurationOutputLockingMode' . mk) <$> takeText

instance ToText GlobalConfigurationOutputLockingMode where
  toText (GlobalConfigurationOutputLockingMode' ci) = original ci

instance Hashable GlobalConfigurationOutputLockingMode

instance NFData GlobalConfigurationOutputLockingMode

instance ToByteString GlobalConfigurationOutputLockingMode

instance ToQuery GlobalConfigurationOutputLockingMode

instance ToHeader GlobalConfigurationOutputLockingMode

instance ToJSON GlobalConfigurationOutputLockingMode where
  toJSON = toJSONText

instance FromJSON GlobalConfigurationOutputLockingMode where
  parseJSON = parseJSONText "GlobalConfigurationOutputLockingMode"
