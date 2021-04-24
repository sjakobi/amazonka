{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        AmortizedCost,
        BlendedCost,
        NetAmortizedCost,
        NetUnblendedCost,
        NormalizedUsageAmount,
        UnblendedCost,
        UsageQuantity
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Metric = Metric' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AmortizedCost :: Metric
pattern AmortizedCost = Metric' "AMORTIZED_COST"

pattern BlendedCost :: Metric
pattern BlendedCost = Metric' "BLENDED_COST"

pattern NetAmortizedCost :: Metric
pattern NetAmortizedCost = Metric' "NET_AMORTIZED_COST"

pattern NetUnblendedCost :: Metric
pattern NetUnblendedCost = Metric' "NET_UNBLENDED_COST"

pattern NormalizedUsageAmount :: Metric
pattern NormalizedUsageAmount = Metric' "NORMALIZED_USAGE_AMOUNT"

pattern UnblendedCost :: Metric
pattern UnblendedCost = Metric' "UNBLENDED_COST"

pattern UsageQuantity :: Metric
pattern UsageQuantity = Metric' "USAGE_QUANTITY"

{-# COMPLETE
  AmortizedCost,
  BlendedCost,
  NetAmortizedCost,
  NetUnblendedCost,
  NormalizedUsageAmount,
  UnblendedCost,
  UsageQuantity,
  Metric'
  #-}

instance FromText Metric where
  parser = (Metric' . mk) <$> takeText

instance ToText Metric where
  toText (Metric' ci) = original ci

instance Hashable Metric

instance NFData Metric

instance ToByteString Metric

instance ToQuery Metric

instance ToHeader Metric

instance ToJSON Metric where
  toJSON = toJSONText
