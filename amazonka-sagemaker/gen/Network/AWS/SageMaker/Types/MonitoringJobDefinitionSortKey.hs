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
-- Module      : Network.AWS.SageMaker.Types.MonitoringJobDefinitionSortKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringJobDefinitionSortKey
  ( MonitoringJobDefinitionSortKey
      ( ..,
        MonitoringJobDefinitionSortKeyCreationTime,
        MonitoringJobDefinitionSortKeyName
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MonitoringJobDefinitionSortKey = MonitoringJobDefinitionSortKey'
  { fromMonitoringJobDefinitionSortKey ::
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

pattern MonitoringJobDefinitionSortKeyCreationTime :: MonitoringJobDefinitionSortKey
pattern MonitoringJobDefinitionSortKeyCreationTime = MonitoringJobDefinitionSortKey' "CreationTime"

pattern MonitoringJobDefinitionSortKeyName :: MonitoringJobDefinitionSortKey
pattern MonitoringJobDefinitionSortKeyName = MonitoringJobDefinitionSortKey' "Name"

{-# COMPLETE
  MonitoringJobDefinitionSortKeyCreationTime,
  MonitoringJobDefinitionSortKeyName,
  MonitoringJobDefinitionSortKey'
  #-}

instance Prelude.FromText MonitoringJobDefinitionSortKey where
  parser = MonitoringJobDefinitionSortKey' Prelude.<$> Prelude.takeText

instance Prelude.ToText MonitoringJobDefinitionSortKey where
  toText (MonitoringJobDefinitionSortKey' x) = x

instance Prelude.Hashable MonitoringJobDefinitionSortKey

instance Prelude.NFData MonitoringJobDefinitionSortKey

instance Prelude.ToByteString MonitoringJobDefinitionSortKey

instance Prelude.ToQuery MonitoringJobDefinitionSortKey

instance Prelude.ToHeader MonitoringJobDefinitionSortKey

instance Prelude.ToJSON MonitoringJobDefinitionSortKey where
  toJSON = Prelude.toJSONText
