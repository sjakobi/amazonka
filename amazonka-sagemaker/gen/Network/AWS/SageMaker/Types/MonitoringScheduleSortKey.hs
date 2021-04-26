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
-- Module      : Network.AWS.SageMaker.Types.MonitoringScheduleSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringScheduleSortKey
  ( MonitoringScheduleSortKey
      ( ..,
        MonitoringScheduleSortKeyCreationTime,
        MonitoringScheduleSortKeyName,
        MonitoringScheduleSortKeyStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MonitoringScheduleSortKey = MonitoringScheduleSortKey'
  { fromMonitoringScheduleSortKey ::
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

pattern MonitoringScheduleSortKeyCreationTime :: MonitoringScheduleSortKey
pattern MonitoringScheduleSortKeyCreationTime = MonitoringScheduleSortKey' "CreationTime"

pattern MonitoringScheduleSortKeyName :: MonitoringScheduleSortKey
pattern MonitoringScheduleSortKeyName = MonitoringScheduleSortKey' "Name"

pattern MonitoringScheduleSortKeyStatus' :: MonitoringScheduleSortKey
pattern MonitoringScheduleSortKeyStatus' = MonitoringScheduleSortKey' "Status"

{-# COMPLETE
  MonitoringScheduleSortKeyCreationTime,
  MonitoringScheduleSortKeyName,
  MonitoringScheduleSortKeyStatus',
  MonitoringScheduleSortKey'
  #-}

instance Prelude.FromText MonitoringScheduleSortKey where
  parser = MonitoringScheduleSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText MonitoringScheduleSortKey where
  toText (MonitoringScheduleSortKey' x) = x

instance Prelude.Hashable MonitoringScheduleSortKey

instance Prelude.NFData MonitoringScheduleSortKey

instance Prelude.ToByteString MonitoringScheduleSortKey

instance Prelude.ToQuery MonitoringScheduleSortKey

instance Prelude.ToHeader MonitoringScheduleSortKey

instance Prelude.ToJSON MonitoringScheduleSortKey where
  toJSON = Prelude.toJSONText
