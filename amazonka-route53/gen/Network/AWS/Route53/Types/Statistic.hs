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
-- Module      : Network.AWS.Route53.Types.Statistic
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.Statistic
  ( Statistic
      ( ..,
        StatisticAverage,
        StatisticMaximum,
        StatisticMinimum,
        StatisticSampleCount,
        StatisticSum
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype Statistic = Statistic'
  { fromStatistic ::
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

pattern StatisticAverage :: Statistic
pattern StatisticAverage = Statistic' "Average"

pattern StatisticMaximum :: Statistic
pattern StatisticMaximum = Statistic' "Maximum"

pattern StatisticMinimum :: Statistic
pattern StatisticMinimum = Statistic' "Minimum"

pattern StatisticSampleCount :: Statistic
pattern StatisticSampleCount = Statistic' "SampleCount"

pattern StatisticSum :: Statistic
pattern StatisticSum = Statistic' "Sum"

{-# COMPLETE
  StatisticAverage,
  StatisticMaximum,
  StatisticMinimum,
  StatisticSampleCount,
  StatisticSum,
  Statistic'
  #-}

instance Prelude.FromText Statistic where
  parser = Statistic' Prelude.<$> Prelude.takeText

instance Prelude.ToText Statistic where
  toText (Statistic' x) = x

instance Prelude.Hashable Statistic

instance Prelude.NFData Statistic

instance Prelude.ToByteString Statistic

instance Prelude.ToQuery Statistic

instance Prelude.ToHeader Statistic

instance Prelude.FromXML Statistic where
  parseXML = Prelude.parseXMLText "Statistic"
