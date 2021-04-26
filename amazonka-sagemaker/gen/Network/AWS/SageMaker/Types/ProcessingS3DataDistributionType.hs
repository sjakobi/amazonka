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
-- Module      : Network.AWS.SageMaker.Types.ProcessingS3DataDistributionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProcessingS3DataDistributionType
  ( ProcessingS3DataDistributionType
      ( ..,
        ProcessingS3DataDistributionTypeFullyReplicated,
        ProcessingS3DataDistributionTypeShardedByS3Key
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProcessingS3DataDistributionType = ProcessingS3DataDistributionType'
  { fromProcessingS3DataDistributionType ::
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

pattern ProcessingS3DataDistributionTypeFullyReplicated :: ProcessingS3DataDistributionType
pattern ProcessingS3DataDistributionTypeFullyReplicated = ProcessingS3DataDistributionType' "FullyReplicated"

pattern ProcessingS3DataDistributionTypeShardedByS3Key :: ProcessingS3DataDistributionType
pattern ProcessingS3DataDistributionTypeShardedByS3Key = ProcessingS3DataDistributionType' "ShardedByS3Key"

{-# COMPLETE
  ProcessingS3DataDistributionTypeFullyReplicated,
  ProcessingS3DataDistributionTypeShardedByS3Key,
  ProcessingS3DataDistributionType'
  #-}

instance Prelude.FromText ProcessingS3DataDistributionType where
  parser = ProcessingS3DataDistributionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProcessingS3DataDistributionType where
  toText (ProcessingS3DataDistributionType' x) = x

instance Prelude.Hashable ProcessingS3DataDistributionType

instance Prelude.NFData ProcessingS3DataDistributionType

instance Prelude.ToByteString ProcessingS3DataDistributionType

instance Prelude.ToQuery ProcessingS3DataDistributionType

instance Prelude.ToHeader ProcessingS3DataDistributionType

instance Prelude.ToJSON ProcessingS3DataDistributionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProcessingS3DataDistributionType where
  parseJSON = Prelude.parseJSONText "ProcessingS3DataDistributionType"
