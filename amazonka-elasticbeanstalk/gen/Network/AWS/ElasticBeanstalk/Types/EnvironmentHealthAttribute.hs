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
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentHealthAttribute
  ( EnvironmentHealthAttribute
      ( ..,
        EnvironmentHealthAttributeAll,
        EnvironmentHealthAttributeApplicationMetrics,
        EnvironmentHealthAttributeCauses,
        EnvironmentHealthAttributeColor,
        EnvironmentHealthAttributeHealthStatus,
        EnvironmentHealthAttributeInstancesHealth,
        EnvironmentHealthAttributeRefreshedAt,
        EnvironmentHealthAttributeStatus'
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentHealthAttribute = EnvironmentHealthAttribute'
  { fromEnvironmentHealthAttribute ::
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

pattern EnvironmentHealthAttributeAll :: EnvironmentHealthAttribute
pattern EnvironmentHealthAttributeAll = EnvironmentHealthAttribute' "All"

pattern EnvironmentHealthAttributeApplicationMetrics :: EnvironmentHealthAttribute
pattern EnvironmentHealthAttributeApplicationMetrics = EnvironmentHealthAttribute' "ApplicationMetrics"

pattern EnvironmentHealthAttributeCauses :: EnvironmentHealthAttribute
pattern EnvironmentHealthAttributeCauses = EnvironmentHealthAttribute' "Causes"

pattern EnvironmentHealthAttributeColor :: EnvironmentHealthAttribute
pattern EnvironmentHealthAttributeColor = EnvironmentHealthAttribute' "Color"

pattern EnvironmentHealthAttributeHealthStatus :: EnvironmentHealthAttribute
pattern EnvironmentHealthAttributeHealthStatus = EnvironmentHealthAttribute' "HealthStatus"

pattern EnvironmentHealthAttributeInstancesHealth :: EnvironmentHealthAttribute
pattern EnvironmentHealthAttributeInstancesHealth = EnvironmentHealthAttribute' "InstancesHealth"

pattern EnvironmentHealthAttributeRefreshedAt :: EnvironmentHealthAttribute
pattern EnvironmentHealthAttributeRefreshedAt = EnvironmentHealthAttribute' "RefreshedAt"

pattern EnvironmentHealthAttributeStatus' :: EnvironmentHealthAttribute
pattern EnvironmentHealthAttributeStatus' = EnvironmentHealthAttribute' "Status"

{-# COMPLETE
  EnvironmentHealthAttributeAll,
  EnvironmentHealthAttributeApplicationMetrics,
  EnvironmentHealthAttributeCauses,
  EnvironmentHealthAttributeColor,
  EnvironmentHealthAttributeHealthStatus,
  EnvironmentHealthAttributeInstancesHealth,
  EnvironmentHealthAttributeRefreshedAt,
  EnvironmentHealthAttributeStatus',
  EnvironmentHealthAttribute'
  #-}

instance Prelude.FromText EnvironmentHealthAttribute where
  parser = EnvironmentHealthAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentHealthAttribute where
  toText (EnvironmentHealthAttribute' x) = x

instance Prelude.Hashable EnvironmentHealthAttribute

instance Prelude.NFData EnvironmentHealthAttribute

instance Prelude.ToByteString EnvironmentHealthAttribute

instance Prelude.ToQuery EnvironmentHealthAttribute

instance Prelude.ToHeader EnvironmentHealthAttribute
