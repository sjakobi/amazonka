{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.HealthStatusFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.HealthStatusFilter
  ( HealthStatusFilter
      ( ..,
        HSFAll,
        HSFHealthy,
        HSFUnhealthy
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data HealthStatusFilter
  = HealthStatusFilter'
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

pattern HSFAll :: HealthStatusFilter
pattern HSFAll = HealthStatusFilter' "ALL"

pattern HSFHealthy :: HealthStatusFilter
pattern HSFHealthy = HealthStatusFilter' "HEALTHY"

pattern HSFUnhealthy :: HealthStatusFilter
pattern HSFUnhealthy = HealthStatusFilter' "UNHEALTHY"

{-# COMPLETE
  HSFAll,
  HSFHealthy,
  HSFUnhealthy,
  HealthStatusFilter'
  #-}

instance FromText HealthStatusFilter where
  parser = (HealthStatusFilter' . mk) <$> takeText

instance ToText HealthStatusFilter where
  toText (HealthStatusFilter' ci) = original ci

instance Hashable HealthStatusFilter

instance NFData HealthStatusFilter

instance ToByteString HealthStatusFilter

instance ToQuery HealthStatusFilter

instance ToHeader HealthStatusFilter

instance ToJSON HealthStatusFilter where
  toJSON = toJSONText
