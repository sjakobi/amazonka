{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScaling.Types.MetricStatistic
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.MetricStatistic
  ( MetricStatistic
      ( ..,
        Average,
        Maximum,
        Minimum,
        SampleCount,
        Sum
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MetricStatistic = MetricStatistic' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Average :: MetricStatistic
pattern Average = MetricStatistic' "Average"

pattern Maximum :: MetricStatistic
pattern Maximum = MetricStatistic' "Maximum"

pattern Minimum :: MetricStatistic
pattern Minimum = MetricStatistic' "Minimum"

pattern SampleCount :: MetricStatistic
pattern SampleCount = MetricStatistic' "SampleCount"

pattern Sum :: MetricStatistic
pattern Sum = MetricStatistic' "Sum"

{-# COMPLETE
  Average,
  Maximum,
  Minimum,
  SampleCount,
  Sum,
  MetricStatistic'
  #-}

instance FromText MetricStatistic where
  parser = (MetricStatistic' . mk) <$> takeText

instance ToText MetricStatistic where
  toText (MetricStatistic' ci) = original ci

instance Hashable MetricStatistic

instance NFData MetricStatistic

instance ToByteString MetricStatistic

instance ToQuery MetricStatistic

instance ToHeader MetricStatistic

instance FromXML MetricStatistic where
  parseXML = parseXMLText "MetricStatistic"
