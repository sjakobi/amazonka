{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        BatchPrediction,
        DataSource,
        Evaluation,
        MLModel
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TaggableResourceType
  = TaggableResourceType'
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

pattern BatchPrediction :: TaggableResourceType
pattern BatchPrediction = TaggableResourceType' "BatchPrediction"

pattern DataSource :: TaggableResourceType
pattern DataSource = TaggableResourceType' "DataSource"

pattern Evaluation :: TaggableResourceType
pattern Evaluation = TaggableResourceType' "Evaluation"

pattern MLModel :: TaggableResourceType
pattern MLModel = TaggableResourceType' "MLModel"

{-# COMPLETE
  BatchPrediction,
  DataSource,
  Evaluation,
  MLModel,
  TaggableResourceType'
  #-}

instance FromText TaggableResourceType where
  parser = (TaggableResourceType' . mk) <$> takeText

instance ToText TaggableResourceType where
  toText (TaggableResourceType' ci) = original ci

instance Hashable TaggableResourceType

instance NFData TaggableResourceType

instance ToByteString TaggableResourceType

instance ToQuery TaggableResourceType

instance ToHeader TaggableResourceType

instance ToJSON TaggableResourceType where
  toJSON = toJSONText

instance FromJSON TaggableResourceType where
  parseJSON = parseJSONText "TaggableResourceType"
