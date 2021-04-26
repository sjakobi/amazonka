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
-- Module      : Network.AWS.ElasticBeanstalk.Types.InstancesHealthAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.InstancesHealthAttribute
  ( InstancesHealthAttribute
      ( ..,
        InstancesHealthAttributeAll,
        InstancesHealthAttributeApplicationMetrics,
        InstancesHealthAttributeAvailabilityZone,
        InstancesHealthAttributeCauses,
        InstancesHealthAttributeColor,
        InstancesHealthAttributeDeployment,
        InstancesHealthAttributeHealthStatus,
        InstancesHealthAttributeInstanceType,
        InstancesHealthAttributeLaunchedAt,
        InstancesHealthAttributeRefreshedAt,
        InstancesHealthAttributeSystem
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstancesHealthAttribute = InstancesHealthAttribute'
  { fromInstancesHealthAttribute ::
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

pattern InstancesHealthAttributeAll :: InstancesHealthAttribute
pattern InstancesHealthAttributeAll = InstancesHealthAttribute' "All"

pattern InstancesHealthAttributeApplicationMetrics :: InstancesHealthAttribute
pattern InstancesHealthAttributeApplicationMetrics = InstancesHealthAttribute' "ApplicationMetrics"

pattern InstancesHealthAttributeAvailabilityZone :: InstancesHealthAttribute
pattern InstancesHealthAttributeAvailabilityZone = InstancesHealthAttribute' "AvailabilityZone"

pattern InstancesHealthAttributeCauses :: InstancesHealthAttribute
pattern InstancesHealthAttributeCauses = InstancesHealthAttribute' "Causes"

pattern InstancesHealthAttributeColor :: InstancesHealthAttribute
pattern InstancesHealthAttributeColor = InstancesHealthAttribute' "Color"

pattern InstancesHealthAttributeDeployment :: InstancesHealthAttribute
pattern InstancesHealthAttributeDeployment = InstancesHealthAttribute' "Deployment"

pattern InstancesHealthAttributeHealthStatus :: InstancesHealthAttribute
pattern InstancesHealthAttributeHealthStatus = InstancesHealthAttribute' "HealthStatus"

pattern InstancesHealthAttributeInstanceType :: InstancesHealthAttribute
pattern InstancesHealthAttributeInstanceType = InstancesHealthAttribute' "InstanceType"

pattern InstancesHealthAttributeLaunchedAt :: InstancesHealthAttribute
pattern InstancesHealthAttributeLaunchedAt = InstancesHealthAttribute' "LaunchedAt"

pattern InstancesHealthAttributeRefreshedAt :: InstancesHealthAttribute
pattern InstancesHealthAttributeRefreshedAt = InstancesHealthAttribute' "RefreshedAt"

pattern InstancesHealthAttributeSystem :: InstancesHealthAttribute
pattern InstancesHealthAttributeSystem = InstancesHealthAttribute' "System"

{-# COMPLETE
  InstancesHealthAttributeAll,
  InstancesHealthAttributeApplicationMetrics,
  InstancesHealthAttributeAvailabilityZone,
  InstancesHealthAttributeCauses,
  InstancesHealthAttributeColor,
  InstancesHealthAttributeDeployment,
  InstancesHealthAttributeHealthStatus,
  InstancesHealthAttributeInstanceType,
  InstancesHealthAttributeLaunchedAt,
  InstancesHealthAttributeRefreshedAt,
  InstancesHealthAttributeSystem,
  InstancesHealthAttribute'
  #-}

instance Prelude.FromText InstancesHealthAttribute where
  parser = InstancesHealthAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText InstancesHealthAttribute where
  toText (InstancesHealthAttribute' x) = x

instance Prelude.Hashable InstancesHealthAttribute

instance Prelude.NFData InstancesHealthAttribute

instance Prelude.ToByteString InstancesHealthAttribute

instance Prelude.ToQuery InstancesHealthAttribute

instance Prelude.ToHeader InstancesHealthAttribute
