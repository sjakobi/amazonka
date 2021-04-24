{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringExecutionSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringExecutionSortKey
  ( MonitoringExecutionSortKey
      ( ..,
        MESKCreationTime,
        MESKScheduledTime,
        MESKStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MonitoringExecutionSortKey
  = MonitoringExecutionSortKey'
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

pattern MESKCreationTime :: MonitoringExecutionSortKey
pattern MESKCreationTime = MonitoringExecutionSortKey' "CreationTime"

pattern MESKScheduledTime :: MonitoringExecutionSortKey
pattern MESKScheduledTime = MonitoringExecutionSortKey' "ScheduledTime"

pattern MESKStatus :: MonitoringExecutionSortKey
pattern MESKStatus = MonitoringExecutionSortKey' "Status"

{-# COMPLETE
  MESKCreationTime,
  MESKScheduledTime,
  MESKStatus,
  MonitoringExecutionSortKey'
  #-}

instance FromText MonitoringExecutionSortKey where
  parser = (MonitoringExecutionSortKey' . mk) <$> takeText

instance ToText MonitoringExecutionSortKey where
  toText (MonitoringExecutionSortKey' ci) = original ci

instance Hashable MonitoringExecutionSortKey

instance NFData MonitoringExecutionSortKey

instance ToByteString MonitoringExecutionSortKey

instance ToQuery MonitoringExecutionSortKey

instance ToHeader MonitoringExecutionSortKey

instance ToJSON MonitoringExecutionSortKey where
  toJSON = toJSONText
