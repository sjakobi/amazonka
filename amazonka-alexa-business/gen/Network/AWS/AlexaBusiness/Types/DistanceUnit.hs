{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.DistanceUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DistanceUnit
  ( DistanceUnit
      ( ..,
        Imperial,
        Metric
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DistanceUnit = DistanceUnit' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Imperial :: DistanceUnit
pattern Imperial = DistanceUnit' "IMPERIAL"

pattern Metric :: DistanceUnit
pattern Metric = DistanceUnit' "METRIC"

{-# COMPLETE
  Imperial,
  Metric,
  DistanceUnit'
  #-}

instance FromText DistanceUnit where
  parser = (DistanceUnit' . mk) <$> takeText

instance ToText DistanceUnit where
  toText (DistanceUnit' ci) = original ci

instance Hashable DistanceUnit

instance NFData DistanceUnit

instance ToByteString DistanceUnit

instance ToQuery DistanceUnit

instance ToHeader DistanceUnit

instance ToJSON DistanceUnit where
  toJSON = toJSONText

instance FromJSON DistanceUnit where
  parseJSON = parseJSONText "DistanceUnit"
