{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.TimeUnit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.TimeUnit
  ( TimeUnit
      ( ..,
        Hours
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies the unit of a maintenance schedule duration. Valid value is HOUR. See the <https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html Developer Guide> for more information.
data TimeUnit = TimeUnit' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Hours :: TimeUnit
pattern Hours = TimeUnit' "HOURS"

{-# COMPLETE
  Hours,
  TimeUnit'
  #-}

instance FromText TimeUnit where
  parser = (TimeUnit' . mk) <$> takeText

instance ToText TimeUnit where
  toText (TimeUnit' ci) = original ci

instance Hashable TimeUnit

instance NFData TimeUnit

instance ToByteString TimeUnit

instance ToQuery TimeUnit

instance ToHeader TimeUnit

instance ToJSON TimeUnit where
  toJSON = toJSONText

instance FromJSON TimeUnit where
  parseJSON = parseJSONText "TimeUnit"
