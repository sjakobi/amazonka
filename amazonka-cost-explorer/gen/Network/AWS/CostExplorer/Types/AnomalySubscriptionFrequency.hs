{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        ASFDaily,
        ASFImmediate,
        ASFWeekly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AnomalySubscriptionFrequency
  = AnomalySubscriptionFrequency'
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

pattern ASFDaily :: AnomalySubscriptionFrequency
pattern ASFDaily = AnomalySubscriptionFrequency' "DAILY"

pattern ASFImmediate :: AnomalySubscriptionFrequency
pattern ASFImmediate = AnomalySubscriptionFrequency' "IMMEDIATE"

pattern ASFWeekly :: AnomalySubscriptionFrequency
pattern ASFWeekly = AnomalySubscriptionFrequency' "WEEKLY"

{-# COMPLETE
  ASFDaily,
  ASFImmediate,
  ASFWeekly,
  AnomalySubscriptionFrequency'
  #-}

instance FromText AnomalySubscriptionFrequency where
  parser = (AnomalySubscriptionFrequency' . mk) <$> takeText

instance ToText AnomalySubscriptionFrequency where
  toText (AnomalySubscriptionFrequency' ci) = original ci

instance Hashable AnomalySubscriptionFrequency

instance NFData AnomalySubscriptionFrequency

instance ToByteString AnomalySubscriptionFrequency

instance ToQuery AnomalySubscriptionFrequency

instance ToHeader AnomalySubscriptionFrequency

instance ToJSON AnomalySubscriptionFrequency where
  toJSON = toJSONText

instance FromJSON AnomalySubscriptionFrequency where
  parseJSON = parseJSONText "AnomalySubscriptionFrequency"
