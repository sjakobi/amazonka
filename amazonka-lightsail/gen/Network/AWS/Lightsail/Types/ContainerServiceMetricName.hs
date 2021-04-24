{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        CPUUtilization,
        MemoryUtilization
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContainerServiceMetricName
  = ContainerServiceMetricName'
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

pattern CPUUtilization :: ContainerServiceMetricName
pattern CPUUtilization = ContainerServiceMetricName' "CPUUtilization"

pattern MemoryUtilization :: ContainerServiceMetricName
pattern MemoryUtilization = ContainerServiceMetricName' "MemoryUtilization"

{-# COMPLETE
  CPUUtilization,
  MemoryUtilization,
  ContainerServiceMetricName'
  #-}

instance FromText ContainerServiceMetricName where
  parser = (ContainerServiceMetricName' . mk) <$> takeText

instance ToText ContainerServiceMetricName where
  toText (ContainerServiceMetricName' ci) = original ci

instance Hashable ContainerServiceMetricName

instance NFData ContainerServiceMetricName

instance ToByteString ContainerServiceMetricName

instance ToQuery ContainerServiceMetricName

instance ToHeader ContainerServiceMetricName

instance ToJSON ContainerServiceMetricName where
  toJSON = toJSONText

instance FromJSON ContainerServiceMetricName where
  parseJSON = parseJSONText "ContainerServiceMetricName"
