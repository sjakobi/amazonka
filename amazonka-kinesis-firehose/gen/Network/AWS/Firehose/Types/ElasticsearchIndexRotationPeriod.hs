{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Firehose.Types.ElasticsearchIndexRotationPeriod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ElasticsearchIndexRotationPeriod
  ( ElasticsearchIndexRotationPeriod
      ( ..,
        NoRotation,
        OneDay,
        OneHour,
        OneMonth,
        OneWeek
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ElasticsearchIndexRotationPeriod
  = ElasticsearchIndexRotationPeriod'
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

pattern NoRotation :: ElasticsearchIndexRotationPeriod
pattern NoRotation = ElasticsearchIndexRotationPeriod' "NoRotation"

pattern OneDay :: ElasticsearchIndexRotationPeriod
pattern OneDay = ElasticsearchIndexRotationPeriod' "OneDay"

pattern OneHour :: ElasticsearchIndexRotationPeriod
pattern OneHour = ElasticsearchIndexRotationPeriod' "OneHour"

pattern OneMonth :: ElasticsearchIndexRotationPeriod
pattern OneMonth = ElasticsearchIndexRotationPeriod' "OneMonth"

pattern OneWeek :: ElasticsearchIndexRotationPeriod
pattern OneWeek = ElasticsearchIndexRotationPeriod' "OneWeek"

{-# COMPLETE
  NoRotation,
  OneDay,
  OneHour,
  OneMonth,
  OneWeek,
  ElasticsearchIndexRotationPeriod'
  #-}

instance FromText ElasticsearchIndexRotationPeriod where
  parser = (ElasticsearchIndexRotationPeriod' . mk) <$> takeText

instance ToText ElasticsearchIndexRotationPeriod where
  toText (ElasticsearchIndexRotationPeriod' ci) = original ci

instance Hashable ElasticsearchIndexRotationPeriod

instance NFData ElasticsearchIndexRotationPeriod

instance ToByteString ElasticsearchIndexRotationPeriod

instance ToQuery ElasticsearchIndexRotationPeriod

instance ToHeader ElasticsearchIndexRotationPeriod

instance ToJSON ElasticsearchIndexRotationPeriod where
  toJSON = toJSONText

instance FromJSON ElasticsearchIndexRotationPeriod where
  parseJSON = parseJSONText "ElasticsearchIndexRotationPeriod"
