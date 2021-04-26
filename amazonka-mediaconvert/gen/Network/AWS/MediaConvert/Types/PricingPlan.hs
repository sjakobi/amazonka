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
-- Module      : Network.AWS.MediaConvert.Types.PricingPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.PricingPlan
  ( PricingPlan
      ( ..,
        PricingPlanONDEMAND,
        PricingPlanRESERVED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies whether the pricing plan for the queue is on-demand or
-- reserved. For on-demand, you pay per minute, billed in increments of .01
-- minute. For reserved, you pay for the transcoding capacity of the entire
-- queue, regardless of how much or how little you use it. Reserved pricing
-- requires a 12-month commitment.
newtype PricingPlan = PricingPlan'
  { fromPricingPlan ::
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

pattern PricingPlanONDEMAND :: PricingPlan
pattern PricingPlanONDEMAND = PricingPlan' "ON_DEMAND"

pattern PricingPlanRESERVED :: PricingPlan
pattern PricingPlanRESERVED = PricingPlan' "RESERVED"

{-# COMPLETE
  PricingPlanONDEMAND,
  PricingPlanRESERVED,
  PricingPlan'
  #-}

instance Prelude.FromText PricingPlan where
  parser = PricingPlan' Prelude.<$> Prelude.takeText

instance Prelude.ToText PricingPlan where
  toText (PricingPlan' x) = x

instance Prelude.Hashable PricingPlan

instance Prelude.NFData PricingPlan

instance Prelude.ToByteString PricingPlan

instance Prelude.ToQuery PricingPlan

instance Prelude.ToHeader PricingPlan

instance Prelude.ToJSON PricingPlan where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PricingPlan where
  parseJSON = Prelude.parseJSONText "PricingPlan"
