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
-- Module      : Network.AWS.CostExplorer.Types.AnomalySubscriptionFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.AnomalySubscriptionFrequency
  ( AnomalySubscriptionFrequency
      ( ..,
        AnomalySubscriptionFrequencyDAILY,
        AnomalySubscriptionFrequencyIMMEDIATE,
        AnomalySubscriptionFrequencyWEEKLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AnomalySubscriptionFrequency = AnomalySubscriptionFrequency'
  { fromAnomalySubscriptionFrequency ::
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

pattern AnomalySubscriptionFrequencyDAILY :: AnomalySubscriptionFrequency
pattern AnomalySubscriptionFrequencyDAILY = AnomalySubscriptionFrequency' "DAILY"

pattern AnomalySubscriptionFrequencyIMMEDIATE :: AnomalySubscriptionFrequency
pattern AnomalySubscriptionFrequencyIMMEDIATE = AnomalySubscriptionFrequency' "IMMEDIATE"

pattern AnomalySubscriptionFrequencyWEEKLY :: AnomalySubscriptionFrequency
pattern AnomalySubscriptionFrequencyWEEKLY = AnomalySubscriptionFrequency' "WEEKLY"

{-# COMPLETE
  AnomalySubscriptionFrequencyDAILY,
  AnomalySubscriptionFrequencyIMMEDIATE,
  AnomalySubscriptionFrequencyWEEKLY,
  AnomalySubscriptionFrequency'
  #-}

instance Prelude.FromText AnomalySubscriptionFrequency where
  parser = AnomalySubscriptionFrequency' Prelude.<$> Prelude.takeText

instance Prelude.ToText AnomalySubscriptionFrequency where
  toText (AnomalySubscriptionFrequency' x) = x

instance Prelude.Hashable AnomalySubscriptionFrequency

instance Prelude.NFData AnomalySubscriptionFrequency

instance Prelude.ToByteString AnomalySubscriptionFrequency

instance Prelude.ToQuery AnomalySubscriptionFrequency

instance Prelude.ToHeader AnomalySubscriptionFrequency

instance Prelude.ToJSON AnomalySubscriptionFrequency where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AnomalySubscriptionFrequency where
  parseJSON = Prelude.parseJSONText "AnomalySubscriptionFrequency"
