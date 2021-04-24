{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.ThingGroupIndexingMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.ThingGroupIndexingMode
  ( ThingGroupIndexingMode
      ( ..,
        ON,
        Off
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ThingGroupIndexingMode
  = ThingGroupIndexingMode'
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

pattern ON :: ThingGroupIndexingMode
pattern ON = ThingGroupIndexingMode' "ON"

pattern Off :: ThingGroupIndexingMode
pattern Off = ThingGroupIndexingMode' "OFF"

{-# COMPLETE
  ON,
  Off,
  ThingGroupIndexingMode'
  #-}

instance FromText ThingGroupIndexingMode where
  parser = (ThingGroupIndexingMode' . mk) <$> takeText

instance ToText ThingGroupIndexingMode where
  toText (ThingGroupIndexingMode' ci) = original ci

instance Hashable ThingGroupIndexingMode

instance NFData ThingGroupIndexingMode

instance ToByteString ThingGroupIndexingMode

instance ToQuery ThingGroupIndexingMode

instance ToHeader ThingGroupIndexingMode

instance ToJSON ThingGroupIndexingMode where
  toJSON = toJSONText

instance FromJSON ThingGroupIndexingMode where
  parseJSON = parseJSONText "ThingGroupIndexingMode"
