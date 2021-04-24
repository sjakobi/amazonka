{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringJobDefinitionSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringJobDefinitionSortKey
  ( MonitoringJobDefinitionSortKey
      ( ..,
        MJDSKCreationTime,
        MJDSKName
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MonitoringJobDefinitionSortKey
  = MonitoringJobDefinitionSortKey'
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

pattern MJDSKCreationTime :: MonitoringJobDefinitionSortKey
pattern MJDSKCreationTime = MonitoringJobDefinitionSortKey' "CreationTime"

pattern MJDSKName :: MonitoringJobDefinitionSortKey
pattern MJDSKName = MonitoringJobDefinitionSortKey' "Name"

{-# COMPLETE
  MJDSKCreationTime,
  MJDSKName,
  MonitoringJobDefinitionSortKey'
  #-}

instance FromText MonitoringJobDefinitionSortKey where
  parser = (MonitoringJobDefinitionSortKey' . mk) <$> takeText

instance ToText MonitoringJobDefinitionSortKey where
  toText (MonitoringJobDefinitionSortKey' ci) = original ci

instance Hashable MonitoringJobDefinitionSortKey

instance NFData MonitoringJobDefinitionSortKey

instance ToByteString MonitoringJobDefinitionSortKey

instance ToQuery MonitoringJobDefinitionSortKey

instance ToHeader MonitoringJobDefinitionSortKey

instance ToJSON MonitoringJobDefinitionSortKey where
  toJSON = toJSONText
