{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchLogs.Types.Distribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.Distribution
  ( Distribution
      ( ..,
        ByLogStream,
        Random
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The method used to distribute log data to the destination, which can be either random or grouped by log stream.
data Distribution = Distribution' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ByLogStream :: Distribution
pattern ByLogStream = Distribution' "ByLogStream"

pattern Random :: Distribution
pattern Random = Distribution' "Random"

{-# COMPLETE
  ByLogStream,
  Random,
  Distribution'
  #-}

instance FromText Distribution where
  parser = (Distribution' . mk) <$> takeText

instance ToText Distribution where
  toText (Distribution' ci) = original ci

instance Hashable Distribution

instance NFData Distribution

instance ToByteString Distribution

instance ToQuery Distribution

instance ToHeader Distribution

instance ToJSON Distribution where
  toJSON = toJSONText

instance FromJSON Distribution where
  parseJSON = parseJSONText "Distribution"
