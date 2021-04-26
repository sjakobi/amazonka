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
-- Module      : Network.AWS.MachineLearning.Types.TaggableResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MachineLearning.Types.TaggableResourceType
  ( TaggableResourceType
      ( ..,
        TaggableResourceTypeBatchPrediction,
        TaggableResourceTypeDataSource,
        TaggableResourceTypeEvaluation,
        TaggableResourceTypeMLModel
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaggableResourceType = TaggableResourceType'
  { fromTaggableResourceType ::
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

pattern TaggableResourceTypeBatchPrediction :: TaggableResourceType
pattern TaggableResourceTypeBatchPrediction = TaggableResourceType' "BatchPrediction"

pattern TaggableResourceTypeDataSource :: TaggableResourceType
pattern TaggableResourceTypeDataSource = TaggableResourceType' "DataSource"

pattern TaggableResourceTypeEvaluation :: TaggableResourceType
pattern TaggableResourceTypeEvaluation = TaggableResourceType' "Evaluation"

pattern TaggableResourceTypeMLModel :: TaggableResourceType
pattern TaggableResourceTypeMLModel = TaggableResourceType' "MLModel"

{-# COMPLETE
  TaggableResourceTypeBatchPrediction,
  TaggableResourceTypeDataSource,
  TaggableResourceTypeEvaluation,
  TaggableResourceTypeMLModel,
  TaggableResourceType'
  #-}

instance Prelude.FromText TaggableResourceType where
  parser = TaggableResourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaggableResourceType where
  toText (TaggableResourceType' x) = x

instance Prelude.Hashable TaggableResourceType

instance Prelude.NFData TaggableResourceType

instance Prelude.ToByteString TaggableResourceType

instance Prelude.ToQuery TaggableResourceType

instance Prelude.ToHeader TaggableResourceType

instance Prelude.ToJSON TaggableResourceType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON TaggableResourceType where
  parseJSON = Prelude.parseJSONText "TaggableResourceType"
