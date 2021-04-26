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
-- Module      : Network.AWS.SageMaker.Types.MonitoringExecutionSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringExecutionSortKey
  ( MonitoringExecutionSortKey
      ( ..,
        MonitoringExecutionSortKeyCreationTime,
        MonitoringExecutionSortKeyScheduledTime,
        MonitoringExecutionSortKeyStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MonitoringExecutionSortKey = MonitoringExecutionSortKey'
  { fromMonitoringExecutionSortKey ::
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

pattern MonitoringExecutionSortKeyCreationTime :: MonitoringExecutionSortKey
pattern MonitoringExecutionSortKeyCreationTime = MonitoringExecutionSortKey' "CreationTime"

pattern MonitoringExecutionSortKeyScheduledTime :: MonitoringExecutionSortKey
pattern MonitoringExecutionSortKeyScheduledTime = MonitoringExecutionSortKey' "ScheduledTime"

pattern MonitoringExecutionSortKeyStatus' :: MonitoringExecutionSortKey
pattern MonitoringExecutionSortKeyStatus' = MonitoringExecutionSortKey' "Status"

{-# COMPLETE
  MonitoringExecutionSortKeyCreationTime,
  MonitoringExecutionSortKeyScheduledTime,
  MonitoringExecutionSortKeyStatus',
  MonitoringExecutionSortKey'
  #-}

instance Prelude.FromText MonitoringExecutionSortKey where
  parser = MonitoringExecutionSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText MonitoringExecutionSortKey where
  toText (MonitoringExecutionSortKey' x) = x

instance Prelude.Hashable MonitoringExecutionSortKey

instance Prelude.NFData MonitoringExecutionSortKey

instance Prelude.ToByteString MonitoringExecutionSortKey

instance Prelude.ToQuery MonitoringExecutionSortKey

instance Prelude.ToHeader MonitoringExecutionSortKey

instance Prelude.ToJSON MonitoringExecutionSortKey where
  toJSON = Prelude.toJSONText
