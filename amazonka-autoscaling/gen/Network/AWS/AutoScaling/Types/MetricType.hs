{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.MetricType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.MetricType
  ( MetricType
      ( ..,
        ALBRequestCountPerTarget,
        ASGAverageCPUUtilization,
        ASGAverageNetworkIn,
        ASGAverageNetworkOut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MetricType = MetricType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ALBRequestCountPerTarget :: MetricType
pattern ALBRequestCountPerTarget = MetricType' "ALBRequestCountPerTarget"

pattern ASGAverageCPUUtilization :: MetricType
pattern ASGAverageCPUUtilization = MetricType' "ASGAverageCPUUtilization"

pattern ASGAverageNetworkIn :: MetricType
pattern ASGAverageNetworkIn = MetricType' "ASGAverageNetworkIn"

pattern ASGAverageNetworkOut :: MetricType
pattern ASGAverageNetworkOut = MetricType' "ASGAverageNetworkOut"

{-# COMPLETE
  ALBRequestCountPerTarget,
  ASGAverageCPUUtilization,
  ASGAverageNetworkIn,
  ASGAverageNetworkOut,
  MetricType'
  #-}

instance FromText MetricType where
  parser = (MetricType' . mk) <$> takeText

instance ToText MetricType where
  toText (MetricType' ci) = original ci

instance Hashable MetricType

instance NFData MetricType

instance ToByteString MetricType

instance ToQuery MetricType

instance ToHeader MetricType

instance FromXML MetricType where
  parseXML = parseXMLText "MetricType"
