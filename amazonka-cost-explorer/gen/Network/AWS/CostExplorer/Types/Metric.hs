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
-- Module      : Network.AWS.CostExplorer.Types.Metric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.Metric
  ( Metric
      ( ..,
        MetricAMORTIZEDCOST,
        MetricBLENDEDCOST,
        MetricNETAMORTIZEDCOST,
        MetricNETUNBLENDEDCOST,
        MetricNORMALIZEDUSAGEAMOUNT,
        MetricUNBLENDEDCOST,
        MetricUSAGEQUANTITY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Metric = Metric' {fromMetric :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern MetricAMORTIZEDCOST :: Metric
pattern MetricAMORTIZEDCOST = Metric' "AMORTIZED_COST"

pattern MetricBLENDEDCOST :: Metric
pattern MetricBLENDEDCOST = Metric' "BLENDED_COST"

pattern MetricNETAMORTIZEDCOST :: Metric
pattern MetricNETAMORTIZEDCOST = Metric' "NET_AMORTIZED_COST"

pattern MetricNETUNBLENDEDCOST :: Metric
pattern MetricNETUNBLENDEDCOST = Metric' "NET_UNBLENDED_COST"

pattern MetricNORMALIZEDUSAGEAMOUNT :: Metric
pattern MetricNORMALIZEDUSAGEAMOUNT = Metric' "NORMALIZED_USAGE_AMOUNT"

pattern MetricUNBLENDEDCOST :: Metric
pattern MetricUNBLENDEDCOST = Metric' "UNBLENDED_COST"

pattern MetricUSAGEQUANTITY :: Metric
pattern MetricUSAGEQUANTITY = Metric' "USAGE_QUANTITY"

{-# COMPLETE
  MetricAMORTIZEDCOST,
  MetricBLENDEDCOST,
  MetricNETAMORTIZEDCOST,
  MetricNETUNBLENDEDCOST,
  MetricNORMALIZEDUSAGEAMOUNT,
  MetricUNBLENDEDCOST,
  MetricUSAGEQUANTITY,
  Metric'
  #-}

instance Prelude.FromText Metric where
  parser = Metric' Prelude.<$> Prelude.takeText

instance Prelude.ToText Metric where
  toText (Metric' x) = x

instance Prelude.Hashable Metric

instance Prelude.NFData Metric

instance Prelude.ToByteString Metric

instance Prelude.ToQuery Metric

instance Prelude.ToHeader Metric

instance Prelude.ToJSON Metric where
  toJSON = Prelude.toJSONText
