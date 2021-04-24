{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.DataDistributionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DataDistributionType
  ( DataDistributionType
      ( ..,
        DDTFullyReplicated,
        DDTShardedByS3Key
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DataDistributionType
  = DataDistributionType'
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

pattern DDTFullyReplicated :: DataDistributionType
pattern DDTFullyReplicated = DataDistributionType' "FullyReplicated"

pattern DDTShardedByS3Key :: DataDistributionType
pattern DDTShardedByS3Key = DataDistributionType' "ShardedByS3Key"

{-# COMPLETE
  DDTFullyReplicated,
  DDTShardedByS3Key,
  DataDistributionType'
  #-}

instance FromText DataDistributionType where
  parser = (DataDistributionType' . mk) <$> takeText

instance ToText DataDistributionType where
  toText (DataDistributionType' ci) = original ci

instance Hashable DataDistributionType

instance NFData DataDistributionType

instance ToByteString DataDistributionType

instance ToQuery DataDistributionType

instance ToHeader DataDistributionType

instance ToJSON DataDistributionType where
  toJSON = toJSONText

instance FromJSON DataDistributionType where
  parseJSON = parseJSONText "DataDistributionType"
