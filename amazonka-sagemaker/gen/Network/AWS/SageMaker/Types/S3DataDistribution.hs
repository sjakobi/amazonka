{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        S3DataDistributionFullyReplicated,
        S3DataDistributionShardedByS3Key
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype S3DataDistribution = S3DataDistribution'
  { fromS3DataDistribution ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern S3DataDistributionFullyReplicated :: S3DataDistribution
pattern S3DataDistributionFullyReplicated = S3DataDistribution' "FullyReplicated"

pattern S3DataDistributionShardedByS3Key :: S3DataDistribution
pattern S3DataDistributionShardedByS3Key = S3DataDistribution' "ShardedByS3Key"

{-# COMPLETE
  S3DataDistributionFullyReplicated,
  S3DataDistributionShardedByS3Key,
  S3DataDistribution'
  #-}

instance Prelude.FromText S3DataDistribution where
  parser = S3DataDistribution' Prelude.<$> Prelude.takeText

instance Prelude.ToText S3DataDistribution where
  toText (S3DataDistribution' x) = x

instance Prelude.Hashable S3DataDistribution

instance Prelude.NFData S3DataDistribution

instance Prelude.ToByteString S3DataDistribution

instance Prelude.ToQuery S3DataDistribution

instance Prelude.ToHeader S3DataDistribution

instance Prelude.ToJSON S3DataDistribution where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON S3DataDistribution where
  parseJSON = Prelude.parseJSONText "S3DataDistribution"
