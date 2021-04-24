{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.MaximumExecutionFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.MaximumExecutionFrequency
  ( MaximumExecutionFrequency
      ( ..,
        OneHour,
        SixHours,
        ThreeHours,
        TwelveHours,
        TwentyFourHours
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MaximumExecutionFrequency
  = MaximumExecutionFrequency'
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

pattern OneHour :: MaximumExecutionFrequency
pattern OneHour = MaximumExecutionFrequency' "One_Hour"

pattern SixHours :: MaximumExecutionFrequency
pattern SixHours = MaximumExecutionFrequency' "Six_Hours"

pattern ThreeHours :: MaximumExecutionFrequency
pattern ThreeHours = MaximumExecutionFrequency' "Three_Hours"

pattern TwelveHours :: MaximumExecutionFrequency
pattern TwelveHours = MaximumExecutionFrequency' "Twelve_Hours"

pattern TwentyFourHours :: MaximumExecutionFrequency
pattern TwentyFourHours = MaximumExecutionFrequency' "TwentyFour_Hours"

{-# COMPLETE
  OneHour,
  SixHours,
  ThreeHours,
  TwelveHours,
  TwentyFourHours,
  MaximumExecutionFrequency'
  #-}

instance FromText MaximumExecutionFrequency where
  parser = (MaximumExecutionFrequency' . mk) <$> takeText

instance ToText MaximumExecutionFrequency where
  toText (MaximumExecutionFrequency' ci) = original ci

instance Hashable MaximumExecutionFrequency

instance NFData MaximumExecutionFrequency

instance ToByteString MaximumExecutionFrequency

instance ToQuery MaximumExecutionFrequency

instance ToHeader MaximumExecutionFrequency

instance ToJSON MaximumExecutionFrequency where
  toJSON = toJSONText

instance FromJSON MaximumExecutionFrequency where
  parseJSON = parseJSONText "MaximumExecutionFrequency"
