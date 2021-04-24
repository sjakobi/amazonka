{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.S3DataDistribution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.S3DataDistribution
  ( S3DataDistribution
      ( ..,
        FullyReplicated,
        ShardedByS3Key
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data S3DataDistribution
  = S3DataDistribution'
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

pattern FullyReplicated :: S3DataDistribution
pattern FullyReplicated = S3DataDistribution' "FullyReplicated"

pattern ShardedByS3Key :: S3DataDistribution
pattern ShardedByS3Key = S3DataDistribution' "ShardedByS3Key"

{-# COMPLETE
  FullyReplicated,
  ShardedByS3Key,
  S3DataDistribution'
  #-}

instance FromText S3DataDistribution where
  parser = (S3DataDistribution' . mk) <$> takeText

instance ToText S3DataDistribution where
  toText (S3DataDistribution' ci) = original ci

instance Hashable S3DataDistribution

instance NFData S3DataDistribution

instance ToByteString S3DataDistribution

instance ToQuery S3DataDistribution

instance ToHeader S3DataDistribution

instance ToJSON S3DataDistribution where
  toJSON = toJSONText

instance FromJSON S3DataDistribution where
  parseJSON = parseJSONText "S3DataDistribution"
