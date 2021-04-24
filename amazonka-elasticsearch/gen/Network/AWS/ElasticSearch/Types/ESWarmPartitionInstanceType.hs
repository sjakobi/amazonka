{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticSearch.Types.ESWarmPartitionInstanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ESWarmPartitionInstanceType
  ( ESWarmPartitionInstanceType
      ( ..,
        ESWPITULTRAWARM1_Large_Elasticsearch,
        ESWPITULTRAWARM1_Medium_Elasticsearch
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ESWarmPartitionInstanceType
  = ESWarmPartitionInstanceType'
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

pattern ESWPITULTRAWARM1_Large_Elasticsearch :: ESWarmPartitionInstanceType
pattern ESWPITULTRAWARM1_Large_Elasticsearch = ESWarmPartitionInstanceType' "ultrawarm1.large.elasticsearch"

pattern ESWPITULTRAWARM1_Medium_Elasticsearch :: ESWarmPartitionInstanceType
pattern ESWPITULTRAWARM1_Medium_Elasticsearch = ESWarmPartitionInstanceType' "ultrawarm1.medium.elasticsearch"

{-# COMPLETE
  ESWPITULTRAWARM1_Large_Elasticsearch,
  ESWPITULTRAWARM1_Medium_Elasticsearch,
  ESWarmPartitionInstanceType'
  #-}

instance FromText ESWarmPartitionInstanceType where
  parser = (ESWarmPartitionInstanceType' . mk) <$> takeText

instance ToText ESWarmPartitionInstanceType where
  toText (ESWarmPartitionInstanceType' ci) = original ci

instance Hashable ESWarmPartitionInstanceType

instance NFData ESWarmPartitionInstanceType

instance ToByteString ESWarmPartitionInstanceType

instance ToQuery ESWarmPartitionInstanceType

instance ToHeader ESWarmPartitionInstanceType

instance ToJSON ESWarmPartitionInstanceType where
  toJSON = toJSONText

instance FromJSON ESWarmPartitionInstanceType where
  parseJSON = parseJSONText "ESWarmPartitionInstanceType"
