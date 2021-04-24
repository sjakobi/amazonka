{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        IHAAll,
        IHAApplicationMetrics,
        IHAAvailabilityZone,
        IHACauses,
        IHAColor,
        IHADeployment,
        IHAHealthStatus,
        IHAInstanceType,
        IHALaunchedAt,
        IHARefreshedAt,
        IHASystem
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InstancesHealthAttribute
  = InstancesHealthAttribute'
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

pattern IHAAll :: InstancesHealthAttribute
pattern IHAAll = InstancesHealthAttribute' "All"

pattern IHAApplicationMetrics :: InstancesHealthAttribute
pattern IHAApplicationMetrics = InstancesHealthAttribute' "ApplicationMetrics"

pattern IHAAvailabilityZone :: InstancesHealthAttribute
pattern IHAAvailabilityZone = InstancesHealthAttribute' "AvailabilityZone"

pattern IHACauses :: InstancesHealthAttribute
pattern IHACauses = InstancesHealthAttribute' "Causes"

pattern IHAColor :: InstancesHealthAttribute
pattern IHAColor = InstancesHealthAttribute' "Color"

pattern IHADeployment :: InstancesHealthAttribute
pattern IHADeployment = InstancesHealthAttribute' "Deployment"

pattern IHAHealthStatus :: InstancesHealthAttribute
pattern IHAHealthStatus = InstancesHealthAttribute' "HealthStatus"

pattern IHAInstanceType :: InstancesHealthAttribute
pattern IHAInstanceType = InstancesHealthAttribute' "InstanceType"

pattern IHALaunchedAt :: InstancesHealthAttribute
pattern IHALaunchedAt = InstancesHealthAttribute' "LaunchedAt"

pattern IHARefreshedAt :: InstancesHealthAttribute
pattern IHARefreshedAt = InstancesHealthAttribute' "RefreshedAt"

pattern IHASystem :: InstancesHealthAttribute
pattern IHASystem = InstancesHealthAttribute' "System"

{-# COMPLETE
  IHAAll,
  IHAApplicationMetrics,
  IHAAvailabilityZone,
  IHACauses,
  IHAColor,
  IHADeployment,
  IHAHealthStatus,
  IHAInstanceType,
  IHALaunchedAt,
  IHARefreshedAt,
  IHASystem,
  InstancesHealthAttribute'
  #-}

instance FromText InstancesHealthAttribute where
  parser = (InstancesHealthAttribute' . mk) <$> takeText

instance ToText InstancesHealthAttribute where
  toText (InstancesHealthAttribute' ci) = original ci

instance Hashable InstancesHealthAttribute

instance NFData InstancesHealthAttribute

instance ToByteString InstancesHealthAttribute

instance ToQuery InstancesHealthAttribute

instance ToHeader InstancesHealthAttribute
