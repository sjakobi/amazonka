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
-- Module      : Network.AWS.Lightsail.Types.ContainerServiceMetricName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServiceMetricName
  ( ContainerServiceMetricName
      ( ..,
        ContainerServiceMetricNameCPUUtilization,
        ContainerServiceMetricNameMemoryUtilization
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerServiceMetricName = ContainerServiceMetricName'
  { fromContainerServiceMetricName ::
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

pattern ContainerServiceMetricNameCPUUtilization :: ContainerServiceMetricName
pattern ContainerServiceMetricNameCPUUtilization = ContainerServiceMetricName' "CPUUtilization"

pattern ContainerServiceMetricNameMemoryUtilization :: ContainerServiceMetricName
pattern ContainerServiceMetricNameMemoryUtilization = ContainerServiceMetricName' "MemoryUtilization"

{-# COMPLETE
  ContainerServiceMetricNameCPUUtilization,
  ContainerServiceMetricNameMemoryUtilization,
  ContainerServiceMetricName'
  #-}

instance Prelude.FromText ContainerServiceMetricName where
  parser = ContainerServiceMetricName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerServiceMetricName where
  toText (ContainerServiceMetricName' x) = x

instance Prelude.Hashable ContainerServiceMetricName

instance Prelude.NFData ContainerServiceMetricName

instance Prelude.ToByteString ContainerServiceMetricName

instance Prelude.ToQuery ContainerServiceMetricName

instance Prelude.ToHeader ContainerServiceMetricName

instance Prelude.ToJSON ContainerServiceMetricName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContainerServiceMetricName where
  parseJSON = Prelude.parseJSONText "ContainerServiceMetricName"
