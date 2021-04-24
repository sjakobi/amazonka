{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringType
  ( MonitoringType
      ( ..,
        DataQuality,
        ModelBias,
        ModelExplainability,
        ModelQuality
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MonitoringType = MonitoringType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DataQuality :: MonitoringType
pattern DataQuality = MonitoringType' "DataQuality"

pattern ModelBias :: MonitoringType
pattern ModelBias = MonitoringType' "ModelBias"

pattern ModelExplainability :: MonitoringType
pattern ModelExplainability = MonitoringType' "ModelExplainability"

pattern ModelQuality :: MonitoringType
pattern ModelQuality = MonitoringType' "ModelQuality"

{-# COMPLETE
  DataQuality,
  ModelBias,
  ModelExplainability,
  ModelQuality,
  MonitoringType'
  #-}

instance FromText MonitoringType where
  parser = (MonitoringType' . mk) <$> takeText

instance ToText MonitoringType where
  toText (MonitoringType' ci) = original ci

instance Hashable MonitoringType

instance NFData MonitoringType

instance ToByteString MonitoringType

instance ToQuery MonitoringType

instance ToHeader MonitoringType

instance ToJSON MonitoringType where
  toJSON = toJSONText

instance FromJSON MonitoringType where
  parseJSON = parseJSONText "MonitoringType"
