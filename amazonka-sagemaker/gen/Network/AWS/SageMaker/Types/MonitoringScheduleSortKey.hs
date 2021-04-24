{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.MonitoringScheduleSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringScheduleSortKey
  ( MonitoringScheduleSortKey
      ( ..,
        MSSKCreationTime,
        MSSKName,
        MSSKStatus
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MonitoringScheduleSortKey
  = MonitoringScheduleSortKey'
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

pattern MSSKCreationTime :: MonitoringScheduleSortKey
pattern MSSKCreationTime = MonitoringScheduleSortKey' "CreationTime"

pattern MSSKName :: MonitoringScheduleSortKey
pattern MSSKName = MonitoringScheduleSortKey' "Name"

pattern MSSKStatus :: MonitoringScheduleSortKey
pattern MSSKStatus = MonitoringScheduleSortKey' "Status"

{-# COMPLETE
  MSSKCreationTime,
  MSSKName,
  MSSKStatus,
  MonitoringScheduleSortKey'
  #-}

instance FromText MonitoringScheduleSortKey where
  parser = (MonitoringScheduleSortKey' . mk) <$> takeText

instance ToText MonitoringScheduleSortKey where
  toText (MonitoringScheduleSortKey' ci) = original ci

instance Hashable MonitoringScheduleSortKey

instance NFData MonitoringScheduleSortKey

instance ToByteString MonitoringScheduleSortKey

instance ToQuery MonitoringScheduleSortKey

instance ToHeader MonitoringScheduleSortKey

instance ToJSON MonitoringScheduleSortKey where
  toJSON = toJSONText
