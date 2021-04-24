{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringProblemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringProblemType
  ( MonitoringProblemType
      ( ..,
        BinaryClassification,
        MulticlassClassification,
        Regression
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MonitoringProblemType
  = MonitoringProblemType'
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

pattern BinaryClassification :: MonitoringProblemType
pattern BinaryClassification = MonitoringProblemType' "BinaryClassification"

pattern MulticlassClassification :: MonitoringProblemType
pattern MulticlassClassification = MonitoringProblemType' "MulticlassClassification"

pattern Regression :: MonitoringProblemType
pattern Regression = MonitoringProblemType' "Regression"

{-# COMPLETE
  BinaryClassification,
  MulticlassClassification,
  Regression,
  MonitoringProblemType'
  #-}

instance FromText MonitoringProblemType where
  parser = (MonitoringProblemType' . mk) <$> takeText

instance ToText MonitoringProblemType where
  toText (MonitoringProblemType' ci) = original ci

instance Hashable MonitoringProblemType

instance NFData MonitoringProblemType

instance ToByteString MonitoringProblemType

instance ToQuery MonitoringProblemType

instance ToHeader MonitoringProblemType

instance ToJSON MonitoringProblemType where
  toJSON = toJSONText

instance FromJSON MonitoringProblemType where
  parseJSON = parseJSONText "MonitoringProblemType"
