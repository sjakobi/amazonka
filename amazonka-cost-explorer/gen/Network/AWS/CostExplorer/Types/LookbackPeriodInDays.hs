{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CostExplorer.Types.LookbackPeriodInDays
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.LookbackPeriodInDays
  ( LookbackPeriodInDays
      ( ..,
        SevenDays,
        SixtyDays,
        ThirtyDays
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LookbackPeriodInDays
  = LookbackPeriodInDays'
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

pattern SevenDays :: LookbackPeriodInDays
pattern SevenDays = LookbackPeriodInDays' "SEVEN_DAYS"

pattern SixtyDays :: LookbackPeriodInDays
pattern SixtyDays = LookbackPeriodInDays' "SIXTY_DAYS"

pattern ThirtyDays :: LookbackPeriodInDays
pattern ThirtyDays = LookbackPeriodInDays' "THIRTY_DAYS"

{-# COMPLETE
  SevenDays,
  SixtyDays,
  ThirtyDays,
  LookbackPeriodInDays'
  #-}

instance FromText LookbackPeriodInDays where
  parser = (LookbackPeriodInDays' . mk) <$> takeText

instance ToText LookbackPeriodInDays where
  toText (LookbackPeriodInDays' ci) = original ci

instance Hashable LookbackPeriodInDays

instance NFData LookbackPeriodInDays

instance ToByteString LookbackPeriodInDays

instance ToQuery LookbackPeriodInDays

instance ToHeader LookbackPeriodInDays

instance ToJSON LookbackPeriodInDays where
  toJSON = toJSONText

instance FromJSON LookbackPeriodInDays where
  parseJSON = parseJSONText "LookbackPeriodInDays"
