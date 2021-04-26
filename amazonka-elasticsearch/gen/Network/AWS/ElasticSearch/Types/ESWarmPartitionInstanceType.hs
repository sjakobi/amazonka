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
-- Module      : Network.AWS.ElasticSearch.Types.ESWarmPartitionInstanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ESWarmPartitionInstanceType
  ( ESWarmPartitionInstanceType
      ( ..,
        ESWarmPartitionInstanceTypeULTRAWARM1_Large_Elasticsearch,
        ESWarmPartitionInstanceTypeULTRAWARM1_Medium_Elasticsearch
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ESWarmPartitionInstanceType = ESWarmPartitionInstanceType'
  { fromESWarmPartitionInstanceType ::
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

pattern ESWarmPartitionInstanceTypeULTRAWARM1_Large_Elasticsearch :: ESWarmPartitionInstanceType
pattern ESWarmPartitionInstanceTypeULTRAWARM1_Large_Elasticsearch = ESWarmPartitionInstanceType' "ultrawarm1.large.elasticsearch"

pattern ESWarmPartitionInstanceTypeULTRAWARM1_Medium_Elasticsearch :: ESWarmPartitionInstanceType
pattern ESWarmPartitionInstanceTypeULTRAWARM1_Medium_Elasticsearch = ESWarmPartitionInstanceType' "ultrawarm1.medium.elasticsearch"

{-# COMPLETE
  ESWarmPartitionInstanceTypeULTRAWARM1_Large_Elasticsearch,
  ESWarmPartitionInstanceTypeULTRAWARM1_Medium_Elasticsearch,
  ESWarmPartitionInstanceType'
  #-}

instance Prelude.FromText ESWarmPartitionInstanceType where
  parser = ESWarmPartitionInstanceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ESWarmPartitionInstanceType where
  toText (ESWarmPartitionInstanceType' x) = x

instance Prelude.Hashable ESWarmPartitionInstanceType

instance Prelude.NFData ESWarmPartitionInstanceType

instance Prelude.ToByteString ESWarmPartitionInstanceType

instance Prelude.ToQuery ESWarmPartitionInstanceType

instance Prelude.ToHeader ESWarmPartitionInstanceType

instance Prelude.ToJSON ESWarmPartitionInstanceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ESWarmPartitionInstanceType where
  parseJSON = Prelude.parseJSONText "ESWarmPartitionInstanceType"
