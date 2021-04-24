{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        All,
        ApplicationMetrics,
        Causes,
        Color,
        HealthStatus,
        InstancesHealth,
        RefreshedAt,
        Status
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EnvironmentHealthAttribute
  = EnvironmentHealthAttribute'
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

pattern All :: EnvironmentHealthAttribute
pattern All = EnvironmentHealthAttribute' "All"

pattern ApplicationMetrics :: EnvironmentHealthAttribute
pattern ApplicationMetrics = EnvironmentHealthAttribute' "ApplicationMetrics"

pattern Causes :: EnvironmentHealthAttribute
pattern Causes = EnvironmentHealthAttribute' "Causes"

pattern Color :: EnvironmentHealthAttribute
pattern Color = EnvironmentHealthAttribute' "Color"

pattern HealthStatus :: EnvironmentHealthAttribute
pattern HealthStatus = EnvironmentHealthAttribute' "HealthStatus"

pattern InstancesHealth :: EnvironmentHealthAttribute
pattern InstancesHealth = EnvironmentHealthAttribute' "InstancesHealth"

pattern RefreshedAt :: EnvironmentHealthAttribute
pattern RefreshedAt = EnvironmentHealthAttribute' "RefreshedAt"

pattern Status :: EnvironmentHealthAttribute
pattern Status = EnvironmentHealthAttribute' "Status"

{-# COMPLETE
  All,
  ApplicationMetrics,
  Causes,
  Color,
  HealthStatus,
  InstancesHealth,
  RefreshedAt,
  Status,
  EnvironmentHealthAttribute'
  #-}

instance FromText EnvironmentHealthAttribute where
  parser = (EnvironmentHealthAttribute' . mk) <$> takeText

instance ToText EnvironmentHealthAttribute where
  toText (EnvironmentHealthAttribute' ci) = original ci

instance Hashable EnvironmentHealthAttribute

instance NFData EnvironmentHealthAttribute

instance ToByteString EnvironmentHealthAttribute

instance ToQuery EnvironmentHealthAttribute

instance ToHeader EnvironmentHealthAttribute
