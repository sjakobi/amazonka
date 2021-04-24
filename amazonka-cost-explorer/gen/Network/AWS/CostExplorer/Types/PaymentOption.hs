{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.PaymentOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.PaymentOption
  ( PaymentOption
      ( ..,
        AllUpfront,
        HeavyUtilization,
        LightUtilization,
        MediumUtilization,
        NoUpfront,
        PartialUpfront
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PaymentOption = PaymentOption' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AllUpfront :: PaymentOption
pattern AllUpfront = PaymentOption' "ALL_UPFRONT"

pattern HeavyUtilization :: PaymentOption
pattern HeavyUtilization = PaymentOption' "HEAVY_UTILIZATION"

pattern LightUtilization :: PaymentOption
pattern LightUtilization = PaymentOption' "LIGHT_UTILIZATION"

pattern MediumUtilization :: PaymentOption
pattern MediumUtilization = PaymentOption' "MEDIUM_UTILIZATION"

pattern NoUpfront :: PaymentOption
pattern NoUpfront = PaymentOption' "NO_UPFRONT"

pattern PartialUpfront :: PaymentOption
pattern PartialUpfront = PaymentOption' "PARTIAL_UPFRONT"

{-# COMPLETE
  AllUpfront,
  HeavyUtilization,
  LightUtilization,
  MediumUtilization,
  NoUpfront,
  PartialUpfront,
  PaymentOption'
  #-}

instance FromText PaymentOption where
  parser = (PaymentOption' . mk) <$> takeText

instance ToText PaymentOption where
  toText (PaymentOption' ci) = original ci

instance Hashable PaymentOption

instance NFData PaymentOption

instance ToByteString PaymentOption

instance ToQuery PaymentOption

instance ToHeader PaymentOption

instance ToJSON PaymentOption where
  toJSON = toJSONText

instance FromJSON PaymentOption where
  parseJSON = parseJSONText "PaymentOption"
