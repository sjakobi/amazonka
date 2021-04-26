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
-- Module      : Network.AWS.MediaStore.Types.ContainerLevelMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaStore.Types.ContainerLevelMetrics
  ( ContainerLevelMetrics
      ( ..,
        ContainerLevelMetricsDISABLED,
        ContainerLevelMetricsENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerLevelMetrics = ContainerLevelMetrics'
  { fromContainerLevelMetrics ::
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

pattern ContainerLevelMetricsDISABLED :: ContainerLevelMetrics
pattern ContainerLevelMetricsDISABLED = ContainerLevelMetrics' "DISABLED"

pattern ContainerLevelMetricsENABLED :: ContainerLevelMetrics
pattern ContainerLevelMetricsENABLED = ContainerLevelMetrics' "ENABLED"

{-# COMPLETE
  ContainerLevelMetricsDISABLED,
  ContainerLevelMetricsENABLED,
  ContainerLevelMetrics'
  #-}

instance Prelude.FromText ContainerLevelMetrics where
  parser = ContainerLevelMetrics' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerLevelMetrics where
  toText (ContainerLevelMetrics' x) = x

instance Prelude.Hashable ContainerLevelMetrics

instance Prelude.NFData ContainerLevelMetrics

instance Prelude.ToByteString ContainerLevelMetrics

instance Prelude.ToQuery ContainerLevelMetrics

instance Prelude.ToHeader ContainerLevelMetrics

instance Prelude.ToJSON ContainerLevelMetrics where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContainerLevelMetrics where
  parseJSON = Prelude.parseJSONText "ContainerLevelMetrics"
