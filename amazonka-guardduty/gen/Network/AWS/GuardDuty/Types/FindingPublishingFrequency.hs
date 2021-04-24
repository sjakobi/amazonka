{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GuardDuty.Types.FindingPublishingFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.FindingPublishingFrequency
  ( FindingPublishingFrequency
      ( ..,
        FifteenMinutes,
        OneHour,
        SixHours
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FindingPublishingFrequency
  = FindingPublishingFrequency'
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

pattern FifteenMinutes :: FindingPublishingFrequency
pattern FifteenMinutes = FindingPublishingFrequency' "FIFTEEN_MINUTES"

pattern OneHour :: FindingPublishingFrequency
pattern OneHour = FindingPublishingFrequency' "ONE_HOUR"

pattern SixHours :: FindingPublishingFrequency
pattern SixHours = FindingPublishingFrequency' "SIX_HOURS"

{-# COMPLETE
  FifteenMinutes,
  OneHour,
  SixHours,
  FindingPublishingFrequency'
  #-}

instance FromText FindingPublishingFrequency where
  parser = (FindingPublishingFrequency' . mk) <$> takeText

instance ToText FindingPublishingFrequency where
  toText (FindingPublishingFrequency' ci) = original ci

instance Hashable FindingPublishingFrequency

instance NFData FindingPublishingFrequency

instance ToByteString FindingPublishingFrequency

instance ToQuery FindingPublishingFrequency

instance ToHeader FindingPublishingFrequency

instance ToJSON FindingPublishingFrequency where
  toJSON = toJSONText

instance FromJSON FindingPublishingFrequency where
  parseJSON = parseJSONText "FindingPublishingFrequency"
