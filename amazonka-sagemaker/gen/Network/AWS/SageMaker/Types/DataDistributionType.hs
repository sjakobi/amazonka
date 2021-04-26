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
-- Module      : Network.AWS.SageMaker.Types.DataDistributionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.DataDistributionType
  ( DataDistributionType
      ( ..,
        DataDistributionTypeFullyReplicated,
        DataDistributionTypeShardedByS3Key
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DataDistributionType = DataDistributionType'
  { fromDataDistributionType ::
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

pattern DataDistributionTypeFullyReplicated :: DataDistributionType
pattern DataDistributionTypeFullyReplicated = DataDistributionType' "FullyReplicated"

pattern DataDistributionTypeShardedByS3Key :: DataDistributionType
pattern DataDistributionTypeShardedByS3Key = DataDistributionType' "ShardedByS3Key"

{-# COMPLETE
  DataDistributionTypeFullyReplicated,
  DataDistributionTypeShardedByS3Key,
  DataDistributionType'
  #-}

instance Prelude.FromText DataDistributionType where
  parser = DataDistributionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DataDistributionType where
  toText (DataDistributionType' x) = x

instance Prelude.Hashable DataDistributionType

instance Prelude.NFData DataDistributionType

instance Prelude.ToByteString DataDistributionType

instance Prelude.ToQuery DataDistributionType

instance Prelude.ToHeader DataDistributionType

instance Prelude.ToJSON DataDistributionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DataDistributionType where
  parseJSON = Prelude.parseJSONText "DataDistributionType"
