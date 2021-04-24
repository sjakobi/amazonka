{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.PricingPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.PricingPlan
  ( PricingPlan
      ( ..,
        OnDemand,
        Reserved
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Specifies whether the pricing plan for the queue is on-demand or reserved. For on-demand, you pay per minute, billed in increments of .01 minute. For reserved, you pay for the transcoding capacity of the entire queue, regardless of how much or how little you use it. Reserved pricing requires a 12-month commitment.
data PricingPlan = PricingPlan' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern OnDemand :: PricingPlan
pattern OnDemand = PricingPlan' "ON_DEMAND"

pattern Reserved :: PricingPlan
pattern Reserved = PricingPlan' "RESERVED"

{-# COMPLETE
  OnDemand,
  Reserved,
  PricingPlan'
  #-}

instance FromText PricingPlan where
  parser = (PricingPlan' . mk) <$> takeText

instance ToText PricingPlan where
  toText (PricingPlan' ci) = original ci

instance Hashable PricingPlan

instance NFData PricingPlan

instance ToByteString PricingPlan

instance ToQuery PricingPlan

instance ToHeader PricingPlan

instance ToJSON PricingPlan where
  toJSON = toJSONText

instance FromJSON PricingPlan where
  parseJSON = parseJSONText "PricingPlan"
